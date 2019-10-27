/*
 * BPlus_node.h
 *
 *  Created on: 2019年10月7日
 *      Author: wangbin
 */

#ifndef _BPLUS_NODE_H_
#define _BPLUS_NODE_H_
enum NODE_TYPE{INTERNAL,LEAF};//节点类型:内节点,叶子节点
enum SIBLING_DIRECTION{LEFT,RIGHT};//兄弟节点方向:左兄弟节点,右兄弟节点
#define ORDER 7//B+的阶
#define MINNUM_KEY ((ORDER)-1) // 最小键值个数
#define MAXNUM_KEY (2*(ORDER)-1) //最大键值个数
#define MINNUM_CHILD ((MINNUM_KEY)+1) // 最小子树个数
#define MAXNUM_CHILD ((MAXNUM_KEY)+1) //最大子树个数
#define MINNUM_LEAF (MINNUM_KEY) // // 最小叶子结点键值个数
#define MAXNUM_LEAF (MAXNUM_KEY)// 最大叶子结点键值个数
//结点基类
template<typename KeyType,typename DataType>
class CNode{
public:
	CNode();
	virtual ~CNode();
	NODE_TYPE getType() const{return m_Type_;}
	void setType(NODE_TYPE type){m_Type_=type;}
	int getKeyNum() const{return m_KeyNum_;}
	void setKeyNum(int n){m_KeyNum_=n;}
	KeyType getKeyValue(int i)const{return m_KeyValues_[i];}
	void setKeyValue(int i,KeyType key){m_KeyValues_[i]=key;}
    int getKeyIndex(KeyType key)const;// // 找到键值在结点中存储的下标
    virtual void removeKey(int keyIndex, int childIndex)=0;  // 从结点中移除键值
    	virtual void split(CNode* parentNode, int childIndex)=0; // 分裂结点
    	virtual void mergeChild(CNode* parentNode, CNode* childNode, int keyIndex)=0;  // 合并结点
    	virtual void clear()=0; // 清空结点，同时会清空结点所包含的子树结点
    	virtual void borrowFrom(CNode* destNode, CNode* parentNode, int keyIndex, SIBLING_DIRECTION d)=0; // 从兄弟结点中借一个键值
    	virtual int getChildIndex(KeyType key, int keyIndex)const=0;  // 根据键值获取孩子结点指针下标
protected:
	NODE_TYPE m_Type_;
	int m_KeyNum_;
	KeyType m_KeyValues_[MAXNUM_KEY];
};
template<typename KeyType,typename DataType>
class CInternalNode: public CNode<KeyType,DataType>{
public:
	CInternalNode();
	virtual ~CInternalNode();
	CNode<KeyType,DataType>* getChild(int i)const{return m_Childs_[i];}
	void setChild(int i,CNode<KeyType,DataType>* child){
		m_Childs_[i]=child;
	}
	void insert(int keyIndex,int childIndex,KeyType key,CNode<KeyType,DataType>* childNode);
    virtual void split(CNode<KeyType,DataType>* parentNode,int childIndex);
    virtual void mergeChild(CNode<KeyType,DataType>* parentNode,CNode<KeyType,DataType>* childNode,int keyIndex);
    virtual void removeKey(int keyIndex,int childIndex);
    virtual void clear();
    virtual void borrowFrom(CNode<KeyType,DataType>* destNode,CNode<KeyType,DataType>* parentNode,int keyIndex,SIBLING_DIRECTION d);
    virtual int getChildIndex(KeyType key,int keyIndex) const;
private:
	CNode<KeyType,DataType> *m_Childs_[MAXNUM_CHILD];
};
// 叶子结点
template <typename KeyType,typename DataType>
class CLeafNode : public CNode<KeyType,DataType>{
public:
	CLeafNode();
	virtual ~CLeafNode();

