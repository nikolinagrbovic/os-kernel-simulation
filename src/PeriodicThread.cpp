#include "../h/syscall_cpp.hpp"
#include "../h/tcb.hpp"

void PeriodicThread::terminate() {
    thread_exit();
}

PeriodicThread::PeriodicThread(time_t period) {

    this->period=period;
    setPer(true);
    setTime(period);
    thread_create(&getHandle(),wrapperP,this);
}

void PeriodicThread::wrapperP(void *arg) {
        PeriodicThread* thread = static_cast<PeriodicThread*>(arg);
        thread->periodicActivation();


}


