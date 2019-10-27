//
// Created by wangbin on 2019/8/31.
//

#include "logistic_regression.h"
#include <iostream>
#include <opencv2/opencv.hpp>
using namespace std;
int test_logistic_regression_train(){
    const std::string image_path("../../../src/algorithm_example/handwriting_0_and_1/");
    cv::Mat data,labels;
    for(int i=1;i<11;++i){
        const std::vector<std::string> label{"0_","1_"};
        for(const auto&value: label){
            std::string name=std::to_string(i);
            name=image_path+value+name+".jpg";
            cv::Mat image=cv::imread(name,0);
            if(image.empty()){
                fprintf(stderr,"read image fail: %s\n",name.c_str());
                return -1;
            }
            data.push_back(image.reshape(0,1));
        }
    }
    data.convertTo(data,CV_32F);
    std::unique_ptr<float[]> tmp(new float[20]);
    for(int i=0;i<20;i++){
        if(i%2==0)
            tmp[i]=0.f;
        else
            tmp[i]=1.f;
    }
    labels=cv::Mat(20,1,CV_32FC1,tmp.get());
    LogisticRegression<float> lr;
    const float learning_rate=1e-4;
    const int iteration=250;
    int reg_kinds=lr.REG_DISABLE;
    int train_method=lr.MINI_BATCH;
    int mini_batch_size=5;
    int ret=lr.init((float*)data.data,(float*)labels.data,data.rows,data.cols);
    if(ret!=0){
        fprintf(stderr, "logistic regression init fail: %d\n", ret);
        return -1;
    }
    const std::string model("../../../src/algorithm_example/logistic_regression.model");
    ret=lr.train(model);
    if(ret!=0){
        fprintf(stderr,"logistic regression train fail: %d\n",ret);
        return -1;

    }
    return 0;

}

int test_logistic_regression_predict()
{
    const std::string image_path{ "../../../src/algorithm_example/handwriting_0_and_1/" };
    cv::Mat data, labels, result;

    for (int i = 11; i < 21; ++i) {
        const std::vector<std::string> label{ "0_", "1_" };

        for (const auto& value : label) {
            std::string name = std::to_string(i);
            name = image_path + value + name + ".jpg";

            cv::Mat image = cv::imread(name, 0);
            if (image.empty()) {
                fprintf(stderr, "read image fail: %s\n", name.c_str());
                return -1;
            }

            data.push_back(image.reshape(0, 1));
        }
    }
    data.convertTo(data, CV_32F);

    std::unique_ptr<int[]> tmp(new int[20]);
    for (int i = 0; i < 20; ++i) {
        if (i % 2 == 0) tmp[i] = 0;
        else tmp[i] = 1;
    }
    labels = cv::Mat(20, 1, CV_32SC1, tmp.get());

    CHECK(data.rows == labels.rows);

    const std::string model{ "../../../src/algorithm_example/logistic_regression.model" };

    LogisticRegression<float> lr;
    int ret = lr.load_model(model);
    if (ret != 0) {
        fprintf(stderr, "load logistic regression model fail: %d\n", ret);
        return -1;
    }

    for (int i = 0; i < data.rows; ++i) {
        float probability = lr.predict((float*)(data.row(i).data), data.cols);

        fprintf(stdout, "probability: %.6f, ", probability);
        if (probability > 0.5) fprintf(stdout, "predict result: 1, ");
        else fprintf(stdout, "predict result: 0, ");
        fprintf(stdout, "actual result: %d\n", ((int*)(labels.row(i).data))[0]);
    }

    return 0;
}

int main(int argc,char **argv){
    test_logistic_regression_train();
    test_logistic_regression_predict();
}