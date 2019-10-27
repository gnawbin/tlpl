/*
 * example1.cpp
 *
 *  Created on: 2019年10月6日
 *      Author: root
 */
#include <python3.6/Python.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <vector>
#include <iostream>
long fac(int n){
	if(n<2)
		return 1;
	return n*fac(n-1);
}
char *reverse(char *s){
	register char t,
	*p=s,*q=(s+(strlen(s)-1));
	if(s&&(p<q)){
		t=*p;
		*p++=*q;
		*q--=t;
	}
	return s;
}
int test()
{
    char s[BUFSIZ];
    printf("4! == %d\n", fac(4));
    printf("8! == %d\n", fac(8));
    printf("12! == %d\n", fac(12));
    strcpy(s, "abcdef");
    printf("reversing 'abcdef', we get '%s'\n", \
        reverse(s));
    strcpy(s, "madam");
    printf("reversing 'madam', we get '%s'\n", \
        reverse(s));
    return 0;
}
static PyObject *Extest_fac(PyObject *self,PyObject *args){
	int num;
	if (!PyArg_ParseTuple(args, "i", &num)) {
		return NULL;
	}
	return (PyObject*)Py_BuildValue("i",fac(num));
}
static PyMethodDef ExtestMethods[]={
		{"fac",Extest_fac,METH_VARARGS}
};
void initExtest(){
///	Py_InitModule("Extest",ExtestMethods);
}
int main(int argc,char **argv){
	Py_Initialize();////初始化Python环境
	 //添加Insert模块路径
	 //PyRun_SimpleString(chdir_cmd.c_str());
	PyRun_SimpleString("import sys");
	PyRun_SimpleString("sys.path.append('/media/wangbin/36005E93005E59C7/tlpl/src/algorithm_example/')");
	//导入模块
	PyObject* pModule=PyImport_ImportModule("mytest");
	if(!pModule){
		printf("Python get module failed\n");
		return 0;
	}
	printf("Python get module succeed!\n");

	PyObject* pFunc=NULL;
	pFunc=PyObject_GetAttrString(pModule,"Hello");
	PyEval_CallObject(pFunc,NULL);

	PyObject* pv=PyObject_GetAttrString(pModule,"_add");
	if(!pv||!PyCallable_Check(pv)){
		printf("Can't find function(_add)");
		return 0;
	}
    printf("Get function (_add) succeed");
    PyObject* args=PyTuple_New(2);
    PyObject* arg1=PyLong_FromLong(4);
    PyObject* arg2=PyLong_FromLong(4);
    PyTuple_SetItem(args,0,arg1);
    PyTuple_SetItem(args,1,arg2);
    PyObject* pRet=PyObject_CallObject(pv,args);
    if(pRet){
    	long result=PyLong_AsLong(pRet);
    	printf("result:%ld",result);
    }
    printf("\n");
    pModule=PyImport_ImportModule("decision_tree_tree");
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

    args=PyTuple_New(1);
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
    	 for(auto a:resultList){
    		 for(auto b:a){
    			 std::cout<<b<<"  ";
    		 }
    		 std::cout<<std::endl;
    	 }
    	 //PyObject * result=PyList_GetSlice(pRead,1372,5);

     }else{
    	 printf("not found!\n");
     }


    Py_Finalize();
   // system("pause");
    return 0;

	//char s[20];
	//strcpy(s,"abedf");
	//printf("%ld\n",fac(5));
    //printf("%s\n",reverse(s));
//test();


}



