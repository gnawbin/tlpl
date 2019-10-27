//
// Created by wangbin on 2019/8/26.
//

#ifndef TLPL_ANN_H
#define TLPL_AN
#include <vector>
#include <tuple>
#include <fstream>
#include <glog/logging.h>
#include <set>

#include <algorithm>
#include <typeinfo>
#include <glog/logging.h>
#include <iterator>
#include <iostream>
#include <chrono>
/**
 * 决策树
 */
template <typename T>
class DecisionTree{
public:
    DecisionTree()= default;
    ~DecisionTree(){delete_tree();}
    int init(const std::vector<std::vector<T>>& data, const std::vector<T>& classes);
    void set_max_depth(int max_depth){max_depth_=max_depth;}
    int get_max_depth()const {return max_depth_;}
    void set_min_size(int min_size){min_size_=min_size;}
    int get_min_size() const{ return min_size_;}


     void train();
    T predict(const std::vector<T>& data)const;
    int save_model(const char *name) const;
    int load_model(const char *name);


protected:

    typedef std::tuple<int,T,std::vector<std::vector<std::vector<T>>>> dictionary;
    typedef std::tuple<int,int,T,T,T> row_element;
    typedef struct binary_tree{
        dictionary dict_;
        T class_value_left_=(T)-1.f;
        T class_value_right_=(T)-1.f;
        binary_tree* left_= nullptr;
        binary_tree* right_= nullptr;
    } binary_tree;
    int height_of_tree(const binary_tree* node) const;
    void build_tree(const std::vector<std::vector<T>>& train);//构建树
    void split(binary_tree* node,int depth);
    std::tuple<int,T,std::vector<std::vector<std::vector<T>>>> get_split(const std::vector<std::vector<T>>& dataset) const;
    std::vector<std::vector<std::vector<T>>> test_split(int index,T value,const std::vector<std::vector<T>>& dataset) const;
    T to_terminal(const std::vector<std::vector<T>>& group) const;
    void write_node(const binary_tree* node, std::ofstream& file) const;
    double accuracy_metric() const;
    T predict(binary_tree* node,const std::vector<T>& data)const;
    void delete_tree();
    void delete_node(binary_tree* node);
    // Calculate the Gini index for a split dataset
    T gini_index(const std::vector<std::vector<std::vector<T>>>& groups, const std::vector<T>& classes) const;
    void row_element_to_node(binary_tree* node, const std::vector<row_element>& rows, int n, int pos);
    void node_to_row_element(binary_tree* node, std::vector<row_element>& rows, int pos) const;
    // Print a decision tree
    void print_tree(const binary_tree* node, int depth = 0) const;
private:
     std::vector<std::vector<T>> src_data_;
    binary_tree* tree_= nullptr;
    int samples_sum_=0;
    int feature_length_=0;
    int classes_num_=0;
    int max_depth_=10;
    int min_size_=10;
    int max_nodes_=-1;
};
template <typename T>
void DecisionTree<T>::print_tree(const DecisionTree<T>::binary_tree *node, int depth) const {
    if(node){
        std::string blank="";
        for(int i=0;i<depth;++i)
            blank+=blank;
        fprintf(stdout,"%s[X%d<%.3f]",blank.c_str(),std::get<0>(node->dict_)+1,std::get<1>(node->dict_));
        if(!node->left_||!node->right_)
            blank+=blank;
        if(!node->left_)
            fprintf(stdout,"%s[%.1f]\n",blank.c_str(),node->class_value_left_);
        else
            print_tree(node->left_,depth+1);
        if(!node->right_)
            fprintf(stdout,"%s[%.1f]\n",blank.c_str(),node->class_value_right_);
        else
            print_tree(node->right_,depth+1);
    }
}
template <typename T>
void DecisionTree<T>::write_node(const DecisionTree<T>::binary_tree *node, std::ofstream &file) const {
    std::vector<row_element> vec(this->max_nodes_,std::make_tuple(-1,-1,(T)-1,(T)-1,(T)-1));
    binary_tree* tmp= const_cast<binary_tree*>(node);
    node_to_row_element(tmp,vec,0);
    for(const auto& row:vec){
        file<<std::get<0>(row)<<","
        <<std::get<1>(row)<<","
        <<std::get<2>(row)<<","<<std::get<3>(row)<<","
        <<std::get<4>(row)<<std::endl;
    }
}
template <typename T>
void DecisionTree<T>::node_to_row_element(DecisionTree<T>::binary_tree *node, std::vector<row_element> &rows,
                                          int pos) const {
    if(!node)
        return;
    rows[pos]=std::make_tuple(0,std::get<0>(node->dict_),
            std::get<1>(node->dict_),
            node->class_value_left_,
            node->class_value_right_ );
    if(node->left_) node_to_row_element(node->left_,rows,2*pos+1);
    if(node->right_) node_to_row_element(node->right_,rows,2*pos+2);

}
template <typename T>
void DecisionTree<T>::row_element_to_node(DecisionTree<T>::binary_tree *node, const std::vector<row_element> &rows,
                                          int n, int pos) {
    if(!node||n==0)
        return;
    int new_pos=2*pos+1;
    if(new_pos<n&&std::get<0>(rows[new_pos])!=-1){
        node->left_=new binary_tree;
        std::vector<std::vector<std::vector<T>>> dump;
        node->left_->dict_=std::make_tuple(
          std::get<1>(rows[new_pos]),
          std::get<2>(rows[new_pos]),
                  dump
                );
        node->left_->class_value_left_=
                std::get<3>(rows[new_pos]);
        node->left_->class_value_right_=
                std::get<4>(rows[new_pos]);
        row_element_to_node(node->left_,rows,n,new_pos);
    }
    new_pos=2*pos+2;
    if(new_pos<n&&std::get<0>(rows[new_pos])!=-1){
        node->right_=new binary_tree;
        std::vector<std::vector<std::vector<T>>> dump;
        node->right_->dict_=std::make_tuple(
                std::get<1>(rows[new_pos]),
                std::get<2>(rows[new_pos]),
                        dump
                );
        node->right_->class_value_left_ = std::get<3>(rows[new_pos]);
        node->right_->class_value_right_ = std::get<4>(rows[new_pos]);
        row_element_to_node(node->right_, rows, n, new_pos);
    }
}
template <typename T>
int DecisionTree<T>::height_of_tree(const DecisionTree<T>::binary_tree *node) const {
    if(!node)
        return 0;
    else
        return std::max(height_of_tree(node->left_),height_of_tree(node->right_))+1;
}
template <typename T>
int DecisionTree<T>::save_model(const char *name) const {
    std::ofstream file(name,std::ios::out);
    if(!file.is_open()){
        fprintf(stderr,"can't open file %s\n",name);
        return -1;
    }
    file<<max_depth_<<","<<min_size_<<std::endl;
    binary_tree* tmp=tree_;
    int depth=height_of_tree(tmp);
    CHECK(max_depth_==depth);
    tmp=tree_;
    write_node(tmp,file);
    file.close();
    return 0;
}

