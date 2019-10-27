/*
 * test_perceptron.cpp
 *
 *  Created on: 2019年10月7日
 *      Author: wangbin
 */


#include <iostream>

#include "perceptron.h"
using namespace std;
#define ORDER 7//B+的阶
#define MINNUM_KEY ((ORDER)-1) // 最小键值个数
#define MAXNUM_KEY (2*(ORDER)-1) //最大键值个数
#define MINNUM_CHILD ((MINNUM_KEY)+1) // 最小子树个数
#define MAXNUM_CHILD ((MAXNUM_KEY)+1) //最大子树个数
#define MINNUM_LEAF (MINNUM_KEY) // // 最小叶子结点键值个数
#define MAXNUM_LEAF (MAXNUM_KEY)// 最大叶子结点键值个数
int test_perceptron();
int main(int argc,char **argv){
	test_perceptron();
}
int test_perceptron(){
	const int len_data=20;
	const int feature_dimension=2;
	float data[len_data][feature_dimension]={
			{10.3f,10.7f},
			{20.1f,100.8f},
			{44.9f,8.0f},
			{-2.2f,15.3f},
			{-33.3f,77.7f},
			{-10.4f,111.1f},
			{99.3f,-2.2f},
			{222.2f,-5.5f},
			{10.1f,10.1f},
			{66.6f,30.2f},
			{0.1f,0.2f},
			{1.2f,0.03f},
			{0.5f,4.6f},
			{-22.3f,-11.1f},
			{-88.9f,-12.3f},
			{-333.3f,-444.4f},
			{-111.2f,0.5f},
			{-6.6f,2.9f},
			{3.3f,-100.2f},
			{5.6f,-88.8f}
	};
	int labels[len_data]={
	 1,1,1,1,1,1,1,1,1,1,
	 -1,-1,-1,-1,-1,-1,-1,-1,-1,-1
	};
	std::vector<feature> set_feature;
	std::vector<label> set_label;
	for(int i=0;i<len_data;i++){
		feature feature_single;
		for(int j=0;j<feature_dimension;j++){
			feature_single.push_back(data[i][j]);
		}
		set_feature.push_back(feature_single);
		set_label.push_back(labels[i]);
		feature_single.resize(0);
	}
    int iterates=1000;
    float learn_rate=0.5;
    int size_weight=feature_dimension;
    float bias=2.5;
    Perceptron perceptron(iterates,learn_rate,size_weight,bias);
    perceptron.getDataset(set_feature, set_label);
    bool flag=perceptron.train();
    if(flag){
    	std::cout<<"data set is linearly separable"<<std::endl;
    }else{
    	std::cout<<"data set is linearly inseparable" <<std::endl;
    	return -1;
    }
    feature feature1;
    feature1.push_back(636.6f);
    feature1.push_back(881.8f);
    std::cout << "the correct result label is 1, " << "the real result label is: " << perceptron.predict(feature1) << std::endl;

    	feature feature2;
    	feature2.push_back(-26.32);
    	feature2.push_back(-255.95);
    	std::cout << "the correct result label is -1, " << "the real result label is: " << perceptron.predict(feature2) << std::endl;

   std::cout<<MINNUM_CHILD;
		  return 0;
}

