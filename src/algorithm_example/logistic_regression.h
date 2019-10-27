//
// Created by wangbin on 2019/8/31.
//

#ifndef LOGISTIC_REGRESSION_H
#define LOGISTIC_REGRESSION_H

#include <fstream>
#include <numeric>
#include <cmath>
#include <glog/logging.h>
#include <string>
#include <memory>
#include <vector>
#include <algorithm>
template<typename T>
class LogisticRegression{
public:
   LogisticRegression()= default;
    int init(const T* data, const T* labels, int train_num, int feature_length,
             int reg_kinds = -1, T learning_rate = 0.00001, int iterations = 10000, int train_method = 0, int mini_batch_size = 1);
    int train(const std::string& model);
    int load_model(const std::string& model);
    T predict(const T* data, int feature_length) const;
   enum RegKinds{
       REG_DISABLE=-1,// Regularization disabled
       REG_L1=0//L1 norm
   };
   enum Methods{
       BATCH=0,
       MINI_BATCH=1
   };

private:

    int store_model(const std::string& model) const;
    T norm(const std::vector<T>& v1,const std::vector<T>& v2) const;

    void batch_gradient_descent();
    void gradient_descent(const std::vector<std::vector<T>>& data_batch, const std::vector<T>& labels_batch, int length_batch);
    T calc_sigmoid(T x) const;
     void mini_batch_gradient_descent();
    std::vector<std::vector<T>> data_;
    std::vector<T> labels_;
    int iterations_=1000;
    int train_num_=0;
    int feature_length_=0;
    T learning_rate_=1e-4;
    std::vector<T> thetas_;
    T lambda_=(T)0.;
    int train_method_=0;
    int mini_batch_size_=1;

};
template <typename T>
T LogisticRegression<T>::predict(const T *data, int feature_length) const {
   // CHECK(feature_length_+1==thetas_.size());
   T value{(T)0.};
   for(int t=1;t<thetas_.size();++t){
       value+=data[t-1]*thetas_[t];

   }
   return (calc_sigmoid(value+thetas_[0]));
}
template<typename T>
int LogisticRegression<T>::load_model(const std::string &model) {
    std::ifstream file;
    file.open(model.c_str(),std::ios::binary);
    if (!file.is_open()) {
        fprintf(stderr, "open file fail: %s\n", model.c_str());
        return -1;
    }
    int length{0};
    file.read((char*)&length,sizeof(length));
    thetas_.resize(length);
    file.read((char*)thetas_.data(),sizeof(T)*thetas_.size());
    file.close();
    return 0;
}
template <typename T>
int LogisticRegression<T>::store_model(const std::string &model) const {
    std::ofstream file;
    file.open(model.c_str(),std::ios::binary);
     if(!file.is_open()){
         fprintf(stderr,"open file fail: %s\n",model.c_str());
         return -1;
     }
     int length=thetas_.size();
     file.write((char*)&length,sizeof(length));
     file.write((char*)thetas_.data(),sizeof(T)*thetas_.size());
     file.close();
     return 0;
}
template <typename T>
void LogisticRegression<T>::mini_batch_gradient_descent() {
    const int step=mini_batch_size_;
    const int iter_batch=(train_num_+step-1)/step;
    for(int i=0;i<iterations_;++i){
        int pos{0};
        for(int j=0;j<iter_batch;++j){
            std::vector<std::vector<T>> data_batch;
            std::vector<T> labels_batch;
            int remainder{0};
            if (pos + step < train_num_) remainder = step;
            else remainder = train_num_ - pos;

            data_batch.resize(remainder);
            labels_batch.resize(remainder, (T)0.);

            for (int t = 0; t < remainder; ++t) {
                data_batch[t].resize(thetas_.size(), (T)0.);
                for (int m = 0; m < thetas_.size(); ++m) {
                    data_batch[t][m] = data_[pos + t][m];
                }

                labels_batch[t] = labels_[pos + t];
            }

            gradient_descent(data_batch, labels_batch, remainder);

            pos += step;
        }
    }
}
template <typename T>
T LogisticRegression<T>::norm(const std::vector<T> &v1, const std::vector<T> &v2) const {
    CHECK(v1.size()==v2.size());
    T sum{0};
    for(int i=0;i<v1.size();++i){
        T minus=v1[i]-v2[i];
        sum+=(minus*minus);
    }
    return std::sqrt(sum);
}
template <typename T>
T LogisticRegression<T>::calc_sigmoid(T x) const {
    return ((T)1/((T)1+exp(-x)));
}
template <typename T>
void LogisticRegression<T>::batch_gradient_descent() {
    for(int i=0;i<iterations_;i++){
        gradient_descent(data_,labels_,train_num_);
    }
}
template <typename T>
void LogisticRegression<T>::gradient_descent(const std::vector<std::vector<T>> &data_batch,
                                             const std::vector<T> &labels_batch, int length_batch) {
    std::unique_ptr<T[]> z(new T[length_batch]), gradient(new T[this->thetas_.size()]);
    for (int j = 0; j < length_batch; ++j) {
        z.get()[j] = (T)0.;
        for (int t = 0; t < this->thetas_.size(); ++t) {
            z.get()[j] += data_batch[j][t] * thetas_[t];
        }
    }

    std::unique_ptr<T[]> pcal_a(new T[length_batch]), pcal_b(new T[length_batch]), pcal_ab(new T[length_batch]);
    for (int j = 0; j < length_batch; ++j) {
        pcal_a.get()[j] = calc_sigmoid(z.get()[j]) - labels_batch[j];
        pcal_b.get()[j] = data_batch[j][0]; // bias
        pcal_ab.get()[j] = pcal_a.get()[j] * pcal_b.get()[j];
    }

    gradient.get()[0] = ((T)1. / length_batch) * std::accumulate(pcal_ab.get(), pcal_ab.get() + length_batch, (T)0.); // bias

    for (int j = 1; j < thetas_.size(); ++j) {
        for (int t = 0; t < length_batch; ++t) {
            pcal_b.get()[t] = data_batch[t][j];
            pcal_ab.get()[t] = pcal_a.get()[t] * pcal_b.get()[t];
        }

        gradient.get()[j] = ((T)1. / length_batch) * std::accumulate(pcal_ab.get(), pcal_ab.get() + length_batch, (T)0.) +
                            (lambda_ / length_batch) * thetas_[j];
    }

    for (int i = 0; i < thetas_.size(); ++i) {
        thetas_[i] = thetas_[i] - learning_rate_ / length_batch * gradient.get()[i];
    }



}

