/*
 * perception.h
 *
 *  Created on: 2019年10月7日
 *      Author: wangbin
 */

#ifndef _PERCEPTION_H_
#define _PERCEPTION_H_
#include <vector>
#include <glog/logging.h>
#include <time.h>
#include <iostream>
typedef std::vector<float> feature;
typedef int label;
class Perceptron{
private:
	std::vector<feature> feature_set_;
    std::vector<label> label_set_;
    int iterates_;//迭代次数
    float learn_rate_;//学习率
    std::vector<float> weight_;//权重
    int size_weight_;
    float bias_;//偏置
    void initWeight();
    float calDotProduct(const feature feature_,const std::vector<float> weight_);
    void updateWeight(const feature feature_,int label_);
public:
    Perceptron(int iterates,float learn_rate,int size_weight,float bias);
    void getDataset(const std::vector<feature> feature_set,const std::vector<label> label_set);
    bool train();
    label predict(const feature features);
};
Perceptron::Perceptron(int iterates,float learn_rate,int size_weight,float bias)
:iterates_(iterates),
 learn_rate_(learn_rate),
 size_weight_(size_weight),
 bias_(bias){
	weight_.resize(0);
	feature_set_.resize(0);
	label_set_.resize(0);

}

void Perceptron::updateWeight(const feature feature_, int label_)
{
	for(int i=0;i<size_weight_;i++){
		weight_[i]+=learn_rate_*feature_[i]*label_;
	}
	bias_+=learn_rate_*label_;

}
float Perceptron::calDotProduct(const feature feature_,const std::vector<float> weight_){
	CHECK(feature_.size()==weight_.size());
	float ret=0;
	for(int i=0;i<feature_.size();i++){
		ret+=feature_[i]*weight_[i];
	}
	return ret;
}
void Perceptron::initWeight(){
	srand(time(0));
	float range=100.0;
	for(int i=0;i<size_weight_;i++){
		float tmp=range*rand()/(RAND_MAX+1.0);
		weight_.push_back(tmp);
	}
}
void Perceptron::getDataset(const std::vector<feature> feature_set,const std::vector<label> label_set){
	CHECK(feature_set.size()==label_set.size());
	for(int i=0;i<feature_set.size();i++){

		feature_set_.push_back(feature_set[i]);
		label_set_.push_back(label_set[i]);
	}
}
bool Perceptron::train(){
	initWeight();
	for(int i=0;i<iterates_;i++){
		bool flag=true;
		for(int j=0;j<feature_set_.size();j++){
			float tmp=calDotProduct(feature_set_[j],weight_)+bias_;
			if(tmp*label_set_[j]<=0){
				updateWeight(feature_set_[j],label_set_[j]);
				flag=false;
			}
		}
		if(flag){
			std::cout<<"iterate: "<<i<<std::endl;
			std::cout<<"weight: ";
			for(int m=0;m<size_weight_;m++){
				std::cout<<weight_[m]<< "  ";
			}
			std::cout<<std::endl;
			std::cout<<"bias: "<<bias_<<std::endl;
			return true;
		}
	}
	return false;

}
label Perceptron::predict(const feature features){
	CHECK(features.size()==size_weight_);
	return calDotProduct(features,weight_)+bias_>=0?1:-1;
}
#endif /* SRC_ALGORITHM_EXAMPLE_PERCEPTION_H_ */
