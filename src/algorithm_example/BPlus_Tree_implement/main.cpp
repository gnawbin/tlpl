//
// Created by wangbin on 2019/8/29.
//

#include <iostream>
#include <map>
#include <vector>
#include <algorithm>
using namespace std;
struct Interval{
    int start_;
    int end_;
    Interval(int start,int end ):start_(start),
    end_(end){
        int temp;
        if(start_>end_){
            temp=start_;
            start_=end_;
            end_=temp;
        }
    }
};
vector<Interval> insert(vector<Interval>& intervals,Interval newInterval){
    //int max=intervals.size();
    vector<Interval> result;
    for(int i=0;i<intervals.size();i++){

    }
    int min=newInterval.start_;
    int max=newInterval.end_;
    for(auto a:intervals){
        if(a.end_<newInterval.start_||a.start_>newInterval.end_){
            result.push_back(a);
        }
        else{
            if(min>a.start_){
                min=a.start_;
            }
            if(max<a.end_){
                max=a.end_;
            }
        }
    }
    result.push_back(Interval(min,max));
    for(auto a:result){
        cout<<a.start_<<","<<a.end_<<endl;
    }
    return  vector<Interval>();

}
static vector<int> twoSum(vector<int> &number,int target){
    multimap<int,int> num;
    vector<int> result;
    multimap<int,int >::iterator it;
    int i=0;
    for(auto v:number) {
        num.insert(pair<int, int>(v, i));
        ++i;
    }
    for(it=num.begin();it!=num.end();it++){
        cout<<it->first<<","<<it->second<<endl;
    }
    for(it=num.begin();it!=num.end();it++){
        if(num.find(target-it->first)!=num.end()&&num.find(target-it->first)->second!=it->second){
            result.push_back(it->second);
            result.push_back(num.find(target-it->first)->second);
            std::sort(result.begin(),result.end());
        }
    }
  //  for(auto v:result){
      //  cout<<v<<endl;
    //}
    return result;
}
int main(int argc,char **argv){
 vector<int> v{3,5,6,7,9,12};
 //twoSum(v,16);
 vector<Interval> intervals{Interval(1,2),
                            Interval(6,7),
                            Interval(3,5),
                            Interval(12,16),
                            Interval(8,10)};
 insert(intervals,Interval(2,8));

}