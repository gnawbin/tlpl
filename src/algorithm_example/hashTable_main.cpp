//
// Created by root on 2019/8/25.
//

#include "SimpleHashTable.h"
#include "SLList.h"
#include "DDList.h"
int main(int argc,char **argv){
  //HashTable<int,float> m(100);

  //m.insert(1,2);
  SLList<int> s;
  s.addToTail(2);
  s.addToHead(3);
  s.addToHead(89);
  s.addToHead(43);
  s.addToHead(32);

  //s.printAll();
  //s.isInList(4);
 // cout<<s.isInList(4)<<endl;
  //s.deleteNode(89);
  //s.printAll();
  DoublyLinkedList<int> d;
  d.addToDLLHead(3);
//d.printDoubleLinedList();
  cout<<d;

}
