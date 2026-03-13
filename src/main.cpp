//
// Created by os on 8/17/23.
//

#include "../lib/console.h"
#include "../h/riscv.hpp"
#include "../h/MemoryAllocator.h"
#include "../lib/hw.h"
#include "../h/syscall_c.hpp"
#include "../h/tcb.hpp"
#include "../test/printing.hpp"

extern void userMain();

void userMainWrapper(void* arg){
    userMain();
}

void f_a(void* arg){
    for(int i=0;i<10;i++){
        printString("A ");
        printInt(getThreadId());

    }

}
void f_b(void* arg){
    for(int i=0;i<10;i++){

        printString("B ");
        printInt(getThreadId());

    }

}
void f_c(void* arg){
    for(int i=0;i<10;i++){
        printString("C ");
        printInt(getThreadId());

    }

}
void f(void* arg){
    int id=getThreadId();;
    for(int i=0;i<5;i++){
        printString("Hello! Thread::myId ");
        printInt(id);
        printString("\n");
    }
    for(int i=0;i<id;i++);
}


void main(){
    Riscv::w_stvec(((uint64) &Riscv::interrupt_table)|1);
    TCB* nit;
    thread_create(&nit, nullptr, nullptr);
    TCB::running=nit;
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    //TCB::SetMaximumThreads(3);



  changeUser();

    TCB* user;
    thread_create(&user, userMainWrapper, nullptr);

 /*   TCB* threads[20];
    thread_create(&threads[0],f,nullptr);
    thread_create(&threads[1],f,nullptr);
    thread_create(&threads[2],f,nullptr);
    for(int i=0;i<17;i++){
        thread_create(&threads[i+3],f,nullptr);
    }
    while(!(threads[0]->isFinished() && threads[1]->isFinished()&&threads[2]->isFinished()&&threads[3]->isFinished()&&threads[4]->isFinished()
            &&threads[5]->isFinished()&&threads[6]->isFinished()&&threads[7]->isFinished()&&threads[8]->isFinished()&&threads[9]->isFinished()
            &&threads[10]->isFinished()&&threads[11]->isFinished()&&threads[12]->isFinished()&&threads[13]->isFinished()&&threads[14]->isFinished()
            &&threads[15]->isFinished()&&threads[16]->isFinished()&&threads[17]->isFinished()&&threads[18]->isFinished()&&threads[19]->isFinished()))thread_dispatch();
*/
   while(!user->isFinished()){thread_dispatch();}

    delete user;
    delete nit;


}
