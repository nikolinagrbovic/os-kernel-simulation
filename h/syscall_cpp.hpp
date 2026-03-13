#ifndef _syscall_cpp
#define _syscall_cpp

#include "../h/syscall_c.hpp"


class Thread {
public:
    Thread (void (*body)(void*), void* arg);
    virtual ~Thread ();
    int start ();
    void join();
    static void dispatch ();
    static int sleep (time_t t);
    static void wrapper(void* thread);
    thread_t& getHandle(){return myHandle;}
    void setPer(bool v);
    void setTime(uint64 t);
protected:
    Thread ();
    virtual void run () {}
private:
    thread_t myHandle;
    void (*body)(void*);
    void* arg;

};



class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};

class PeriodicThread : public Thread {
public:
    void terminate ();
protected:
    PeriodicThread (time_t period);


    virtual void periodicActivation () {}

private:
    time_t period;
    static void wrapperP(void* arg);
};

class Console {
public:
    static char getc ();
    static void putc (char c);
};



#endif
