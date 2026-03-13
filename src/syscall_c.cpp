//
// Created by os on 8/18/23.

#include "../h/syscall_c.hpp"
#include "../h/MemoryAllocator.h"
#include "../h/riscv.hpp"


void *mem_alloc(size_t size){
    //code=0x01;

    size_t s=(size+ MemoryAllocator::getAlloc().getSize() +MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;


    __asm__ volatile("mv a1,%[s]"::[s]"r"(s));
    __asm__ volatile("li a0,0x01");

    __asm__ volatile ("ecall");
    uint64 adr;
    __asm__ volatile("mv %[rx10],a0":[rx10]"=r"(adr));

    return (void*) adr;

}

int mem_free(void *addr) {

    void* adr=addr;

    __asm__ volatile("mv a1,%0"::"r"(adr));
    __asm__ volatile("li a0,0x02");
    __asm__ volatile ("ecall");
    uint64 ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    return ret;
}



//
int thread_create(thread_t *handle, void (*start_routine)(void *), void *arg) {

    void* arguments=arg;
    void(*sr)(void*)=start_routine;
    thread_t* h=handle;

    __asm__ volatile("mv a3,%[arguments]": :[arguments]"r" ((uint64)arguments));
    __asm__ volatile("mv a2,%[startr]": :[startr]"r" ((uint64)sr));
    __asm__ volatile("mv a1,%[h]": :[h]"r" ((uint64)h));

    __asm__ volatile("li a0,0x11");

    __asm__ volatile("ecall");
    int ret;
    __asm__ volatile("mv %[ret], a0" : [ret]"=r" (ret));
    return ret;
}

int thread_exit() {
    __asm__ volatile("li a0,0x12");
    __asm__ volatile ("ecall");

    uint64 ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    return ret;
}

void thread_dispatch() {
    __asm__ volatile("li a0,0x13");
    __asm__ volatile ("ecall");

}

void thread_join(thread_t handle) {

    thread_t t=handle;
    __asm__ volatile ("mv a1, %0" : : "r"((uint64)t));
    __asm__ volatile("li a0,0x14");
    __asm__ volatile ("ecall");


}

int sem_open(sem_t *handle, unsigned int init) {
    unsigned int i = init;
    sem_t *h = handle;

    __asm__ volatile ("mv a2, %0" : : "r"((uint64)h));
    __asm__ volatile ("mv a1, %0" : : "r"((uint64)i));



    __asm__ volatile("li a0, 0x21");

    __asm__ volatile ("ecall");
    uint64 ret;
    __asm__ volatile("mv %0, a0":"=r"(ret));
    return ret;

}

int sem_close(sem_t handle) {

    sem_t t=handle;

    __asm__ volatile ("mv a1, %0" : : "r"((uint64)t));
    __asm__ volatile("li a0,0x22");
    __asm__ volatile ("ecall");
    uint64 ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    return ret;
    return -1;
}

int sem_wait(sem_t id) {

    sem_t t=id;
    __asm__ volatile ("mv a1, %0" : : "r"((uint64)t));
    __asm__ volatile("li a0,0x23");
    __asm__ volatile ("ecall");
    uint64 ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    return ret;

}

int sem_signal(sem_t id) {

    sem_t t=id;
    __asm__ volatile ("mv a1, %0" : : "r"((uint64)t));
    __asm__ volatile("li a0,0x24");
    __asm__ volatile ("ecall");
    uint64 ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    return ret;

}

int time_sleep(time_t time) {
        time_t t=time;
        __asm__ volatile ("mv a1, %0" : : "r"((uint64)t));
        __asm__ volatile("li a0,0x31");
    __asm__ volatile ("ecall");
    return 0;
}

char getc() {
    __asm__ volatile("li a0,0x41");
    __asm__ volatile ("ecall");
    int ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    return ret;

}

void putc(char c) {
    char ch=c;
    __asm__ volatile("mv a1,%0"::"r"((uint64)ch));
    __asm__ volatile("li a0,0x42");
    __asm__ volatile ("ecall");

}
void changeUser() {
    __asm__ volatile("li a0,0x26");
    __asm__ volatile("ecall");
    return;

}

int getThreadId() {
    __asm__ volatile("li a0,0x27");
    __asm__ volatile ("ecall");
    uint64 ret;
    __asm__ volatile("mv %0,a0":"=r"(ret));
    return ret;
}




