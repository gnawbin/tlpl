/*
 * decision_tree_jni.cpp
 *
 *  Created on: 2019年9月24日
 *      Author: wangbin
 */

#include "decision_tree_jni.h"

static void train(std::vector<std::vector<float>> data,std::vector<float> classes,int max_depth,
		int min_size
		,std::string modelname){
	     DecisionTree<float> dt;
	    dt.init(data,classes);//
	    dt.set_max_depth(6);
	    dt.set_min_size(10);
	    dt.train();
	    dt.save_model(modelname.c_str());
}
static void test(std::string modelName){
	   DecisionTree<float> dt;
	    dt.load_model(modelName.c_str());
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

}

