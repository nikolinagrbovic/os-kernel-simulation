//
// Created by os on 8/17/23.
//

#include "../h/MemoryAllocator.h"



MemoryAllocator &MemoryAllocator::getAlloc() {
    static MemoryAllocator allocator;
    return allocator;
}

void* MemoryAllocator::allocate(size_t s) {
    Segment* cur=head;
    void* ret= nullptr;
    if(head==nullptr)return nullptr;
    for(cur=head;cur!=nullptr;cur=cur->next){
        //first fit
        if(cur->size>=s){
            ret=cur;
            if(cur->size-s==0){
                //nema nijeedan ceo blok
                if(cur->prev != nullptr)(cur->prev)->next=cur->next;
                else head=cur->next;
                if(cur->next!= nullptr)(cur->next)->prev=cur->prev;

                cur->size=s;
                break;
            }
            else{
                Segment*newFree=(Segment*)((char*)cur+s * MEM_BLOCK_SIZE);
                if(cur->prev==nullptr) head=newFree;
                else (cur->prev)->next=newFree;
                if(cur->next!=nullptr) (cur->next)->prev=newFree;
                newFree->prev=cur->prev;
                newFree->next=cur->next;
                newFree->size=cur->size-s;

                cur->size=s;
                break;
            }
            cur->size=s;
            break;
        }
    }
    if(ret== nullptr) return nullptr;
    return (char*)ret+sizeof(Segment);
}

int MemoryAllocator::deallocate(void *addr) {
    if((uint64*)addr<HEAP_START_ADDR || (uint64*)addr>=HEAP_END_ADDR) return -1;
    Segment* cur=nullptr;
    if(head==nullptr ||(char*)addr<(char*)head){
     cur=0;
     //insert as first;
    }
    else {
        for(cur=head;cur->next!=0 && (char*)addr>(char*)(cur->next);cur=cur->next);
    }
    //prethodno nadjeno gde treba da se ubaci
    Segment* segment=(Segment*)((char*)addr -sizeof(Segment));

    //probaj da spojis sa prethodnim


    if(cur!=0 && (char*)cur +cur->size*MEM_BLOCK_SIZE == (char*)segment){
        //spoji sa pret
        cur->size+=segment->size;

        //pokusaj da ceo spojimo sa sledecim
        if(cur->next && (char*)(cur->next)==(char*)cur+cur->size*MEM_BLOCK_SIZE){
            cur->size+=cur->next->size;
            cur->next=cur->next->next;
            if(cur->next) cur->next->prev=cur;
        }
        return 0;
    }
    else{
        //probaj da spojis sa sledecim ne moze da prethodnim
        Segment*nextS=0;
        if(cur!=nullptr) nextS=cur->next;
        else nextS=head;
        if(nextS!=nullptr && (char*)((char*)segment+segment->size*MEM_BLOCK_SIZE)==(char*) nextS){
            //spoji sa slededdcim
            segment->size+=nextS->size;
            segment->prev=nextS->prev;
            segment->next=nextS->next;
            if(nextS->next)nextS->next->prev=segment;
            if(nextS->prev) nextS->prev->next=segment;
            else head=segment;
            return 0;
        }
        else
        {
            //ne treba povezivanje samo uvezi
            segment->prev=cur;
            if(cur) segment->next=cur->next;
            else segment->next=head;

            if(segment->next) segment->next->prev=segment;
            if(cur) cur->next=segment;
            else head=segment;
        }
    }

    return 0;
}

int MemoryAllocator::getSize() {
    return sizeof(Segment);
}

