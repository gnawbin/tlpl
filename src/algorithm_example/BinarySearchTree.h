//
// Created by wangbin on 2019/9/3.
//

#ifndef BINARYSEARCHTREE_H
#define BINARYSEARCHTREE_H

#include <iostream>
template <typename T, typename V>

struct BSTNode{
    T key_;
    V value_;
    BSTNode *lchild_;
    BSTNode *rchild_;
    BSTNode *parent_;
    BSTNode(T key,V value,BSTNode *lchild,
            BSTNode *rchild,BSTNode *parent):lchild_(lchild),rchild_(rchild),
            parent_(parent),key_(key),value_(value){}


};


template <typename T,typename V>
class BSTree{
    typedef BSTNode<T,V> Node;
private:
    Node *root_;
public:
    BSTree():root_(nullptr){}
    ~BSTree(){destroy();}
    void destroy();
    void preOrder()  ;  //先序输出
    void inOrder();//
    void postOrder();//
    BSTNode<T,V>* minimumNode();//查找最小的键值
    BSTNode<T,V>* maximumNode();//查找最大的节点
    void insert(T key,V value);//后序输出;
    Node* search (T key)   ;//二叉树的查找
    void print();
    T minimumKey();//
    T maximumKey();
    void remove(T key);
    BSTNode<T,V>* predecessor(BSTNode<T,V>* x);
    BSTNode<T,V>* sucessor(BSTNode<T,V>* x);
private:
    void destroy(Node* &tree);
    void insert(Node* &tree,Node* z);
    Node* search(Node* &tree,T key) const;
    void preOrder(BSTNode<T,V>*&tree) const;
    void inOrder(BSTNode<T,V>*&tree) const;
    void postOrder(BSTNode<T,V>*&tree)const;
    Node* minimumNode(Node *&tree);
    Node* maximumNode(Node *&tree);
    void print(BSTNode<T,V>* tree);

    BSTNode<T,V> remove(BSTNode<T,V>*& tree,BSTNode<T,V> *z);
};
template <typename T,typename V>
BSTNode<T,V>* BSTree<T,V>::sucessor(BSTNode<T, V>* x) {
    //如果x是键值最大的，则x没有后继结点
    if(x->key_==maximumNode(root_)->key_)
        return nullptr;
    //获取x在二叉树中的结点y
    BSTNode<T,V> *y= nullptr;
    y=search(root_,x->key_);
    if(!y){
        return nullptr;
    }
    //如果y有右孩子，则y的后继为其右孩子的最小结点
    if(y->rchild_!= nullptr){
        return minimumNode(y->rchild_);
    }
    //如果y没有右孩子，则可分为两种情况：
    //1.y 是左孩子。此时y的后继为y的父结点
    BSTNode <T,V>* parent = y->_parent;
    if(y->_parent->_lchild == y)
        return parent;

    //2.y是右孩子。此时y的后继结点为“第一个拥有左孩且不是y的直接双亲”的结点
    while(parent!=NULL)
    {
        if(parent->_lchild!=NULL&&parent!=y->_parent)
            return parent;
        parent=parent->_parent;
    }
    return NULL;
}
template <typename T,typename V>
BSTNode<T,V>* BSTree<T,V>::predecessor(BSTNode<T, V> *x) {
    //    //如果x是最小的结点，则它没有前驱
    if(x->key_==minimumNode(root_)->key_){
        return nullptr;
    }
    //否则
    //先获取二叉树中键值与x的键值相同的结点y
    BSTNode<T,V> *y= nullptr;
    y=search(root_,x->key_);
    if(y== nullptr)
        return nullptr;
    //如果y有左孩子，则x的前驱为“以x的左孩为根的子树的最大结点”
    if(y->lchild_!= nullptr){
        return maximumNode(y->lchild_);
    }
    //如果y没有左孩子，则x有两种可能：
    //1.y是一个右孩子，此时x的前驱为其双亲节点
    BSTNode<T,V>* parent=y->parent_;
    if(parent->rchild_==y){
        return parent;
    }
    //2.y是一个左孩子，则其前驱为其双亲结点中“第一个拥有右孩子结点”的结点
    while (parent!= nullptr&&parent->rchild_== nullptr){
        parent=parent->parent_;
    }
    return parent;

}

template <typename T,typename V>
BSTNode<T,V> BSTree<T,V>::remove(BSTNode<T, V> *&tree, BSTNode<T, V> *z) {
    BSTNode<T,V> *x= nullptr;
    BSTNode<T,V> *y= nullptr;
    if((z->lchild_== nullptr)||(z->rchild_== nullptr)){
        y=z;
    }else{
        y=sucessor(z);
    }
    if(y->lchild_!= nullptr){
        x=y->lchild_;
    }
    else{
        x=y->rchild_;
    }
    if(x!= nullptr){
        x->parent_=y->parent_;
    }
    else if(y=y->parent_->lchild_){
        y->parent_->lchild_=x;
    } else {
        y->parent_->rchild_=x;
    }
    if(y!=z)
        z->key_=y->key_;
    return  y;
}

