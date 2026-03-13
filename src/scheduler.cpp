//
// Created by marko on 20.4.22..
//

#include "../h/scheduler.hpp"
#include "../h/MemoryAllocator.h"

Elem* Scheduler::head=nullptr;
Elem* Scheduler::tail=nullptr;

TCB *Scheduler::get()
{
    if (!head) { return 0; }

    Elem *elem = head;
    head = head->next;
    if (!head) { tail = 0; }

    TCB *ret = elem->data;
    MemoryAllocator::getAlloc().deallocate(elem);
    return ret;
}

void Scheduler::put(TCB *ccb)
{
    Elem *elem = (Elem*)MemoryAllocator::getAlloc().allocate((sizeof(Elem)+MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE);
    elem->data=ccb;
    elem->next=0;
    if (tail!=nullptr)
    {
        tail->next = elem;
        tail = elem;
    } else
    {
        head = tail = elem;
    }
}