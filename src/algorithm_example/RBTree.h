/*
 * RBTree.h
 *
 *  Created on: 2019年9月28日
 *      Author: wangbin
 */

#include <iomanip>
#include <iostream>
using namespace std;
enum RBTColor{RED,BLACK};
template <typename K,typename V>
struct RBTNode{
  RBTColor color_;//颜色
  K key_;
  V value_;
  RBTNode<K,V> *leftNode_;
  RBTNode<K,V> *rightNode_;
  RBTNode<K,V> *parentNode_;
  RBTNode(K key,V value,RBTColor color ,RBTNode* p,RBTNode* leftNode,RBTNode *rightNode):
  key_(key),value_(value),color_(color),
  leftNode_(leftNode),rightNode_(rightNode){}
};
template <typename K,typename V>
class RBTree{
  private:
    RBTNode<K,V> *mRoot_;//// 根结点
  public:
       RBTNode<K,V> *searchRBTree(K key);
        RBTree();//构造函数
        ~RBTree();//析构函数
        void destroy();
        void insertRBTree(K key,V value);
        void print();//打印
        void removeRBTree(K key);
       //void removeRBTreeNode(K key);
       // (递归实现)查找"红黑树"中键值为key的节点




   private:
       //(递归实现)查找"红黑树"中键值为key的节点
       RBTNode<K,V> *searchRBTNode(RBTNode<K,V>* x,K key) ;
       void destroy(RBTNode<K,V> *&tree);
       void insertRBTNode(RBTNode<K,V>* &root,RBTNode<K,V>* node);
       void insertRBTFixUp(RBTNode<K,V>* &root, RBTNode<K,V>* node);
       void leftRotate(RBTNode<K,V>* &root,RBTNode<K,V>* x);
       void rightRotate(RBTNode<K,V>* &root,RBTNode<K,V>* y);
       void print(RBTNode<K,V>* tree,K key,int direction);
       // 找结点(x)的后继结点。即，查找"红黑树中数据值大于该结点"的"最小结点"。
       RBTNode<K,V>* successor(RBTNode<K,V> *x);//
       void removeRBTree(RBTNode<K,V>* &root,RBTNode<K,V>* node);
       //删除修正函数
       void removeRBTreeFixUp(RBTNode<K,V>* &root,RBTNode<K,V> *node,RBTNode<K,V> *parent);

       //void removeRBTree(K key);
       //删除函数
     //  void removeRBTreeNode(RBTNode<K,V>* &root,RBTNode<K,V>* node);

#define rb_parent(r) ((r)->parentNode_) //获得父节点
#define rb_color(r) ((r)->color_) //获得颜色
#define rb_is_red(r) ((r)->color_==RED) //判断是否是红色
#define rb_is_black(r) ((r)->color_==BLACK) //判断是否是黑色
#define rb_set_black(r) do{(r)->color_=BLACK;} while(0) //设为黑色
#define rb_set_red(r) do{(r)->color_=RED;} while(0) //设为红色
#define rb_set_parent(r,p) do{(r)->parentNode=(p);} while(0) //设为父节点
#define rb_set_color(r,c) do{(r)->color=(c);} while(0) //设为
};
template <typename K,typename V>
void RBTree<K,V>::removeRBTree(RBTNode<K,V>* &root,RBTNode<K,V> *node){
	RBTNode<K,V> *child,*parent;//孩子,父
	RBTColor color;
	 // 被删除节点的"左右孩子都不为空"的情况。
	if((node->leftNode_!=nullptr)&&(node->rightNode_!=nullptr)){
		// 被删节点的后继节点。(称为"取代节点")
		 // 用它来取代"被删节点"的位置，然后再将"被删节点"去掉。
		RBTNode<K,V> *replace=node;
		//获取后继节点
		replace=replace->rightNode_;
		while(replace->leftNode_!=nullptr){
			replace=replace->leftNode_;
		}
		// "node节点"不是根节点(只有根节点不存在父节点)
		if(rb_parent(node)){
			if(rb_parent(node)->leftNode_==node){
				rb_parent(node)->leftNode_=replace;
			}else{
				rb_parent(node)->rightNode_=replace;
			}
		}else
			// "node节点"是根节点，更新根节点。
			root=replace;
		// // child是"取代节点"的右孩子，也是需要"调整的节点"。
		 // "取代节点"肯定不存在左孩子！因为它是一个后继节点。
		child=replace->rightNode_;
		parent=rb_parent(replace);
	    // 保存"取代节点"的颜色
	         color = rb_color(replace);

	         // "被删除节点"是"它的后继节点的父节点"
	         if (parent == node)
	         {
	                parent = replace;
                }
	         else
	         {
	              // child不为空
	             if (child)
	                  rb_set_parent(child, parent);
	                    parent->left = child;

	                 replace->right = node->right;
	            rb_set_parent(node->right, replace);
	         }

	         replace->parent = node->parent;
	         replace->color = node->color;
	         replace->left = node->left;
	         node->left->parent = replace;

            if ( color == BLACK)
	             removeRBTreeFixUp(root, child, parent);

	         delete node;
	         return ;
	}
}
template <typename K,typename V>
RBTNode<K,V> *RBTree<K,V>::successor(RBTNode<K,V> *x){

}

