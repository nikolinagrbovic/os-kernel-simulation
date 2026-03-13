//
// Created by os on 9/7/23.
//

#ifndef PROJECT_BASE_V1_1__SEM_HPP
#define PROJECT_BASE_V1_1__SEM_HPP

#include "../h/syscall_c.hpp"



class _sem {
private:
    _sem(int i):init(i){head=tail=nullptr;closed=0;val=i;};
    int init;
    int val;
    int closed;
    struct Elem1
    {
        TCB *data;
        Elem1 *next;

    };

    Elem1* head;
    Elem1* tail;


public:

    static int semOpen(_sem** handle,int i);
    static int semClose(_sem* handle);
    int semWait();
    int semSignal();
    static _sem* semCreate(int i);



    TCB* get();
    void put(TCB* ccb);
    ~_sem();

};




#endif //PROJECT_BASE_V1_1__SEM_HPP
