//
// Created by wangbin on 2019/9/3.
//

#ifndef TLPL_LMS_H
#define TLPL_LMS_H

#include <stdio.h>
#define STOCHASTIC (0x01)  /* 随机梯度下降 */
#define BATCH       (0x02) /* BATCH梯度下降 */
static double init_y[] = {4.00,3.30,3.69,2.32};
static double init_x[] = {
        2.104,3,
        1.600,3,
        2.400,3,
        3.000,4
};
static double weight[2] = {0.1, 0.1};

struct lms_st{
    short method,/*0/1*/
    double *x;/*features, x0,....,x[n-1]*/
    int n;/*dimension of features*/
    double *y;/*given output,y0,....y[m-1*/
    int m;
    double *weight;
    double lrate;
    double threshhold;/* if error < threshold, stop iteration */
    int max_iter;  /* if iter numbers > max_iter, stop iteration,
	                       if max_iter<0, then max_iter is unused */
};

double lms(struct lms_st *lms_prob){
    double err;
    double error;
    int i=0;
    int j=0;
    int iter=0;
    static double *h=0;
    h=(double *)malloc(sizeof(double)*lms_prob->m);
    if(!h){
        return -1;
    }
    do{
        error=0;
        if(lms_prob->method!=STOCHASTIC){
            i=0;
        }else{
            i=i+1;
            if(i>=lms_prob->m){
                i=0;
            }
        }
        for(;i<lms_prob->m;i++){
            h[i]=0;
            for(j=0;j<lms_prob->n;j++){
                h[i]+=lms_prob->weight[j]*lms_prob->x[i*lms_prob->n+j];
            }
            if(lms_prob->method==STOCHASTIC)
                break;
        }
        for(j=0;j<lms_prob->n;j++){
            if(lms_prob->method!=STOCHASTIC){
                i=0;
            }
            for(;i<lms_prob->m;i++){
                err=lms_prob->lrate*(lms_prob->y[i]-h[i])*lms_prob->x[i*lms_prob->n+j];
                 lms_prob->weight[j]+=err;
                 error+=abs()
            }
        }
    }
}
#endif //TLPL_LMS_H
