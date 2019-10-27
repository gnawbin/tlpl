#include "RBTree.h"
#include <iostream>
#include <vector>
#include <iomanip>
#include <string>
using namespace std;
int main(int argc,char **argv){
  vector<int> a({10,40,30,60,90,70,20,50,80});
  int check_insert=0;// "插入"动作的检测开关(0，关闭；1，打开)
  int check_remove=0;//"删除"动作的检测开关(0，关闭；1，打开)
  int i;
  RBTree<int,string>* tree=new RBTree<int,string>();
  for(int i:a){
   cout<<i<<endl;
   tree->insertRBTree(i,std::to_string(i));
 //  tree->print();

  }
  tree->print();
 RBTNode<int,string>* ab=tree->searchRBTree(40);
  std::cout<<ab->key_<<std::endl;
   tree->removeRBTree(30);
}
