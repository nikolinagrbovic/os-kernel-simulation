#include "../h/syscall_cpp.hpp"
#include "../h/tcb.hpp"

Thread::Thread(void (*body)(void *), void *arg) {
    this->body = body;
    this->arg = arg;
    myHandle=nullptr;
    thread_create(&this->myHandle,body,arg);
}
Thread::Thread() {
    this->body =Thread::wrapper;
    this->arg = static_cast<void*>(this);
    myHandle=nullptr;
    thread_create(&this->myHandle,Thread::wrapper,this);
}
Thread::~Thread() {
    myHandle->setFinished(true);
    delete myHandle;
}

int Thread::start() {
    Scheduler::put(this->myHandle);
    return 0;

}

void Thread::join() {
    thread_join(myHandle);
}

void Thread::dispatch() {
    thread_dispatch();
    //TCB::yield();
}

int Thread::sleep(time_t t) {
    return time_sleep(t);
}

void Thread::wrapper(void *thread) {
    ((Thread*) thread)->run();

}

void Thread::setPer(bool v) {
    myHandle->setPeriodic(v);
}

void Thread::setTime(uint64 t) {
    myHandle->setTimeSlice(t);

}





