/*
 * testpy.cpp
 *
 *  Created on: 2019年10月6日
 *      Author: wangbin
 */
#include <iostream>
#include <vector>
struct Point{
	float p_x;
	float p_y;
	float p_z;
}point;
struct Pose{
	float x;
	float y;
	float z;
	int* data;
	Point location;
} ;
class MyTest{
public:
	MyTest();
	~MyTest();
	int myTest(int* myData,int dataNum,Pose& myPose);
};
MyTest::MyTest(){}
MyTest::~MyTest(){}
int MyTest::myTest(int* myData,int dataNum,Pose& mypose){
	if(dataNum>0){
		for(size_t i=0;i<dataNum;i++){
			*myData=i+2;
			myData+=1;
		}
	}
	mypose.x=1.0;
	mypose.y=2.0;
	mypose.z=3.0;
	mypose.location.p_x=4.0;
	mypose.location.p_y=5.0;
	mypose.location.p_z=6.0;
	if(dataNum>0){
		for(size_t i=0;i<dataNum;i++){
			*(mypose.data)=i+2;
			mypose.data+=1;
		}
	}
	return 0;
}
extern "C"{
 MyTest myObj;
 int myTest(int* myData,int dataNum,Pose& mypose){
	 return myObj.myTest(myData, dataNum, mypose);
 }
}



