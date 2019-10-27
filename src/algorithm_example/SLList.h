//
// Created by wangbin on 2019/8/26.
//

#ifndef TLPL_SLLIST_H
#define TLPL_SLLIST_H

#include <iostream>
template <typename T>
struct  SLLNode{

    SLLNode(){next= 0;}
    SLLNode(T el,SLLNode* ptr= 0){
        info=el,next=ptr;
    }
    T info;
    SLLNode *next;
};
template <typename  T>
class SLList {
public:
    SLList(){
        head=tail= 0;
    }
    ~SLList();
    int isEmpty(){
        return head==0;
    }
    void addToHead(T);
    void addToTail(T);
    void printAll() const;
    bool isInList(T) const;
    void deleteNode(T);
    int deleteFromHead();
    int deleteFromTail();
private:
    SLLNode<T> *head,*tail;
};
template <typename T>
int SLList<T>::deleteFromHead() {
   T el=head->info;
   SLLNode<T> *tmp=head;
   if(head==tail)
       head=tail=0;
   else
       head=head->next;
   delete  tmp;
   return el;
}
template <typename  T>
int SLList<T>::deleteFromTail() {
    T el=tail->info;
    if(head==tail){
        delete  head;
        head=tail=0;
    }else{
        SLLNode<T>* tmp;
        for(tmp=head;tmp->next!=tail;tmp=tmp->next);
        delete  tail;
        tail=tmp;
        tail->next=0;

    }
    return el;
}
template <typename T>
void SLList<T>::deleteNode(T el) {
    if(head!=0){
        if(head==tail&&el==head->info){//当链表只有一个元素且与
            delete head;
            head=tail=0;
        }else if(el==head->info){
            SLLNode<T> *tmp=head;
            head=head->next;
            delete  tmp;
        }else{
            SLLNode<T> *pred,*tmp;
            for(pred=head,tmp=head->next;
            tmp!=0&&!(tmp->info==el);pred=pred->next,tmp=tmp->next);
            if(tmp!=0){
                pred->next=tmp->next;
                if(tmp==tail)
                    tail=pred;
                delete tmp;
            }
        }
    }
}
template <typename T>
bool SLList<T>::isInList(T el) const {
    SLLNode<T> *tmp;
    for(tmp=head;tmp!=0&&!(tmp->info==el);tmp=tmp->next);
        return tmp!=0;

}
template <typename T>
SLList<T>::~SLList() {
    for(SLLNode<T> *p;!isEmpty();){
        p=head->next;
        delete head;
        head=p;
    }
}
template <typename T>
void SLList<T>::addToHead(T el) {
    head=new SLLNode<T>(el,head);
    if(tail==0)
        tail=head;

}
template <typename T>
void SLList<T>::addToTail(T el) {
   // SLLNode<T> s;
    if(tail!=0){

        tail->next= new SLLNode<T>(el);
    }else
        head=tail=new SLLNode<T>(el);
}
template <typename T>
void SLList<T>::printAll() const {
    for(SLLNode<T> *tmp=head;tmp!=0;tmp=tmp->next){
        std::cout<<tmp->info<<" ";

    }
}
#endif //TLPL_SLLIST_H
