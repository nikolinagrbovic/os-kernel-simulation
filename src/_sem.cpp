#include "../h/_sem.hpp"
#include "../h/tcb.hpp"





TCB* _sem::get()
{
    if (!head) { return 0; }

    Elem1 *elem = head;
    head = head->next;
    if (!head) { tail = 0; }

    TCB *ret = elem->data;
    MemoryAllocator::getAlloc().deallocate(elem);
    return ret;
}
void _sem::put(TCB *ccb)
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

int _sem::semClose(_sem *handle) {
    if(handle== nullptr)return -1;
    TCB* t=handle->get();
    while(t!= nullptr){
        t->setBlocked(false);
        Scheduler::put(handle->get());
        t=handle->get();
    }
   MemoryAllocator::getAlloc().deallocate(handle);
    handle=nullptr;
    return 0;

}

_sem::~_sem() {
    this->closed=1;
    TCB* t=this->get();
    while(t!= nullptr){
        t->setBlocked(false);
        Scheduler::put(t);
        t=this->get();
    }
    MemoryAllocator::getAlloc().deallocate(this);

}

int _sem::semWait() {

    if(closed==1)return -1;

    int ret = -1;
    ret=0;
    if (--val >= 0) {
        ret = 0;
    } else {
        TCB::running->setBlocked(true);
        put(TCB::running);
        thread_dispatch();
    }

    return ret;
}


int _sem::semSignal() {

    if(closed == 1) return -1;

    int ret = 0;

        if (++val <= 0) {
            TCB *t = get();
           if(t!=nullptr){
               t->setBlocked(false);
               Scheduler::put(t);
           }
        }
    //}

    return ret;
}


_sem *_sem::semCreate(int i) {
    return new _sem(i);
}


int _sem::semOpen(_sem **handle, int i) {
    _sem* h=semCreate(i);
    *handle=h;
    return 0;
}