	CLeafNode* getLeftSibling() const {return m_LeftSibling;}
	void setLeftSibling(CLeafNode* node){m_LeftSibling = node;}
	CLeafNode* getRightSibling() const {return m_RightSibling;}
	void setRightSibling(CLeafNode* node){m_RightSibling = node;}
	DataType getData(int i) const {return m_Datas[i];}
	void setData(int i, const DataType& data){m_Datas[i] = data;}
	void insert(KeyType key, const DataType& data);
	virtual void split(CNode<KeyType,DataType>* parentNode, int childIndex);
	virtual void mergeChild(CNode<KeyType,DataType>* parentNode, CNode<KeyType,DataType>* childNode, int keyIndex);
	virtual void removeKey(int keyIndex, int childIndex);
	virtual void clear();
	virtual void borrowFrom(CNode<KeyType,DataType>* destNode, CNode<KeyType,DataType>* parentNode, int keyIndex, SIBLING_DIRECTION d);
	virtual int getChildIndex(KeyType key, int keyIndex)const;
private:
	CLeafNode* m_LeftSibling;
	CLeafNode* m_RightSibling;
	DataType m_Datas[MAXNUM_LEAF];
};
template <typename KeyType,typename DataType>
CNode<KeyType,DataType>::CNode(){
	setType(LEAF);
	setKeyNum(0);
}
template <typename KeyType,typename DataType>
CNode<KeyType,DataType>::~CNode(){
	setKeyNum(0);
}
template <typename KeyType,typename DataType>
int CNode<KeyType,DataType>::getKeyIndex(KeyType key) const{
	int left=0;
	int right=getKeyNum()-1;
	int current;
	while(left!=right){
		current=(left+right)/2;
		KeyType currentKey=getKeyValue(current);
		if(key>currentKey){
			left=current-1;
		}else{
			right=current;
		}

	}
	return left;
}
template <typename KeyType,typename DataType>
CInternalNode<KeyType,DataType>::CInteralNode():CNode<KeyType,DataType>(){
	setype(INTERNAL);
}
template <typename KeyType,typename DataType>
CInternalNode<KeyType,DataType>::~CInternalNode(){

}
template <typename KeyType,typename DataType>
void CInternalNode<KeyType,DataType>::clear(){
	for(int i=0;i<=m_KeyNum_;i++){
	  	m_Childs_[i]->clear();
		delete m_Childs_[i];
		m_Childs_[i]=nullptr;
	}
}
template <typename KeyType,typename DataType>
void CInternalNode<KeyType,DataType>::split(CNode<KeyType,DataType>* parentNode,int childIndex){
	CInternalNode<KeyType,DataType>* newNode=new CInternalNode<KeyType,DataType>();////分裂后的右节点
	newNode->setKeyNum(MINNUM_KEY);
	int i;
	for(i=0;i<MINNUM_KEY;i++){// 拷贝关键字的值
		newNode->setKeyValue(i, m_KeyValues_[i+MINNUM_CHILD]);
	}
	for(i=0;i<MINNUM_CHILD;i++){// 拷贝孩子节点指针
		newNode->setChild(i, m_Childs_[i+MINNUM_CHILD]);
	}
	setKeyNum(MINNUM_KEY);//更新左子树的关键字个数
	((CInternalNode<KeyType,DataType>*)parentNode)->insert(childIndex, childIndex+1,m_KeyValues_[MINNUM_KEY],newNode);


}
template <typename KeyType,typename DataType>
void CInternalNode<KeyType,DataType>::insert(int keyIndex,int childIndex,KeyType key,CNode<KeyType,DataType>* childNode){
	int i;
	for(i=getKeyNum();i>keyIndex;--i){
		setChild(i+1,m_Childs_[i]);
		setKeyValue(i,m_KeyValues_[i-1]);
	}
	if (i==childIndex)
	{
		setChild(i+1, m_Childs_[i]);
	}
	setChild(childIndex, childNode);
	setKeyValue(keyIndex, key);
	setKeyNum(m_KeyNum_+1);

}

template <typename KeyType,typename DataType>
void CInternalNode<KeyType,DataType>::mergeChild(CNode<KeyType,DataType> *parentNode,CNode<KeyType,DataType> *childNode,int keyIndex){
	//合并数据
	insert(MINNUM_KEY,MINNUM_KEY+1,parentNode->getKeyValue(keyIndex),((CInternalNode<KeyType,DataType>*)childNode)->getChild(0));
	int i;
	for(i=1;i<=childNode->getKeyNum();i++){
		insert(MINNUM_KEY+i, MINNUM_KEY+i+1, childNode->getKeyValue(i-1), ((CInternalNode<KeyType,DataType>*)childNode)->getChild(i));
	}
	parentNode->removeKey(keyIndex, keyIndex+1);
	delete ((CInternalNode<KeyType,DataType>*)parentNode)->getChild(keyIndex+1);
}
template <typename KeyType,typename DataType>
void CInternalNode<KeyType,DataType>::removeKey(int keyIndex,int childIndex){
	for(int i=0;i<getKeyNum()-keyIndex-1;++i){
		setKeyValue(keyIndex+1,getKeyValue(keyIndex+i+1));
		setChild(childIndex+i,getChild(childIndex+i+1));
	}
	setKeyNum(getKeyNum()-1);
}


#endif /* _BPLUS_NODE_H_ */