template <typename K,typename V>
void RBTree<K,V>::print(RBTNode<K,V>* tree,K key,int direction){
  if(direction==0){//tree是根节点
    cout<<setw(2)<<tree->key_<<"(B) is root"<<endl;
  }else{

	  cout  << tree->key_ <<  (rb_is_red(tree)?"(R)":"(B)") << " is "
			   << key << "'s "  << setw(12) << (direction==1?"right child" : "left child") << endl;
  }
  if(tree->leftNode_!=nullptr){
  print(tree->leftNode_,tree->key_,-1);
  }
  if(tree->rightNode_!=nullptr){
  print(tree->rightNode_,tree->key_,1);
  }
}
template<typename K,typename V>
void RBTree<K,V>::insertRBTree(K key,V value){
  RBTNode<K,V> *z=nullptr;
  if((z=new RBTNode<K,V>(key,value,RED,nullptr,nullptr,nullptr))==nullptr)
     return ;
  insertRBTNode(mRoot_,z);
}
/*  * 对红黑树的节点(x)进行左旋转
  *
 * 左旋示意图(对节点x进行左旋)：
   *      px                              px
  *     /                               /
  *    x                               y
  *   /  \      --(左旋)-->           / \                #
  *  lx   y                          x  ry
  *     /   \                       /  \
  *    ly   ry                     lx  ly
  *
  *
  */
template <typename K,typename V>
void RBTree<K,V>::leftRotate(RBTNode<K,V>* &root,RBTNode<K,V>* x){
  //当前节点x的右孩子为y
  RBTNode<K,V>* y=x->rightNode_;
  //将y的左孩子设为x的右孩子
  x->rightNode_=y->leftNode_;
  if(y->leftNode_!=nullptr){//y的左孩子不为空,就x设为y的左孩子的父节点
     y->leftNode_->parentNode_=x;
  }
  //将x的父节点设为y的为节点
  y->parentNode_=x->parentNode_;
  if(x->parentNode_==nullptr){
     root=y;
  }
  else{
     if(x->parentNode_->leftNode_==x) //
        x->parentNode_->leftNode_=y;// 如果 x是它父节点的左孩子，则将y设为“x的父节点的左孩子
     else{
        x->parentNode_->rightNode_=y;//
     }
  }
  y->leftNode_=x; // 将 “x” 设为 “y的左孩子”
  x->parentNode_=y;  // 将 “x的父节点” 设为 “y”

}
 /*
  * 对红黑树的节点(y)进行右旋转
  *
  * 右旋示意图(对节点y进行左旋)：
  *            py                               py
   *           /                                /
   *          y                                x
   *         /  \      --(右旋)-->            /  \                     #
  *        x   ry                           lx   y
  *       / \                                   / \                   #
  *      lx  rx                                rx  ry
  *
  */
