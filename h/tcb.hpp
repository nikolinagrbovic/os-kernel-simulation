
#include "../lib/hw.h"
#include "../h/scheduler.hpp"

#include "../h/MemoryAllocator.h"
#include "../h/syscall_cpp.hpp"
#include "../h/list.hpp"
#include "../test/printing.hpp"

struct Sleep
{
    TCB *data;
    time_t time;
    time_t proteklo;
    Sleep *next;
    Sleep *prev;

};

class TCB
{
public:
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    bool isBlocked() const { return blocked; }
    bool isPeriodic() const { return periodic; }
    bool isSleep() const { return sleep; }

    void setFinished(bool value) { finished = value; }
    void setBlocked(bool value) { blocked = value; }
    void setSleep(bool value) { sleep = value; }
    void setPeriodic(bool value) { periodic = value; }



    bool isEmpty() const{return head== nullptr;};

    uint64 getTimeSlice() const { return timeSlice; }

    using Body = void (*)(void*);

    static int createThread(TCB** handle,Body body, void* arg,uint64* stack);
    TCB* get();
    void put(TCB* ccb);
    static  TCB* get_b();
    static void put_b(TCB* ccb);

    static void yield();
    static void join(TCB* handle);
    static void SetMaximumThreads(int num);
    static int GetMaximumThreads();


    static TCB *running;

    inline int gettimeSliceCounter(){return timeSliceCounter;};


    static Sleep* sleep_head;
    static Sleep* sleep_tail;

    static Elem* b_head;
    static Elem* b_tail;

    int thread_sleep(time_t time);

private:
  /*  TCB(Body body, uint64 timeSlice) :
            body(body),
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    {
        thread_ID=id++;
        if (body != nullptr) { Scheduler::put(this); }
    }*/
    TCB(Body body, void* arg, uint64* stack, uint64 timeSlice)
    {

        thread_ID=id++;
        this->arg=arg;
        this->stack=stack;
        this->timeSlice=timeSlice;
        this->body=body;
        this->finished=false;
        this->sleep=false;
        this->periodic=false;
        this->blocked=false;
        head=tail=nullptr;
        this->context={(uint64) &threadWrapper,
                 stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                };

        if (body != nullptr && body!=Thread::wrapper) {
            printInt(getID());
            printString(". nit");
            printInt(MaximumThreads);
            printString(" ");
            printInt(MaximumThreadsCounter);

            if(MaximumThreadsCounter++>=MaximumThreads){
                printString("  PUN ");

                put_b(this);
                MaximumThreads=MaximumThreadsCounter;
            }else Scheduler::put(this);
            printString("\n");
        }
    }

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };
    struct Elem1
    {
        TCB *data;
        Elem1 *next;

    };

    Elem1* head;
    Elem1* tail;



    Body body;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    void* arg;
    bool finished;
    bool blocked;
    bool sleep;
    bool periodic;
    uint64 thread_ID;



    friend class Riscv;

    static void threadWrapper();

    static void contextextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();

    static uint64 timeSliceCounter;
    static uint64 MaximumThreads;
    static uint64 MaximumThreadsCounter;






    static uint64 id;

    //static uint64 constexpr STACK_SIZE = 1024;
    //static uint64 constexpr TIME_SLICE = DEFAULT_TIME_SLICE;
};


