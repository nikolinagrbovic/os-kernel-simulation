//
// Created by marko on 20.4.22..
//

#include "../h/riscv.hpp"
#include "../h/syscall_c.hpp"
#include "../h/tcb.hpp"
#include "../h/_sem.hpp"
#include "../test/printing.hpp"


//#include "../h/tcb.hpp"

void Riscv::printHexa(uint64 xx)
{
    char buffer[16];
    for (int i = 7; i >= 0; i--)
    {
        uint8 byte = (xx >> (8 * i)) & 0xFF; // i-ti bajt
        buffer[15 - (i*2 + 1)] = ("0123456789ABCDEF"[byte >> 4]);
        buffer[15 - (i*2)] = ("0123456789ABCDEF"[byte & 0x0F]);
    }

    __putc('0'); __putc('x');

    int i = 0;
    while (i < 16) __putc(buffer[i++]);

}
void Riscv::handleSoftware() {
    uint64 scause = r_scause();
    uint64 volatile sepc = r_sepc() + 4;
    uint64 volatile sstatus = r_sstatus();


    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL) {
        uint64 code=r_a0();



        if (code == 0x01) {
            //mem_alloc
            //printString("A");
            uint64 ar;
            //__asm__ volatile("mv %0,a1":"=r"(ar));
            __asm__ volatile("ld %0,8*11(fp)":"=r"(ar));

            void* ret=MemoryAllocator::getAlloc().allocate(ar);
            __asm__ volatile("sd %0,10*8(fp)"::"r"(ret));

        }
        else if (code == 0x02) {
            //mem_free
            uint64 ar=r_a1();
            void* addr=(void*) ar;
            uint64 ret=MemoryAllocator::getAlloc().deallocate(addr);
            w_a0(ret);

        }
        else if (code == 0x11) {
           /* //thread_create
            int i=TCB::thread_create((TCB**)(r_a4()),( void (*)())r_a3(), (void*)(r_a2()), (uint64*)(r_a1()));
            w_a0(i);*/
            uint64 t=r_a1();
            TCB** handle=(TCB**)t;
            uint64 startRoutine=r_a2();
            TCB::Body function=(TCB::Body)startRoutine;
            void* arg=(void*)r_a3();
            uint64* stack=(uint64*)MemoryAllocator::getAlloc().allocate((DEFAULT_STACK_SIZE*8 + MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
            uint64 retVal=TCB::createThread(handle,function,arg,stack);

            w_a0(retVal);


        } else if (code == 0x12) {
            //thread_exit
            TCB::running->setFinished(true);
            TCB::dispatch();

        } else if (code == 0x13) {
            //thread_dispatch
            TCB::dispatch();}
        else if(code==0x14){
            //thread join
            TCB* handle=(TCB*) r_a1();
            TCB::join(handle);
        }
        else if (code == 0x21) {
            //sem_open
            uint64 i=r_a1();
            uint64 handle_s=r_a2();
            _sem** handle=(_sem**)handle_s;

            int ret=_sem::semOpen(handle,i);
            w_a0(ret);

        } else if (code == 0x22) {
            //sem_close
            uint64 s=r_a1();
            _sem* sem=(_sem*)s;
            int ret=_sem::semClose(sem);
            w_a0(ret);

        } else if (code == 0x23) {
            //sem_wait
            uint64 s=r_a1();
            _sem* sem=(_sem*)s;
            int ret=sem->semWait();
            w_a0(ret);

        } else if (code == 0x24) {
            //sem_signal
            uint64 s=r_a1();
            _sem* sem=(_sem*)s;
            int ret=sem->semSignal();
            w_a0(ret);

        } else if (code == 0x31) {
            //time_sleep
            time_t time=(time_t)r_a1();
            int ret=TCB::running->thread_sleep(time);
            w_a0(ret);

        } else if (code == 0x41) {
            //getc
            char c=__getc();
            w_a0((uint64)c);


        } else if (code == 0x42) {
            //putc
            uint64 ch=r_a1();
            __putc((char)ch);

        }  else if(code==0x26){
            //change user
            //cuvas trenutno stanje
            w_sstatus(sstatus);
            //postavljanje bita za korisnicki rezim rada
            mc_sstatus(1<<8);
            __asm__ volatile ("csrw sepc, %0" : : "r" (sepc));
            //povratak iz soft prekida
            mc_sip(SIP_SSIP);
            return;
        }else if(code==0x27) {
            int ret = TCB::running->getID();
            w_a0(ret);
            thread_dispatch();
        }
        else {

        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else{
        printString("GRESKA scause=");
        printInt(scause);
        printString("\n");
        printHexa(sepc);
        printString("\n");
        while(true);
    }


    mc_sip(SIP_SSIP);

}

void Riscv::handleTime() {

    //printString("T");
      /* if(TCB::running!= nullptr && TCB::running->isPeriodic()==true){
            ++TCB::running->timeSliceCounter;
            if (TCB::running->timeSliceCounter == TCB::running->getTimeSlice()) {
                mc_sip(SIP_SSIP);
                TCB::dispatch();

            }
        }

       if(TCB::sleep_head!=nullptr){

           Sleep* cur=TCB::sleep_head;
           Sleep* next=TCB::sleep_head;
           while(cur){
               next=cur->next;
               if(++cur->proteklo==cur->time){
                   if(cur==TCB::sleep_tail)TCB::sleep_tail=cur->prev;
                   if(cur==TCB::sleep_head)TCB::sleep_head=cur->next;
                   cur->data->setSleep(false);
                   if(cur->prev!=nullptr)cur->prev->next=cur->next;
                   if(cur->next!=nullptr)cur->next->prev=cur->prev;
                   Scheduler::put(cur->data);
                   MemoryAllocator::getAlloc().deallocate(cur);
               }
               cur=next;
           }
       }*/

    mc_sip(SIP_SSIP);

}

void Riscv::handleConsole() {

    console_handler();


}
void Riscv::popSppSpie()
{
    __asm__ volatile("csrw sepc, ra");

    __asm__ volatile("sret");
}

