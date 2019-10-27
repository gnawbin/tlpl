//
// Created by wangbin on 2019/8/31.
//

#ifndef BP_H
#define BP_H

#include <string.h>
#include <stdio.h>
#include <assert.h>
#include <fstream>
#include <iostream>
#include <math.h>
#include <stdlib.h>
#include <glog/logging.h>
#include <random>
#define num_node_input_BP 784 //输入层节点数
#define width_image_BP 28 //归一化图像
#define height_image_BP 28  //归一化图像
#define num_node_hidden_BP	120 //隐含层节点数
#define num_node_output_BP	10 //输出层节点数
#define alpha_learning_BP	0.8 //输出层至隐含层学习率
#define beta_learning_BP	0.6 //隐含层至输入层学习率
#define patterns_train_BP	60000 //训练模式对数(总数)
#define patterns_test_BP	10000 //测试模式对数(总数)
#define iterations_BP		10000 //最大训练次数
#define accuracy_rate_BP	0.965 //要求达到的准确率
static int reverseInt(int i);

static void readMnistLabels(std::string filename, int* data_dst, int num_image);
static void readMnistImages(std::string filename, int* data_dst, int num_image);
class BP{
public:
    BP();
    ~BP();
   void init();//初始化，分配空间
   bool train();//訓練

protected:
    float test();////训练完一次计算一次准确率
    void release();///释放申请的空间
    bool getSrcData();// //读取MNIST数据
    bool initWeightThreshold(); //初始化，产生[-1, 1]之间的随机小数
    void calcHiddenLayer(const int* data); //计算隐含层输出
    void calcOutputLayer(); //计算输出层输出
    float calcActivationFunction(float x); //计算激活函数，对数S形函数
    bool saveModelFile(const char *name);

private:
    float wight1[num_node_input_BP][num_node_hidden_BP];//输入层至隐含层连接权值
    float wight2[num_node_hidden_BP][num_node_output_BP];///隐含层至输出层连接权值
    float threshold1[num_node_hidden_BP];////隐含层阈值
    float threshold2[num_node_output_BP];//输出层阈值
    float output_hiddenLayer[num_node_hidden_BP]; //顺传播，隐含层输出值
    float output_outputLayer[num_node_output_BP];//顺传播，输出层输出值
    float adjust_error_outputLayer[num_node_output_BP]; //逆传播，输出层校正误差
    float adjust_error_hiddenLayer[num_node_hidden_BP]; //逆传播，隐含层校正误差

    int* data_input_train;// //原始标准输入数据，训练
    int* data_output_train;////原始标准期望结果，训练
    int* data_input_test;//原始标准输入数据，测试
    int* data_output_test; //原始标准期望结果，测试
};
BP::BP():data_input_train(nullptr),
data_input_test(nullptr),data_output_train(nullptr),
data_output_test(nullptr){}
BP::~BP(){
    release();
}
void BP::calcHiddenLayer(const int *data) {
    for(int i=0;i<num_node_hidden_BP;i++){
        float tmp=0;
        for(int j=0;j<num_node_input_BP;j++){
            tmp+=data[j]*wight1[j][i];
        }
        tmp-=threshold1[i];
        output_hiddenLayer[i]=calcActivationFunction(tmp);
    }
}
void BP::calcOutputLayer() {
    for(int i=0;i<num_node_output_BP;i++){
        float tmp=0;
        for(int j=0;j<num_node_hidden_BP;j++){
            tmp+=output_hiddenLayer[j]*wight2[j][i];
        }
        tmp-=threshold2[i];
        output_outputLayer[i]=calcActivationFunction(tmp);

    }

}

