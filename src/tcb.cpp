//
// Created by marko on 20.4.22..
//


#include "../h/tcb.hpp"
#include "../h/riscv.hpp"
#include "../test/printing.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/list.hpp"

TCB *TCB::running = nullptr;
Sleep* TCB::sleep_head=nullptr;
Sleep* TCB::sleep_tail=nullptr;
Elem* TCB::b_head=nullptr;
Elem* TCB::b_tail=nullptr;

uint64 TCB::timeSliceCounter = 0;
uint64 TCB::MaximumThreads = 5;
uint64 TCB::MaximumThreadsCounter = 0;
uint64 TCB::id=0;




void TCB::yield()
{
    __asm__ volatile("li a0,0x13");
    __asm__ volatile ("ecall");
   // __asm__ volatile("ret");
}

void TCB::dispatch()
{

    TCB *old = running;
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    running = Scheduler::get();
    timeSliceCounter=0;
    if(running==old)return;
    TCB::contextSwitch(&old->context, &running->context);

}

void TCB::threadWrapper()
{
    //uvek cemo zeleti da samo izvrsavanje zapocne od threadwrappera
    //kako bismo imali implicitmno informaciju da se nit zavrsila po zavrsetku body()
    //tako sto ce iz ra ne da bude kraj u body-ju nego posle ovoga

    //Kada se nova nit stvori, ona će početi izvršavanje u supervizorskom režimu,
    //kako bi prešla na korisnički režim , koristi se Riscv::popSppSpie() f-ja


   Riscv::popSppSpie();

    running->body(running->arg);
    running->setFinished(true);
   while(!running->isEmpty()){
        Scheduler::put(running->get());
    }
   TCB* t=get_b();
   if(t!=0){
       printString("VRACA SE U RED ");
       printInt(t->getID());
       printString(". nit\n");
       Scheduler::put(t);
   }else running->MaximumThreadsCounter--;
    thread_dispatch();

}

void TCB::join(TCB *handle) {

    if(handle== 0)return;
    TCB *old = running;
    if (old->isFinished()){ return;}
    handle->put(old);
    running = Scheduler::get();
    if(running==0) return;
    timeSliceCounter=0;
    if(running==old)return;
    TCB::contextSwitch(&old->context, &running->context);

}
TCB* TCB::get()
{
    if (!head) { return 0; }

    Elem1 *elem = head;
    head = head->next;
    if (!head) { tail = 0; }

    TCB *ret = elem->data;
    MemoryAllocator::getAlloc().deallocate(elem);
    return ret;
}
void TCB::put(TCB *ccb)
{
    Elem1 *elem = (Elem1*)MemoryAllocator::getAlloc().allocate((sizeof(Elem1)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    elem->data=ccb;
    elem->next=0;
    if (tail!=0)
    {
        tail->next = elem;
        tail = elem;
    } else
    {
        head = tail = elem;
    }
}

int TCB::thread_sleep(time_t time) {
    if(time==0)return 0;
    Sleep* spava=(Sleep*)MemoryAllocator::getAlloc().allocate((sizeof(Sleep)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    spava->next= nullptr;
    spava->time=time;
    spava->proteklo=0;
    spava->data=this;
    spava->prev=nullptr;
    this->setSleep(true);

    if(sleep_head==nullptr){
        sleep_head=sleep_tail=spava;
    }
    else{
        sleep_tail->next=spava;
        spava->prev=sleep_tail;
        sleep_tail=spava;
    }
    this->setSleep(false);

    TCB *old = running;
    running = Scheduler::get();
    timeSliceCounter=0;
    TCB::contextSwitch(&old->context, &running->context);

    return 0;
}

int TCB::createThread(TCB **handle, TCB::Body body, void *arg, uint64 *stack) {
  /*  TCB* h=(TCB*)MemoryAllocator::getAlloc().allocate(sizeof(TCB)+MEM_BLOCK_SIZE-1/MEM_BLOCK_SIZE);
    h->thread_ID=h->id++;
    h->arg=arg;
    h->stack=stack;
    h->timeSlice=DEFAULT_TIME_SLICE;
    h->body=body;
    h->finished=false;
    h->sleep=false;
    h->head=h->tail=nullptr;
    h->sleep_head=h->sleep_tail=nullptr;
    h->context={(uint64) &threadWrapper,
                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    };
    if (body != nullptr && body!=Thread::wrapper) { Scheduler::put(h); }*/

    *handle=new TCB(body,arg,stack,DEFAULT_TIME_SLICE);
    if (*handle == nullptr) { return -1; }
    return 0;
}

void TCB::SetMaximumThreads(int num) {
    MaximumThreads=num;

}

int TCB::GetMaximumThreads() {
    return MaximumThreads;
}

TCB *TCB::get_b() {
    if (!b_head) { return 0; }

    Elem *elem = b_head;
    b_head = b_head->next;
    if (!b_head) { b_tail = 0; }

    TCB *ret = elem->data;
    MemoryAllocator::getAlloc().deallocate(elem);
    return ret;
}

void TCB::put_b(TCB *ccb) {
    Elem *elem = (Elem*)MemoryAllocator::getAlloc().allocate((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    elem->data=ccb;
    elem->next=0;
    if (b_tail!=0)
    {
        b_tail->next = elem;
        b_tail = elem;
    } else
    {
        b_head = b_tail = elem;
    }

}







