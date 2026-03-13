//
// Created by os on 8/17/23.
//

#ifndef PROJECT_BASE_V1_1_MEMORYALLOCATOR_H
#define PROJECT_BASE_V1_1_MEMORYALLOCATOR_H

#include "../lib/hw.h"


class MemoryAllocator {
    struct Segment{
        Segment* prev;
        Segment* next;
        size_t size;
    };
    Segment* head;
    Segment* busy;
    MemoryAllocator(){
        head=(Segment*)((uint64*)HEAP_START_ADDR);
        head->next= nullptr;
        head->prev=nullptr;
        head->size=((uint64*)HEAP_END_ADDR-(uint64*)HEAP_START_ADDR - sizeof(MemoryAllocator) + MEM_BLOCK_SIZE-1)/MEM_BLOCK_SIZE;
    }

public:
    static MemoryAllocator& getAlloc();
    void* allocate(size_t s);
    int deallocate(void* addr);
    int getSize();


};


#endif //PROJECT_BASE_V1_1_MEMORYALLOCATOR_H
