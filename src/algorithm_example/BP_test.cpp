//
// Created by wangbin on 2019/8/31.
//

#include "BP.h"
#include <iostream>
#include <opencv2/opencv.hpp>
int test_BP();
int main(int argc,char **argv){
    test_BP();
}
int test_BP(){
    BP bp1;
    bp1.init();
    bp1.train();
}