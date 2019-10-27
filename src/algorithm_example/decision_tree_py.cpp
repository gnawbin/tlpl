/*
 * decision_tree_py.cpp
 *
 *  Created on: 2019年10月6日
 *      Author: root
 */


#include "decision_tree.h"
#include <python3.6m/Python.h>
#include <string>
#include <iostream>
void train(std::vector<std::vector<float>>& data,int max_depth,int min_size,std::string modelname);
void train(std::vector<std::vector<float>>& data,int max_depth,
		int min_size
		,std::string modelname){
	std::cout<<"train begin:"<<std::endl;
	 const std::vector<float> classes={0.f,1.f};
	     DecisionTree<float> dt;
	    dt.init(data,classes);//
	    dt.set_max_depth(max_depth);
	    dt.set_min_size(min_size);
	    dt.train();
	    dt.save_model(modelname.c_str());
	  std::cout<<"train end"<<std::endl;
}
void test(std::string modelName);
void test(std::string modelName){
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

PyObject*  ext_train(PyObject* self,PyObject* args)
{

}

int main(int argc,char ** argv){
	Py_Initialize();////初始化Python环境
	 //添加Insert模块路径
	 //PyRun_SimpleString(chdir_cmd.c_str());
	PyRun_SimpleString("import sys");
	PyRun_SimpleString("sys.path.append('/media/wangbin/36005E93005E59C7/tlpl/src/algorithm_example/')");
	  PyObject* pModule=PyImport_ImportModule("decision_tree_tree");
	    PyObject* read=PyObject_GetAttrString(pModule,"read_txt_file");
	    if(!pModule){
	    	printf("Python get decision_tree module failed\n");
	    	return 0;
	    }
	    printf("Python get decision_tree module successd!\n");
	    if(!read){
	    	printf(" not found read_txt_file\n");
	    	return 0;
	    }
	    printf(" found read_txt_file\n");
	PyObject *args=PyTuple_New(1);
	const char *filename="/media/wangbin/36005E93005E59C7/tlpl/src/algorithm_example/data_banknote_authentication.txt";
	   //  printf("size=%ld",strlen(filename));
	PyObject *arg11=PyBytes_FromStringAndSize(filename,strlen(filename));
	     PyTuple_SetItem(args,0,arg11);
	     PyObject* pRead=PyObject_CallObject(read,args);
	     std::vector<std::vector<float>> resultList;
	     if(pRead){
	    	 size_t rows=PyList_GET_SIZE(pRead);
	    	// printf("i=%ld\n",i);
	    	// PyObject  PyList_GetItem(PyObject list, Py_ssize_t index) ;
	    	 for(int i=0;i<rows;i++){
	    		 std::vector<float> temp;
	    		 PyObject* colsList=PyList_GetItem(pRead,i);
	    		 if(colsList){
	    			 size_t cols=PyList_GET_SIZE(colsList);
	    			 for(int j=0;j<cols;j++){
	    				 PyObject* data=PyList_GetItem(colsList,j);
	    				 float result1=PyFloat_AsDouble(data);
	    				 temp.push_back(result1);
	    			 }
	    		 }
	    		 resultList.push_back(temp);



	    	 }
	    	// for(auto a:resultList){
	    		// for(auto b:a){
	    			// std::cout<<b<<"  ";
	    		// }
	    		// std::cout<<std::endl;
	    	// }
	    	 train(resultList,6,10,"/media/wangbin/36005E93005E59C7/tlpl/src/algorithm_example/decision_tree.model");
	    	test("/media/wangbin/36005E93005E59C7/tlpl/src/algorithm_example/decision_tree.model");
	    	 //PyObject * result=PyList_GetSlice(pRead,1372,5);

	     }else{
	    	 printf("not found!\n");
	    	 return -1;
	     }


	    Py_Finalize();
	   // system("pause");
	    return 0;
}