bool BP::saveModelFile(const char *name) {
    FILE* fp=fopen(name,"wb");
    if(fp==NULL){
        return false;
    }
    int num_node_input=num_node_input_BP;//784
    int num_node_hidden=num_node_hidden_BP; //120
    int num_node_output=num_node_output_BP;//10
    fwrite(&num_node_input,sizeof(int),1,fp);
    fwrite(&num_node_hidden,sizeof(int),1,fp);
    fwrite(&num_node_output,sizeof(int),1,fp);
    fwrite(wight1,sizeof(wight1),1,fp);
    fwrite(threshold1,sizeof(threshold1),1,fp);
    fwrite(wight2,sizeof(wight2),1,fp);
    fwrite(threshold2,sizeof(threshold2),1,fp);
    fflush(fp);
    fclose(fp);
    return true;
}
void BP::release(){
    if(data_input_train){
        delete [] data_input_train;
    }
    if(data_output_train){
        delete [] data_output_train;
    }
    if(data_input_test){
        delete[] data_input_test;
    }
    if(data_output_test){
        delete[] data_output_test;
    }
}
float BP::calcActivationFunction(float x) {
    return 1.0/(1.0+exp(-x));
}
bool BP::train() {
    int i=0;
    for(i=0;i<iterations_BP;i++){
        std::cout<<"iterations: "<<i<<std::endl;
        float accuracyRate=test();
        std::cout<<accuracyRate<<std::endl;
        if(accuracyRate>accuracy_rate_BP){
             saveModelFile("../../../src/algorithm_example/bp.model");
             std::cout << "generate bp model" << std::endl;
            break;
        }
        for(int j=0;j<patterns_train_BP;j++){
            int* p1=data_input_train+j*num_node_input_BP;
            calcHiddenLayer(p1);;
            calcOutputLayer();
            int* p2=data_output_train+j*num_node_output_BP;

        }
    }
    return true;
}
void BP::init() {
    data_input_train=new int[patterns_train_BP*num_node_input_BP];
    memset(data_input_train,0,sizeof(int)*patterns_train_BP*num_node_input_BP);
    data_output_train=new int[patterns_train_BP*num_node_output_BP];
    memset(data_output_train,0,sizeof(int)*patterns_train_BP*num_node_output_BP);
    data_input_test=new int[patterns_test_BP*num_node_input_BP];
    memset(data_input_test,0,sizeof(int)*patterns_test_BP*num_node_input_BP);
    data_output_test=new int[patterns_test_BP*num_node_output_BP];
    memset(data_output_test,0,sizeof(int)*patterns_test_BP*num_node_output_BP);
    initWeightThreshold();
    getSrcData();
}
float BP::test() {
    int count_accuracy=0;
    for(int num=0;num<patterns_test_BP;num++){
        int* p1=data_input_test+num*num_node_input_BP;
        calcHiddenLayer(p1);
        calcOutputLayer();
        float max_value=-9999;
        int pos=-1;
        for(int i=0;i<num_node_output_BP;i++){
            if(output_outputLayer[i]>max_value){
                max_value=output_outputLayer[i];
                pos=i;
            }
        }
        int *p2=data_output_test+num*num_node_output_BP;
        if(p2[pos]==1){
            count_accuracy++;
        }
        usleep(1);
    }
    return (count_accuracy*1.0/patterns_test_BP);
}
bool BP::initWeightThreshold() {
    srand(time(0)+rand());
    for(int i=0;i<num_node_input_BP;i++){
        for(int j=0;j<num_node_hidden_BP;j++){
            wight1[i][j]=-1+2*((float)rand())/RAND_MAX;
        }
    }
    for(int i=0;i<num_node_hidden_BP;i++){
        for(int j=0;j<num_node_output_BP;j++){
            wight2[i][j]=-1+2*((float)rand())/RAND_MAX;
        }
    }
    for(int i=0;i<num_node_hidden_BP;i++){
        threshold1[i]=-1+2*((float)rand())/RAND_MAX;
    }
    for(int i=0;i<num_node_output_BP;i++){
        threshold2[i]=-1+2*((float)rand())/RAND_MAX;
    }
    return true;
}

static int reverseInt(int i){
    unsigned  char ch1,ch2,ch3,ch4;
    ch1=i&255;
    ch2=(i>>8)&255;
    ch3=(i>>16)&255;
    ch4=(i>>24)&255;
    return ((int)ch1<<24)+((int)ch2<<16)+((int)ch3<<8)+ch4;

}
static void readMnistImages(std::string filename,int* data_dst,int num_image){
    std::ifstream file(filename,std::ios::binary);
    assert(file.is_open());
    int magic_number=0;
    int number_of_images=0;
    int n_rows=0,n_cols=0;
    file.read((char*)&magic_number,sizeof(magic_number));
    magic_number=reverseInt(magic_number);
    std::cout<<"magic_number="<<magic_number<<std::endl;
    file.read((char*)&number_of_images,sizeof(number_of_images));
    number_of_images=reverseInt(number_of_images);
    std::cout<<"number_of_images="<<number_of_images<<std::endl;
    CHECK(number_of_images==num_image);
    file.read((char*)&n_rows,sizeof(n_rows));
    n_rows=reverseInt(n_rows);
    std::cout<<"n_rows="<<n_rows<<std::endl;
    file.read((char*)&n_cols,sizeof(n_cols));
    n_cols=reverseInt(n_cols);

    CHECK(n_rows==height_image_BP&&n_cols==width_image_BP);
    for(int i=0;i<number_of_images;++i){
        for(int r=0;r<n_rows;++r){
            for(int c=0;c<n_cols;++c){
                unsigned  char temp=0;
                file.read((char*)&temp, sizeof(temp));
                if(temp>128){
                    data_dst[i*num_node_input_BP+r*n_cols+c]=1;

                }else{
                    data_dst[i*num_node_input_BP+r*n_cols+c]=0;
                }
            }
        }
    }
}
static void readMnistLabels(std::string filename,int* data_dst,
        int num_image){
    std::ifstream file(filename,std::ios::binary);
    CHECK(file.is_open());
    int magic_number=0;
    int number_of_images=0;
    file.read((char*)&magic_number,sizeof(magic_number));
    magic_number=reverseInt(magic_number);
    file.read((char*)&number_of_images,sizeof(number_of_images));
    number_of_images=reverseInt(number_of_images);
    CHECK(number_of_images==num_image);
    for(int i=0;i<number_of_images;++i){
        unsigned  char temp=0;
        file.read((char*)&temp,sizeof(temp));
        data_dst[i*num_node_output_BP+temp]=1;
    }
}
bool BP::getSrcData() {
    assert(data_input_train&&data_output_train&&data_input_test&&data_output_test);
    const std::string dir="/media/wangbin/821135e8-8cf9-4713-b217-b4c0c9df87952/workspace/MNIST_data";
    std::string filename_train_image=dir+"/train-images-idx3-ubyte";
    std::string filename_train_labels=dir+"/train-labels-idx1-ubyte";
    readMnistImages(filename_train_image,data_input_train,patterns_train_BP );
    readMnistLabels(filename_train_labels,data_output_train,patterns_train_BP);
    std::string filename_test_images=dir+"/t10k-images-idx3-ubyte";
    std::string filename_test_labels=dir+"/t10k-labels-idx1-ubyte";
    readMnistImages(filename_test_images, data_input_test, patterns_test_BP);
    readMnistLabels(filename_test_labels, data_output_test, patterns_test_BP);
    return true;
}
#endif //TLPL_BP_H