template <typename T>
T DecisionTree<T>::predict(const std::vector<T> &data) const {
  if(!tree_){
  fprintf(stderr,"Error,tree is null\n");
  return -1111.f;
  }
  return predict(tree_,data);
}

template <typename T>
T DecisionTree<T>::gini_index(const std::vector<std::vector<std::vector<T>>> &groups,
                              const std::vector<T> &classes) const {

        // count all samples at split point
        int instances = 0;
        int group_num = groups.size();
        for (int i = 0; i < group_num; ++i) {
            instances += groups[i].size();
        }

        // sum weighted Gini index for each group
        T gini = (T)0.;
        for (int i = 0; i < group_num; ++i) {
            int size = groups[i].size();
            // avoid divide by zero
            if (size == 0) continue;
            T score = (T)0.;

            // score the group based on the score for each class
            T p = (T)0.;
            for (int c = 0; c < classes.size(); ++c) {
                int count = 0;
                for (int t = 0; t < size; ++t) {
                    if (groups[i][t][feature_length_] == classes[c]) ++count;
                }
                T p = (float)count / size;
                score += p * p;
            }

            // weight the group score by its relative size
            gini += (1. - score) * (float)size / instances;
        }
        return gini;
}

     template <typename T>
     T DecisionTree<T>::to_terminal(const std::vector<std::vector<T>> &group) const
    {
        std::vector<T> values;
        for(int i=0;i<group.size();++i){
            values.emplace_back(group[i][this->feature_length_]);
        }
        std::set<T> vals(values.cbegin(),values.cend());
        int max_count=-1,index=-1;
        for(int i=0;i<vals.size();i++){
            int count=std::count(values.cbegin(),values.cend(),*std::next(vals.cend(),i));
            if(max_count<count){
                max_count=count;
                index=i;
            }
        }
        return *std::next(vals.cbegin(),index);
    }
    template <typename T>
    T DecisionTree<T>::predict(DecisionTree<T>::binary_tree *node, const std::vector<T> &data) const {
        if(data[std::get<0>(node->dict_)]<std::get<1>(node->dict_)){
            if(node->left_){
                return predict(node->left_,data);
            }else{
                return node->class_value_left_;
            }
        }else{
            if(node->right_){
                return predict(node->right_,data);
            }else{
                return node->class_value_right_;
            }
        }
    }