template <typename T,typename V>
T BSTree<T,V>::minimumKey() {
    BSTNode<T,V> *temp=minimumNode(root_);
    return temp->key_;
}
template <typename T,typename V>
T BSTree<T,V>::maximumKey()  {
    BSTNode<T,V> *temp=maximumNode(root_);
    return temp->key_;
}

template <typename T,typename V>
void BSTree<T,V>::print(){
   print(root_);
}
template <typename T,typename V>
void BSTree<T,V>::print(BSTNode<T, V> *tree) {
  if(tree){
      if(tree->lchild_){
         std::cout<<"node="<<tree->key_<<"have left children "<<tree->lchild_->key_<<std::endl;
      }else{
          std::cout<<"node="<<tree->key_<<"no left children"<<std::endl;
      }
      if(tree->rchild_){
          std::cout<<"node="<<tree->key_<<"have right children"<<tree->rchild_->key_<<std::endl;
      }else{
          std::cout<<"node="<<tree->key_<<"no right children"<< tree->rchild_->key_<<std::endl;
      }
  }
  print(tree->lchild_);
  print(tree->rchild_);
}
template <typename T,typename V>
BSTNode<T,V>* BSTree<T,V>::maximumNode() {
    return maximumNode(root_);
}
template <typename T,typename V>
BSTNode<T,V>* BSTree<T,V>::maximumNode(BSTree<T, V>::Node *&tree) {
    BSTNode<T,V>* temp;
    while (temp->rchild_){
        temp=temp->rchild_;
    }
    return temp;
}
template <typename T,typename V>
BSTNode<T,V>* BSTree<T,V>::minimumNode()  {
    return   minimumNode(root_);
}
template <typename T,typename V>
BSTNode<T,V>* BSTree<T,V>::minimumNode(BSTree<T, V>::Node *&tree) {
    BSTNode<T,V>* temp=tree;
    while (temp->lchild_){
        temp=temp->lchild_;
    }
    return temp;
}
template <typename T,typename V>
void BSTree<T,V>::postOrder() {
    postOrder(root_);
}
template <typename T,typename V>
void BSTree<T,V>::postOrder(BSTNode<T, V>*&tree) const {
    if(tree){
        postOrder(tree->lchild_);
        postOrder(tree->rchild_);
        std::cout<<tree->key_<<" ";
    }
}
template <typename T,typename V>
void BSTree<T,V>::inOrder(BSTNode<T,V>*&tree) const {
    if(tree){
        inOrder(tree->lchild_);
        std::cout<<tree->key_<<" ";
        inOrder(tree->rchild_);
    }
}
template <typename T,typename V>
void BSTree<T,V>::inOrder() {
    inOrder(root_);
}

template <typename T,typename V>
void BSTree<T,V>::preOrder() {
    preOrder(root_);
}
template <typename T,typename V>
void BSTree<T,V>::preOrder(BSTNode<T, V> *&tree) const {
    if(tree){
        std::cout<<tree->key_<<std::endl;
        preOrder(tree->lchild_);
        preOrder(tree->rchild_);
    }
}
template <typename T,typename V>
BSTNode<T,V>* BSTree<T,V>::search(BSTree<T, V>::Node *&tree, T key) const {
    BSTNode<T,V>* temp=tree;
    while (temp!= nullptr){
        if(temp->key_=key){
            return temp;
        }
        else if(temp->key_>key){
            temp=temp->lchild_;
        }else{
            temp=temp->rchild_;
        }
    }
    return nullptr;
}
template <typename T,typename V>
BSTNode<T,V>* BSTree<T,V>::search(T key) {
    return search(root_,key);
}


template <typename T,typename V>
void BSTree<T,V>::insert(BSTree<T, V>::Node *&tree, BSTree<T, V>::Node *z) {
    Node* parent= nullptr;
    Node* temp=tree;
    while (temp!= nullptr){
        parent=temp;
        if(z->key_>temp->key_){
            temp=temp->rchild_;
        }else{
            temp=temp->lchild_;
        }
    }
    z->parent_=parent;
    if(parent== nullptr){
        tree=z;
    }else if(z->key_>parent->key_){
        parent->_rchild=z;
    }else
        parent->lchild_=z;
}

template <typename T,typename V>
void BSTree<T,V>::insert(T key, V value) {
   Node* z=new Node(key,value, nullptr, nullptr, nullptr);
   if(!z)
       return;
   insert(root_,z);
}
template <typename T,typename V>
void BSTree<T,V>::destroy() {
    destroy(root_);
}
template <typename T,typename V>
void BSTree<T,V>::destroy(Node *&tree) {
    if (tree->lchild_ != nullptr) {
        destroy(tree->lchild_);
    }
    if (tree->rchild_ != nullptr) {
          destroy(tree->rchild_);
    }
    if(tree->lchild_== nullptr&&tree->rchild_== nullptr)
              delete(tree);
               tree= nullptr;

}

#endif