template <typename T>
int LogisticRegression<T>::train(const std::string &model) {
    CHECK(data_.size()==labels_.size());
    if(train_method_==BATCH) batch_gradient_descent();
    else
        mini_batch_gradient_descent();
   CHECK(store_model(model)==0);
   return 0;

}


template <typename T>
int LogisticRegression<T>::init(const T *data, const T *labels, int train_num, int feature_length, int reg_kinds,
                                T learning_rate, int iterations, int train_method, int mini_batch_size) {

    if(train_num<2){
        fprintf(stderr,"logistic regression train sample num is too little: %d\n",train_num);
        return -1;
    }
    if(learning_rate<=0){
        fprintf(stderr,"learning rate must be greater 0:%f\n",learning_rate);
        return -1;
    }
    if(iterations<=0){
        fprintf(stderr,"number of iterations cann't be zero or a negative number: %d\n",iterations);
        return -1;
    }
    CHECK(reg_kinds==-1||reg_kinds==0);
    CHECK(train_method==0||train_method==1);
    CHECK(mini_batch_size>=1&&mini_batch_size<train_num);
    if(reg_kinds==REG_L1) lambda_=(T)1.;
    if(train_method==MINI_BATCH) train_method_=1;
    mini_batch_size_=mini_batch_size;
    learning_rate_=learning_rate;
    iterations_=iterations;
    train_num_=train_num;
    feature_length_=feature_length;
    data_.resize(train_num);
    labels_.resize(train_num);
    for(int i=0;i<train_num;i++){
        const T* p=data+i*feature_length_;
        data_[i].resize(feature_length_+1);
        data_[i][0]=(T)1;
        for(int j=0;j<feature_length_;j++){
            data_[i][j+1]=p[j];
        }
        labels_[i]=labels[i];

    }
    thetas_.resize(feature_length_+1,(T)0.);
    return 0;

}

template class LogisticRegression<float>;
template class LogisticRegression<double>;
#endif //TLPL_LOGISTIC_REGRESSION_H
