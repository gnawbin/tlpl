//
// Created by wangbin on 2019/8/27.
//

#include <iostream>
#include <glog/logging.h>
#include <opencv2/opencv.hpp>
#include "kmeans.h"
using namespace std;
int main(int argc,char **argv){
  const string image_path("../../../src/algorithm_example/handwriting_0_and_1/");
  cv::Mat tmp=cv::imread(image_path+"0_1.jpg",0);
  CHECK(tmp.data!= nullptr&&tmp.channels()==1);
  const int samples_number{80},every_class_number{20},categories_number{samples_number/every_class_number};
  cv::Mat samples_data(samples_number,tmp.rows*tmp.cols,CV_32FC1);
  cv::Mat labels(samples_number,1,CV_32FC1);
  float *p1= reinterpret_cast<float*>(labels.data);


    for (int i = 1; i <= every_class_number; ++i) {
        static const std::vector<std::string> digit{ "0_", "1_", "2_", "3_" };
        CHECK(digit.size() == categories_number);
        static const std::string suffix{ ".jpg" };

        for (int j = 0; j < categories_number; ++j) {
            std::string image_name = image_path + digit[j] + std::to_string(i) + suffix;
            cv::Mat image = cv::imread(image_name, 0);
            CHECK(!image.empty() && image.channels() == 1);
            image.convertTo(image, CV_32FC1);

            image = image.reshape(0, 1);
            tmp = samples_data.rowRange((i - 1) * categories_number + j, (i - 1) * categories_number + j + 1);
            image.copyTo(tmp);

            p1[(i - 1) * categories_number + j] = j;
        }
    }

    std::vector<std::vector<float>> data(samples_data.rows);
    for (int i = 0; i < samples_data.rows; ++i) {
        data[i].resize(samples_data.cols);
        const float* p = (const float*)samples_data.ptr(i);
        memcpy(data[i].data(), p, sizeof(float)* samples_data.cols);
    }

    const int K{ 4 }, attemps{ 100 }, max_iter_count{ 100 };
    const double epsilon{ 0.001 };
    const int flags = cv::KMEANS_RANDOM_CENTERS;

    std::vector<int> best_labels;
    double compactness_measure{ 0. };
    std::vector<std::vector<float>> centers;

    kmeans<float>(data, K, best_labels, centers, compactness_measure, max_iter_count, epsilon, attemps, flags);
    fprintf(stdout, "K = %d, attemps = %d, iter count = %d, compactness measure =  %f\n",
            K, attemps, max_iter_count, compactness_measure);

    CHECK(best_labels.size() == samples_number);
    const auto* p2 = best_labels.data();
    for (int i = 1; i <= every_class_number; ++i) {
        for (int j = 0; j < categories_number; ++j) {
            fprintf(stdout, "  %d  ", *p2++);
        }
        fprintf(stdout, "\n");
    }

}