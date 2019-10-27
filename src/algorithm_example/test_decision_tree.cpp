//
// Created by wangbin on 2019/8/26.
//

#include "decision_tree.h"
#include <iostream>
#include <sstream>
#include <assert.h>
#include <glog/logging.h>
#include <vector>
template <typename T>
int read_txt_file(const char *name,std::vector<std::vector<T>>& data,const char seperator,const int rows,const int cols){
    if(typeid(float).name()!= typeid(T).name()){
        fprintf(stderr,"string convert to number only support float type\n");
        return -1;
    }
    std::ifstream fin(name,std::ios::in);
    if(!fin.is_open()){
        fprintf(stderr,"open file fail:%s\n",name);
        return -1;
    }
    std::string line,cell;
    int col_count=0,row_count=0;
    while(std::getline(fin,line)){
        col_count=0;
        ++row_count;
        std::stringstream line_stream(line);
        std::vector<T> vec;

        while (std::getline(line_stream,cell,seperator)){
            ++col_count;
            vec.emplace_back(std::stof(cell));
        }
        CHECK(cols==col_count);
        data.emplace_back(vec);

    }
    CHECK(rows==row_count);
    fin.close();
    return 0;

}
int train(){
 // .txt";
    const char *filename="/media/wangbin/36005E93005E59C7/tlpl/src/algorithm_example/data_banknote_authentication.txt";
    std::vector<std::vector<float>> data;
    read_txt_file(filename,data,',', 1372,5);
    const std::vector<float> classes={0.f,1.f};
    DecisionTree<float> dt;
    dt.init(data,classes);//
    dt.set_max_depth(6);
    dt.set_min_size(10);
    dt.train();

   const char *model_name="/media/wangbin/36005E93005E59C7/tlpl/src/algorithm_example/decision_tree.model";
   dt.save_model(model_name);
}
int test(){
    const char *model_name="/media/wangbin/36005E93005E59C7/tlpl/src/algorithm_example/decision_tree.model";
    DecisionTree<float> dt;
    dt.load_model(model_name);
    int max_depth=dt.get_max_depth();
    int min_size=dt.get_min_size();
    fprintf(stdout,"max_depth:%d,min_size:%d\n",
            max_depth,min_size);
    std::vector<std::vector<float>> test {{-2.5526,-7.3625,6.9255,-0.66811,1},
                                          {-4.5531,-12.5854,15.4417,-1.4983,1},
                                          {4.0948,-2.9674,2.3689,0.75429,0},
                                          {-1.0401,9.3987,0.85998,-5.3336,0},
                                          {1.0637,3.6957,-4.1594,-1.9379,1}};
    for (const auto& row : test) {
        float ret = dt.predict(row);
        fprintf(stdout, "predict result: %.1f, actual value: %.1f\n", ret, row[4]);
    }
    return 0;
}
int  main(int argc,char **argv){
    const char *filename="/media/wangbin/36005E93005E59C7/tlpl/src/algorithm_example/data_banknote_authentication.txt";

     train();
     test();
}
