/*
 * json_example.cpp
 *
 *  Created on: 2019年10月24日
 *      Author: root
 */
#include <json/json.h>
#include <iostream>
#include <fstream>
#include <vector>
#include <string>
using namespace std;

int readJsonFromFile(const char *filename){
   Json::Reader reader;//解析json用Json::Reader
   Json::Value  root;//Json::Value是一种很重要的类型.
   std::ifstream is;
   if(reader.parse(is, root, false)){

   }


}

int main(int argc,char **argv){
	///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		/////////////////                                 json Value的新建及key的访问                  ///////////////////////////////
		////////////////////e///////////////////////////////////////////////////////////////////////////////////////////////////////

		cout<<"json Value的新建及key的访问"<<endl;
		//新建Json::Value对象
		Json::Value  value1;
		//给字段赋值,key必须为string形
		value1["name"]="english";
		std::cout<<value1<<std::endl;
		Json::Value  value2;
		value2["name"]="chinese";
		value2["score"]=80;
        value2["right"]=true;
        value2["percent"]=12.34567898;
        value2["count"]=23;
        std::cout<<value2<<std::endl;
       Json::Value valueArr;
       valueArr["name"]="json array";
       valueArr["object"]=value1;
       valueArr["array"].append("array_element_one");
       valueArr["array"].append("array_element_two");
       valueArr["array"].append("3333");
       valueArr["array"].append(value2);
       std::cout<<valueArr<<std::endl;
       //计算其中字段的个数
       cout<<"Size="<<valueArr.size()<<endl;
     std::vector<string> keyNames= valueArr.getMemberNames();
      for(auto k:keyNames){
    	  std::cout<<k<<std::endl;
      }

    if(valueArr.isMember("object")){
    	if(valueArr["object"].isObject()){
    		Json::Value object=valueArr["object"];
    		if(object.isMember("name")&&object["name"].isString()){
    			string name=object["name"].asString();
    			cout<<"valueArr[object] key=name,valuei"<<name.c_str()<<std::endl;
    		}
    	}
    }
   //访问字段"array"的值
    if(valueArr.isMember("array")&&valueArr["array"].isArray()){
    	Json::Value arrayObject=valueArr["array"];
    	std::cout<<arrayObject<<std::endl;
    	int array_size=arrayObject.size();
    	std::cout<<array_size<<std::endl;
    	//根据类型,逐个输出元素
    	for(int i=0;i<array_size;i++){
    		if(arrayObject[i].isObject()){
    			Json::Value object=arrayObject[i];
    			if(object.isMember("score")&&object["score"].isInt()){
    				 cout<<"valueArray[array]["<<i<<"]"<<"key=score,value="<<object["score"]<<std::endl;
    			}
    			if(object.isMember("percent")&&object["percent"].isDouble()){
    			    cout<<"valueArray[array]["<<i<<"]"<<"key=percent,value="<<object["percent"]<<std::endl;
    			 }
    		}else{
    			cout<<"valueArray[array]["<<i<<"]="<<arrayObject[i]<<endl;
    		}


    	}
    }
    cout<<endl;
    cout<<"把Json::Value转换成字符串"<<endl;
    cout<<valueArr.toStyledString()<<endl;
    cout<<endl;
    cout<<"从字符串中解析出json::value"<<endl;
    // 要解析的json字符串
    std::string strValue = "{\"key1\":\"value1\",\"array\":[{\"key2\":\"value2\"},{\"key2\":999},{\"key2\":\"value4\"}]}";
     Json::Value value3;
     Json::Reader reader;
     if(reader.parse(strValue, value3)){
    	 if(value3.isMember("key1")&&value3["key1"].isString()){
    		 cout<<"value3[key]="<<value3["key1"].asString()<<endl;
    	 }
    	 //字段array
    	 if(value3.isMember("array")&&value3["array"].isArray()){
    		  Json::Value valueArray=value3["array"];
    		  for(int i=0;i<valueArray.size();i++){
    			  if(valueArray[i].isObject()&&valueArray[i].isMember("key2")&&valueArray[i]["key2"].isString()){
    			     cout<<"value3[array]["<<i<<"][key2]"<<valueArray[i]["key2"]<<endl;
    			  }
    			  if(valueArray[i].isObject()&&valueArray[i].isMember("key2")&&valueArray[i]["key2"].isInt()){
    				  cout<<"value3[array]["<<i<<"][key2]"<<valueArray[i]["key2"]<<endl;
    			  }
    		  }
    	 }

     }
  cout<<"把json:Value写入到文件中"<<endl;
  ofstream ofs;
  ofs.open("/home/wangbin/test.json");
 // ofs<<valueArr.toStyledString();
 // Json::FastWriter fw;
  //ofs<<fw.write(valueArr)<<endl;
  Json::StyledWriter sw;
  ofs<<sw.write(valueArr)<<endl;
  ofs.close();
  //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  	///////////////////////////							从文件中读取json::Value							//////////////////////////////////////
  	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  	cout<<"从文件中读取到json:value"<<endl;
  	ifstream ifs;
  	ifs.open("/home/wangbin/test.json");

  	Json::Value value4;

  	Json::Reader jsonReader;
  	if (jsonReader.parse(ifs, value4))
  	{
  		// 得到字段的个数
  		cout<<"size = "<<value4.size()<<endl;

  		// 访问
  		if (valueArr.isMember("name") && valueArr["name"].isString())
  		{
  			cout<<"valueArr[name] = "<<valueArr["name"].asString()<<endl;
  		}
  	}

  	getchar();
  	return 0;
}

