//
// Created by wanbin on 2019/9/12.
//
#include <iostream>
#include <string>
#include <vector>
#include <random>
using namespace std;
void permutationcore(string &s,int index,vector<string> str){

}
std::vector<std::string> split(std::string str,std::string pattern);
//有1分，2分，5分，10分四种硬币，每种硬币数量无限，给定n分钱(n <= 100000)，有多少中组合可以组成n分钱？
int countFen(int n){
    int x;
    int y;
    int z;
    int a;
  int sum=0;
  int count=0;
  for(int i=0;i<=n;i++){
      for(int j=0;j<=(n/2);j++){
          for(int k=0;k<=(n/5);k++){
              for(int l=0;l<=(n/10);l++){
                  if((i*j*2+5*k+l*10)==n){
                      count++;
                  }
              }
          }
      }
  }
  return count;
}
int main(int argc,char **argv){
   /** std::string str;
    std::cout<<"Please input str:"<<std::endl;
    //std::cin>>str;
    getline(std::cin,str);
    std::string pattern;
    std::cout<<"Please input pattern:"<<std::endl;
    //std::cin>>pattern;
    getline(std::cin,pattern);//用于获取含空格的字符串
    std::vector<std::string> result=split(str,pattern);
    std::cout<<"The result:"<<std::endl;
    for(int i=0; i<result.size(); i++)
    {
        std::cout<<result[i]<<std::endl;
    }
    std::vector<std::string>::reverse_iterator iterator;
    std::string newString="";
    for(iterator=result.rbegin();iterator!=result.rend();iterator++){
        newString+=*iterator+" ";
    }
    std::cout<<newString<<std::endl;
    std::cin.get();
    std::cin.get();
    int n;
    std::cin>>n;
   std::cout<<countFen(n)<<std::endl;
    return 0;**/
    std::string s="ABCDE";
 // const char* c_string=  s.c_str();
  //for(int i=0;i<s.length();i++){
 //     std::cout<<c_string[i]<<std::endl;
  //}
  cout<<"输入字符串个数"<<endl;
  int n;
  std::cin>>n;
  int num=1;
  while (n>0){
     num=num*n;
     n--;
  }
  std::vector<string> strs;
  strs.resize(num);
  for(auto str:strs){
      cin>>str;
  }
  for(auto str:strs){
      cout<<str<<endl;
  }
}
std::vector<std::string> split(std::string str,std::string pattern){
    std::string::size_type  pos;
    std::vector<std::string> result;
    str+=pattern;
    int size=str.size();
    for(int i=0;i<size;i++){
        pos=str.find(pattern,i);
        if(pos<size){
            std::string s=str.substr(i,pos-i);
            result.push_back(s);
            i=pos+pattern.size()-1;
        }
    }
    return result;
}