template <typename T>
double DecisionTree<T>::accuracy_metric() const {
    int correct=0;
    for(int i=0;i<samples_sum_;i++){
      T predicted=  predict(tree_,src_data_[i]);
      if(predicted==src_data_[i][feature_length_])
          ++correct;
    }
    double accuracy=correct/(double)samples_sum_*100.;
    fprintf(stdout,"train accuracy: %f\n",accuracy);
    return accuracy;
}
template <typename T>
void DecisionTree<T>::split(DecisionTree<T>::binary_tree *node, int depth) {
    std::vector<std::vector<T>> left=std::get<2>(node->dict_)[0];
    std::vector<std::vector<T>> right=std::get<2>(node->dict_)[1];
    std::get<2>(node->dict_).clear();
    // check for a no split
    if(left.size()==0||right.size()==0){
        for(int i=0;i<right.size();++i){
            left.emplace_back(right[i]);
        }
        node->class_value_left_=node->class_value_right_=to_terminal(left);
        return;
    }
    //检查最大深度
    if(depth>=max_depth_){
        node->class_value_left_=to_terminal(left);
        node->class_value_right_=to_terminal(right);
        return ;
    }
    if(left.size()<=min_size_){
        node->class_value_left_=to_terminal(left);
    }
    else{
        dictionary dict=get_split(left);
        node->left_=new binary_tree;
        node->left_->dict_=dict;
        split(node->left_,depth+1);
    }
    if(right.size()<=min_size_){
        node->class_value_right_=to_terminal(right);
    }else{
        dictionary dict=get_split(right);
        node->right_=new binary_tree;
        node->right_->dict_=dict;
        split(node->right_,depth+1);
    }




}
template <typename T>
std::vector<std::vector<std::vector<T>>> DecisionTree<T>::test_split(int index, T value, const std::vector<std::vector<T>>& dataset) const
{
    std::vector<std::vector<std::vector<T>>> groups(2); // 0: left, 1: reight

    for (int row = 0; row < dataset.size(); ++row) {
        if (dataset[row][index] < value) {
            groups[0].emplace_back(dataset[row]);
        } else {
            groups[1].emplace_back(dataset[row]);
        }
    }

    return groups;
}
    template <typename  T>
    int DecisionTree<T>::init(const std::vector<std::vector<T>> &data, const std::vector<T> &classes) {
        CHECK(data.size()!=0&&classes.size()!=0&&data[0].size()!=0);
        this->samples_sum_=data.size();
        this-> classes_num_=classes.size();
        this->feature_length_=data[0].size()-1;
        for(int i=0;i<samples_sum_;i++){
            src_data_.push_back(data[i]);
        }
        //for(auto a:src_data){
          //  for(auto b:a){
            //    std::cout<<b<<"  ";
            //}
            //std::cout<<std::endl;
       // }
        return 0;
    }
    template <typename T>
    void DecisionTree<T>::train() {
    	std::chrono::time_point<std::chrono::system_clock> startTime=std::chrono::system_clock::now();
        max_nodes_=(1<<max_depth_)-1;
        build_tree(src_data_);
        accuracy_metric();
        std::chrono::time_point<std::chrono::system_clock> endTime=std::chrono::system_clock::now();
        std::cout<<"end-start="<<std::chrono::duration_cast<std::chrono::microseconds>(endTime-startTime).count()<<std::endl;
    }
    template <typename T>
    void DecisionTree<T>::build_tree(const std::vector<std::vector<T>> &train) {
      //  dictionary root=
        std::tuple<int, T, std::vector<std::vector<std::vector<T>>>> root=   get_split(train);
      int i=  std::get<0>(root);
      float f=std::get<1>(root);
      std::cout<<f<<std::endl;
        std::vector<std::vector<std::vector<T>>> v=std::get<2>(root);
     std::cout<< v.size()<<std::endl;
     std::cout<<v[0].size()<<std::endl;
     std::cout<<v[0][0].size()<<std::endl;
        binary_tree* node=new binary_tree;
        node->dict_=root;
        tree_=node;
         split(node,1);
         print_tree(node);

    }
    template <typename T>
    std::tuple<int,T,std::vector<std::vector<std::vector<T>>>>  DecisionTree<T>::get_split(
            const std::vector<std::vector<T>> &dataset) const {
          std::vector<T> values;
          for(auto a:dataset){
              values.emplace_back(a[feature_length_]);
          }
//          for(auto a:values){

  //                std::cout<< a<<"  ";

             // std::cout<<std::endl;
    //      }
          std::set<T> vals(values.cbegin(),values.cend());
          std::vector<T> class_values(vals.cbegin(),vals.cend());
          int b_index = 999;
          T b_value = (T)999.;
           T b_score = (T)999.;
        std::vector<std::vector<std::vector<T>>> b_groups(2);

        for(int index=0;index<feature_length_;++index){
               for(int row=0;row<dataset.size();row++){
                std::vector<std::vector<std::vector<T>>> groups=test_split(index,dataset[row][index],dataset);
                   T gini=gini_index(groups,class_values);
                   if(gini<b_score){
                       b_index=index;
                       b_value=dataset[row][index];
                       b_score=gini;
                       b_groups=groups;
                   }
               }
           }

         return std::make_tuple(b_index,b_value,b_groups);


    }
    //加载模型
    template <typename T>
    int DecisionTree<T>::load_model(const char *name) {
          std::fstream file(name,std::ios::in);
          if(!file.is_open()){
              fprintf(stderr,"open file fail:%s",name);
              return -1;
          }
          std::string line,cell;
          std::getline(file,line);
          std::stringstream line_stream(line);
          std::vector<int> vec;
          int count=0;
          while (std::getline(line_stream,cell,',')){
              vec.emplace_back(std::stoi(cell));
          }
          CHECK(vec.size()==2);
          max_depth_=vec[0];//最大深度
          min_size_=vec[1];//最小
          max_nodes_=(1<<max_depth_)-1;
          std::vector<row_element> rows(max_nodes_);
          if(typeid(float).name()== typeid(T).name()){
              while (std::getline(file,line)){
                  std::stringstream line_stream2(line);
                  std::vector<T> vec2;
                  while (std::getline(line_stream2,cell,',')){
                      vec2.emplace_back(std::stof(cell));
                  }
                  CHECK(vec2.size()==5);
                  rows[count]= std::make_tuple((int)vec2[0], (int)vec2[1], vec2[2], vec2[3], vec2[4]);
                  ++count;
              }
          }else{
              while (std::getline(file, line)) {
                  std::stringstream line_stream2(line);
                  std::vector<T> vec2;

                  while(std::getline(line_stream2, cell, ',')) {
                      vec2.emplace_back(std::stod(cell));
                  }

                  CHECK(vec2.size() == 5);
                  rows[count] = std::make_tuple((int)vec2[0], (int)vec2[1], vec2[2], vec2[3], vec[4]);
                  ++count;
              }

          }
          CHECK(max_nodes_==count);
          CHECK(std::get<0>(rows[0])!=-1);
          binary_tree* tmp=new binary_tree;
          std::vector<std::vector<std::vector<T>>> dump;
        tmp->dict_ = std::make_tuple(std::get<1>(rows[0]), std::get<2>(rows[0]), dump);
        tmp->class_value_left_ = std::get<3>(rows[0]);
        tmp->class_value_right_ = std::get<4>(rows[0]);
        tree_ = tmp;
        row_element_to_node(tmp, rows, max_nodes_, 0);

        file.close();
        return 0;

    }
    //删除决策数的节点
    template <typename T>
    void DecisionTree<T>::delete_node(DecisionTree<T>::binary_tree *node) {
        if(node->left_) delete_node(node->left_);
        if(node->right_) delete_node(node->right_);
        delete node;
    }
    //删除整个决策数
    template <typename T>
    void DecisionTree<T>::delete_tree() {
        delete_node(tree_);
    }


#endif //TLPL_ANN_H