template<typename K,typename V>
void RBTree<K,V>::rightRotate(RBTNode<K,V>* &root,RBTNode<K,V>* y){
   //设置x是当前y节点的左孩子
   RBTNode<K,V> *x=y->leftNode_;
   //将"x的右孩子"设为y的左孩子
   y->leftNode_=x->rightNode_;;
   if(x->rightNode_!=nullptr){
      x->rightNode_->parentNode_=y;//x的右孩子不为空,
   }
   x->parentNode_=y->parentNode_;//将y的父节点设为x的父节点
   if(y->parentNode_==nullptr){
      root=x;
   }else{
      if(y==y->parentNode_->rightNode_)//如果y是它父节点的右孩子,就x设为y的父节点
         y->parentNode_->rightNode_=x;
       else{
         y->parentNode_->leftNode_=x;
       }
   }
   x->rightNode_=y;
   y->parentNode_=x;
}
template <typename K,typename V>
void RBTree<K,V>::insertRBTFixUp(RBTNode<K,V>* &root,RBTNode<K,V>* node){
   RBTNode<K,V> *parent,*gparent;//父节点,祖父节点
   //若父节点存在,并且父节点的颜色为红色
   while((parent=rb_parent(node))&&rb_is_red(parent)){
      gparent=rb_parent(parent);//从父节点获得祖父节点
      //如何父节点是祖父节点的左孩子
      if(parent==gparent->leftNode_){
          //条件1:叔叔节点是红色
          {
             RBTNode<K,V> *uncle=gparent->rightNode_;
             if(uncle&&rb_is_red(uncle)){//叔叔不为空且是红色
                rb_set_black(uncle);//把叔叔节点设为黑色
                rb_set_black(parent);//父节点为黑色
                rb_set_black(gparent);//祖父节点为黑色
                node=gparent;
                continue;
             }
          }
          //条件2: 叔叔是黑色,且当前节点是右孩子
          if(parent->rightNode_==node){
             RBTNode<K,V> *tmp;
             leftRotate(root,parent);
             tmp=parent;
             parent=node;
             node=tmp;
          }
          //// Case 3条件：叔叔是黑色，且当前节点是左孩子。
          rb_set_black(parent);
          rb_set_red(gparent);
          rightRotate(root,gparent);
      }else{//若“z的父节点”是“z的祖父节点的右孩子”
           // Case 1条件：叔叔节点是红色
           {
              RBTNode<K,V>* uncle=gparent->leftNode_;
              if(uncle&&rb_is_red(uncle)){
                rb_set_black(uncle);
                rb_set_black(parent);
                rb_set_red(gparent);
                node=gparent;
                continue;
              }
           }
            // Case 2条件：叔叔是黑色，且当前节点是左孩子
            if(parent->leftNode_==node){
              RBTNode<K,V> *tmp;
              rightRotate(root,parent);
              tmp=parent;
              parent=node;
              node=tmp;
            }

           // Case 3条件：叔叔是黑色，且当前节点是右孩子。
             rb_set_black(parent);
             rb_set_red(gparent);
             leftRotate(root, gparent);
      }
   }
  rb_set_black(root);// 将根节点设为黑色
}
template <typename K,typename V>
void RBTree<K,V>::insertRBTNode(RBTNode<K,V>* &root,RBTNode<K,V>* node){
  RBTNode<K,V> *y=nullptr;
  RBTNode<K,V> *x=root;//根节点
   // 1. 将红黑树当作一颗二叉查找树，将节点添加到二叉查找树中。
   while(x!=nullptr){ //根节点不为空
        y=x;//将x赋给临时节点y
        if(node->key_<x->key_){//当要插入的节点node的键值小于根节点的键值
        	if(x->leftNode_!=nullptr){
             x=x->leftNode_;//x节点指向该节点的左孩子
        	}else
        		break;
        }else{
        	if(x->rightNode_!=nullptr){
               x=x->rightNode_;//x节点指向该节点的右孩子
        	}else
        		break;
        }

   }
   node->parentNode_=y;//node的父节节点就是y节点
   if(y!=nullptr){
     if(node->key_<y->key_) //如果要插入的节点的键值小于y节点的键值
     {
         y->leftNode_=node;//该要插入的节点节点放在y节点的左孩子上
     }else{
        y->rightNode_=node;//要插入的节点要放在y节点的右孩子上
     }
   }else{
      root=node;//如果y为nullptr,该要插入的节点就放在根节点上
   }
   //2:设置节点的颜色为红色
   node->color_=RED;
//3.将它重新修正为一颗二叉查找数
  insertRBTFixUp(root,node);
}

template <typename K,typename V>
void RBTree<K,V>::destroy(RBTNode<K,V> *&tree){
   if(tree==nullptr)
      return;
    if(tree->leftNode_!=nullptr)
        return destroy(tree->leftNode_);
    if(tree->rightNode_!=nullptr)
        return destroy(tree->rightNode_);
    delete tree;
    tree=nullptr;
}
template <typename K,typename V>
void RBTree<K,V>::destroy(){
  destroy(mRoot_);
}
template <typename K,typename V>
RBTree<K,V>::RBTree():mRoot_(nullptr){}

template <typename K,typename V>
RBTree<K,V>::~RBTree(){
 destroy();
}
template <typename K,typename V>
void RBTree<K,V>::print(){
  if(mRoot_!=nullptr){
    print(mRoot_,mRoot_->key_,0);
  }
}
template <typename K,typename V>
RBTNode<K,V>* RBTree<K,V>::searchRBTree(K key){
	return searchRBTNode(mRoot_,key);
}
template <typename K,typename V>
RBTNode<K,V> *RBTree<K,V>::searchRBTNode(RBTNode<K,V>* x,K key) {
	if(x==nullptr||x->key_==key) //当节点x为空或是当节点x的键值等于要搜索的键值,返回当前点
		return x;
	if(key<x->key_)
		return searchRBTNode(x->leftNode_,key);//
	else
		return searchRBTNode(x->rightNode_,key);
}
template <typename K,typename V>
void RBTree<K,V>::removeRBTree(K key){
	RBTNode<K,V> *node;
	if((node=searchRBTNode(mRoot_,key))!=nullptr){

	}
}
template<typename K,typename V>
void RBTree<K,V>::removeRBTreeFixUp(RBTNode<K,V> *&root,RBTNode<K,V>* node,
		RBTNode<K,V>* parent){
	RBTNode<K,V> *other;
	while((!node||rb_is_black(node))&&node!=root){
		if(parent->leftNode_==node){
			other=parent->rightNode_;
			if(rb_is_red(other)){

			}
		}
	}
}
