//
// Created by wangbin on 2019/9/7.
//

#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <errno.h>
#define Error(Str) FatalError(Str)
#define FatalError(Str) fprintf(stderr,"%s\n",Str),exit(1)
typedef  double  T;
void initVector(T *,int);
void initMatrix(T** ,int, int);
T *allocVector(int);
void initMatrix(T **,int ,int );
T**  allocMatrix(int ,int);
void freeVector(T *a);
void freeMatrix(T **,int ,int );
T** augmentMatrix(T **,int,int);
void printVector(T *,int);
void printMatrix(T**,int,int);
void swapRows(T **,int r1,int r2,int n,int m);
T**  multiplyMatrix(T**,int ,int ,T**,int ,int );
void scaleRow(T**,int ,int ,int ,T scale);
void addscaleRow(T **,int,int,int,int,T);
T* matrixToVect(T**,int n,int m);
T* matrixToVect(T** a,int n,int m){
    T* t=allocVector(n);
    if(m==1){
        for(int i=0;i<n;i++){

            t[i]=a[i][0];
        }
    }
    return t;

}
/**
 高斯消去法
**/
T* guassEle(T **,int ,int);
/**
 线性回归
**/
T**  linearRegression(T **,int,int ,T **,int,int);
//T** inverseMatrix(T**,int ,int);
/**
  逆矩阵,只有nxn型才有逆矩阵
**/

/**
 高斯消去法的扩展
  n为行数
  m为列数
 a为增广矩阵,
可用于求逆矩阵
**/
T** gaussElement(T** a,int n,int m){

    if(n<m){
        T** result =allocMatrix(n,m-n);
        int nrow[n];

        for(int i=0;i<n;i++){
            nrow[i]=i;
        }
        int p;
        int ncopy;
        T  t;
        for(int i=0;i<n-1;i++){
            p=i;
            for(int j=i;j<n;j++){
                if(fabs(a[nrow[p]][i])<fabs(a[nrow[j]][i])){

                    p=j;
                }

            }
            //  printf("a[%d][%d]=%lf\n",p,i,a[nrow[p]][i]);
            if(fabs(a[nrow[p]][i])-1e-16<0.0d){
                FatalError("no unique solution exists!");
            }
            if(nrow[i]!=nrow[p]){
                ncopy=nrow[i];
                nrow[i]=nrow[p];
                nrow[p]=ncopy;
            }

            for(int j=i+1;j<n;j++){
                t=a[nrow[j]][i]/a[nrow[i]][i];
//                  printf("%lf ",i,j,t);
                for(int k=0;k<m;k++){
                    a[nrow[j]][k]=a[nrow[j]][k]-t*a[nrow[i]][k];
                }

            }


        }
        if(fabs(a[nrow[n-1]][n-1])-1e-16<0.0d){

            FatalError("no unique solution exists");
        }
        //     for(int i=0;i<n;i++){
        //      for(int j=0;j<m;j++){

        // printf("a[%d][%d]=%lf\n ",i,j,a[i][j]);
        //        }

        // }
        for(int i=0;i<m-n;i++){
            result[n-1][i]=a[nrow[n-1]][n+i]/a[nrow[n-1]][n-1];
            for(int j=n-2;j>=0;j--){
                t=0.0d;
                for(int k=j+1;k<n;k++ ){
                    t+=a[nrow[j]][k]*result[k][i];
//                    printf("result[%d][%d]",j+1,n+i,result[k][i]);
                    //                printf("a[%d][%d]=%lf\n",nrow[j],k,a[nrow[j]][k]);
                }
                //              printf("t=%lf\n",t);
                result[j][i]=(a[nrow[j]][n+i]-t)/a[nrow[j]][j];
            }
        }

        return result;
    }else{

        FatalError("no unique solution exists");
    }
    return NULL;

}
/**
高斯消去法
算法：
 参考书籍:NUMerical analysis Richard L.Burden
  362页
  To solve the nxnlinear system
  input:
      number of unknowns an equations n;augmented matrix A=(aij) when 1<=i<=n and 1<=j<=n+1;
  output:
      solution x1,...xn or message that the linear system has no unique solution

**/
T* guassEle(T **a,int n,int m){
    T* result=allocVector(n);
    T* E;
    if(n!=m-1){
        FatalError("no unique solution exists");
    }
    int   nrow[n];//initialize row pointer
    for(int i=0;i<n;i++){
        nrow[i]=i;
    }
    int p;
    int ncopy;
    T t;
    for(int i=0;i<n-1;i++){
        p=i;

        for(int j=i;j<n;j++){
            if( fabs(a[nrow[p]][i]) <fabs(a[nrow[j]][i]))
            {
                p=j;
            }
        }
        if(fabs(a[nrow[p]][i])-1e-16<0.0d){
            FatalError("no unique solution exists!");

        }
        if(nrow[i]!=nrow[p]){
            ncopy=nrow[i];
            nrow[i]=nrow[p];
            nrow[p]=ncopy;
        }
        printf("%d,%d\n",i,p);
        for(int j=i+1;j<n;j++){
            // printf("a[%d][%d]=%lf  ",nrow[j],i,a[nrow[j]][i]);
            //   printf("a[%d][%d]=%lf  ",nrow[i],i,a[nrow[i]][i]);
            t=a[nrow[j]][i]/a[nrow[i]][i];
            //  printf("%lf\n",a[nrow[j]][i]/a[nrow[i]][i]);
            //  t=temp[nrow[j]][i];
            printf("temp[%d][%d]=%lf \n ",nrow[j],i,t);
            for(int k=0;k<m;k++){
                a[nrow[j]][k]=a[nrow[j]][k]-t*a[nrow[i]][k];
                //    printf("a[%d][%d]=%lf\n  ",nrow[j],k,a[nrow[j]][k]);
                //    printf("temp[%d][%d]=%lf\n ",nrow[j],i,temp[nrow[j]][i]);
                //  printf("%lf \n",a[nrow[j]][k]*temp[nrow[j]][i]);
            }

        }
    }
    //printf("abs(a[%d][%d])=%lf\n",n-1,n-1,abs(a[n-1][n-1])-1.0e-16);
//  printf("%lf\n",1.0e-16);
    if(fabs(a[n-1][n-1])-1.0e-16<0.0d){
        printf("no unique solution exists");
        return NULL;
    }
    result[n-1]=a[nrow[n-1]][m-1]/a[nrow[n-1]][n-1];

    for(int i=n-2;i>=0;i--){
        t=0.0d;
        for(int j=i+1;j<n;j++){
            t+=a[nrow[i]][j]*result[j];
        }
        result[i]=(a[nrow[i]][m-1]-t)/a[nrow[i]][i];
        //  printf("result[%d]=%lf\n",result[i]);
    }
    return result;
}

void addscaleRow(T **a,int n,int m,int r1,int r2,T scale){
    if(r1<=n&&r2<=n&&r1<=r2){
        T *p=allocVector(m);

        for(int i=0;i<m;i++){
            a[r1][i]=a[r1][i]+scale*a[r2][i];
        }
        p=a[r1];
        a[r1]=a[r2];
        a[r2]=p;

    }
}

void scaleRow(T** a,int n,int m,int r,T scale){
    if(r<=n){
        for(int i=0;i<m;i++){
            a[r][i]=scale*a[r][i];
        }
    }
}
/**
矩阵的乘法
**/
T** multiplyMatrix(T **a,int an,int am,T** b,int bn,int bm){
    T** resultMatrix;
    if(am==bn){
        resultMatrix=allocMatrix(an,bm);

        int i=0;
        int j=0;
        int k=0;

        for(i=0;i<an;i++){
            for(j=0;j<bm;j++){
                resultMatrix[i][j]=0.00;

                for(k=0;k<am;k++){

                    resultMatrix[i][j]+=a[i][k]*b[k][j];
                }

            }
        }
    }
    return resultMatrix;
}
/**
 矩阵行交换
**/
void swapRows(T **a,int r1,int r2,int n,int m){
    if(r1<=n&&r2<=n){
        T *p=allocVector(m) ;
        p=a[r1];
        a[r1]=a[r2];
        a[r2]=p;
    }

}
/**

**/
void initVector(T *a,int n){
    printf("请输入一个数组");
    for(int i=0;i<n;i++){
        scanf("%lf",&a[i]);
    }
}
T* allocVector(int n){ll
    T* tempVector;
    tempVector=(T *)malloc(sizeof(T)*n);
    return tempVector;

}
/**
给二维数组分配内存空间
**/
void  initMatrix(T** a,int n,int m){
    printf("请输入一个%d行%d列的二维数组!",n,m);
    for(int i=0;i<n;i++){
        for(int j=0;j<m;j++){

            scanf("%lf",&a[i][j]);
//     printf("a[%d][%d]=%lf\n",*(*(a+i)+j));
        }
        printf("\n");
    }

}
/**
 增广矩阵
**/
T** augmentMatrix(T **a,int n,int m)
{

    T *b=allocVector(n);
    printf("请输入一个大小为n的一维数组",n);
    initVector(b,n);
    // printVector(b,n);

    T **newMatrix=allocMatrix(n,m+1);
    for(int i=0;i<n;i++){
//        printf("b[%d]=%f  ",b[i]);
        newMatrix[i][m]=b[i];
        for(int j=0;j<m;j++){
            newMatrix[i][j]=a[i][j];
        }

    }

    freeVector(b);
    return newMatrix;
}
/*
增广矩阵的扩展

*/
T** augmentMatrix2(T **a,int an,int am,T **b,int bn,int bm){
    T **newMatrix=allocMatrix(an,an+bm);
    if(an==bn){
        for(int i=0;i<an;i++){
            for(int j=0;j<am+bm;j++){
                if(j<=am-1){
                    newMatrix[i][j]=a[i][j];
                }
                if(j>=am){
                    newMatrix[i][j]=b[i][j-am];
                }
            }

        }

        return newMatrix;
    }else{
        FatalError("两个矩阵的行数不一致!");
    }
}
T** allocMatrix(int n,int m){
    T **a;
    a=(T **)malloc(sizeof(T *) *n);//为二维数据分配x行数据
    for(int i=0;i<n;i++){
        *(a+i)=(T *)malloc(sizeof(T) *m);//为二维数组分配m列
    }
    // printf("请输入一个%d行%d列的二维数组!",n,m);

    return a;
}
/*
 显示矩阵
*/
void printMatrix(T **a,int n,int m){
    for(int i=0;i<n;i++){
        for(int j=0;j<m;j++){
            printf("%lf  ",a[i][j]);
        }
        printf("\n");
    }
}
void printVector(T *a,int n){
    for(int i=0;i<n;i++){
        printf("%lf  ",a[i]);
    }
}
void freeVector(T *a){

    free(a);
}
//释放内存
void freeMatrix(T **a,int n,int m){
    for(int i=0;i<n;i++){
        if(*(a+i)!=NULL){
            free(*(a+i));
        }
    }
    if(a!=NULL){
        free(a);
    }

}
/**
 矩阵转置
**/
T** transpose(T **a,int n,int m){
    T **transMatrix=allocMatrix(m,n);

    for(int i=0;i<m;i++){
        for(int j=0;j<n;j++){
            transMatrix[i][j]=a[j][i];
        }
    }
    return transMatrix;

}
int main(){
    int xn=3;
    int xm=7;

    T** X;
    /*
    高斯消去法
     x[0][0]= 2 x[0][1]= -3 x[0][2]= 1   x[0][3]=2 x[0][4]= 6 x[0][5]= 0 x[0][6]= -1
     x[1][0]= 1 x[1][0]= 1 x[1][2]=-1   x[1][3] =-1 x[1][4]= 4 x[1][5]= 1 x[1][6]= 0
     x[2][0]=-1 x[2][1]=1 ,x[2][2]=-3 x[2][3]=0 x[2][4]=5 x[2][5]=-3 x[2][6]=0
  */
    X=allocMatrix(xn,xm);
    initMatrix(X,xn,xm);
    printMatrix(X,xn,xm);
    printf("\n");
    T** result= gaussElement(X,xn,xm);
    printMatrix(result,xn,xm-xn);
    freeMatrix(result,xn,xm-xn);
    int na=3;
    int ma=2;
    int nb=3;
    int mb=1;
    /*
     A=[
          [1,1],
          [2,1],
          [3,1]
      ]
   B=[
        [1],
        [2],
   [2]
     ]
     */
    T** A=allocMatrix(na,ma);
    initMatrix(A,na,ma);
    T** B=allocMatrix(nb,mb);
    initMatrix(B,nb,mb);
    T** t1= linearRegression(A,na,ma,B,nb,mb);
    printf("%s\n","ddddddddddddddd");
    printMatrix(t1,ma,1);
}
/**int main(){
  int xn;
  int xm;
  printf("请输入矩阵X的 行数\n");
  scanf("%d",&xn);
  printf("请输入矩阵X的列数\n");
  scanf("%d",&xm);

//scanf("%d\n",&n);
// scanf("%d\n",&m);
//  printf("行=%d,列=%d\n",n,m);
  T**  X;
  X=allocMatrix(xn,xm);
  initMatrix(X,xn,xm);
  printf("矩阵X:\n");
  printMatrix(X,xn,xm);
  int yn;
  int ym;
  printf("请输入矩阵Y的行数\n");
  scanf("%d",&yn);
  printf("请输入矩阵Y的列数\n");
  scanf("%d",&ym);
  T** Y=allocMatrix(yn,ym); //n行一列
  initMatrix(Y,yn,ym);
  printf("矩阵Y:\n");
  printMatrix(Y,yn,ym);
// T** transX=allocMatrix(xm,xn);
  //  transX=transpose(X,xn,xm);
  // printf("X的转置矩阵:\n");
  // printMatrix(transX,xm,xn);
  // T** multiX=allocMatrix(xm,xm);
   // multiX=multiplyMatrix(transX,xm,xn,X,xn,xm);
  // printf("X的转置矩阵与X的乘积\n");
  // printMatrix(multiX,xm,xm);
  // T** multiXY=allocMatrix(xm,ym);
  // multiXY=multiplyMatrix(transX,xm,xn,Y,yn,ym);
  // printMatrix(multiXY,xm,ym);
  // T* vXY=matrixToVect(multiXY,xm,ym);
  // printVector(vXY,xm);
 // T**  agumentMatrix=allocMatrix(xm,xm+ym);
  //  agumentMatrix=augmentMatrix2(multiX,xm,xm,multiXY,xm,ym);
  //printf("增广矩阵!\n");
    // printMatrix(agumentMatrix,xm,xm+ym);
 // T* bm=guassEle(agumentMatrix,xm,xm+ym);
  // printf("高\n");
  // printVector(bm,xm);
    T** agumatrix=allocMatrix(xn,xm+ym);
    agumatrix=augmentMatrix2(X,xn,xm,Y,yn,ym);
   T* t=guassEle(agumatrix,xn,xm+ym);
   printVector(t,xn);

  // freeMatrix(multiXY,xm,ym);
  // freeVector(vXY);
   freeMatrix(X,xn,xm);
   freeMatrix(Y,yn,ym);
 //  freeMatrix(transX,xm,xn);
  // freeMatrix(multiX,xm,xm);
//   a=allocMatrix(n,m);
   // initMatrix(a,n,m);

  // printMatrix(a,n,m);

//  printf("转置矩阵");
 // T**  transMatrix=transpose(a,n,m);
 //  printMatrix(transMatrix,m,n);
  // printf("增广矩阵");
// T** aguMatrix=augmentMatrix(a,n,m);
  // printMatrix(aguMatrix,n,m+1);
   // swapRows(aguMatrix,1,2,n,m+1);
  // printMatrix(aguMatrix,n,m+1);
    // printf("矩阵相乘");
   // T** mulResult=allocMatrix(n,m+1);
   // mulResult=multiplyMatrix(a,n,m,aguMatrix,n,m+1);
  // printMatrix(mulResult,n,m+1);
     //scaleRow(mulResult,n,m+1,1,9.0);
//addscaleRow(mulResult,n,m+1,1,2,9.0);
  //   printMatrix(mulResult,n,m+1);
//T *result=    guassEle(aguMatrix,n,m+1);
  // printVector(result,n);

//  freeMatrix(a,n,m);
  // freeVector(result);
//   freeMatrix(b,bn,bm);
  // freeMatrix(transMatrix,m,n);
  printf("线性回归");
   int na=3;
   int ma=2;
   int nb=3;
   int mb=1;
  T** A=allocMatrix(na,ma);
  initMatrix(A,na,ma);
  T** B=allocMatrix(nb,mb);
  initMatrix(B,nb,mb);
 T* t1= linearRegression(A,na,ma,B,nb,mb);
  printVector(t1,ma);
return 0;
}**/
/**
 线性回归
**/
T** linearRegression(T** X,int na,int ma,T** Y,int nb,int mb ){
    T** transX=transpose(X,na,ma);
    printf("矩阵X:转置矩阵X");
    printMatrix(transX,ma,na);
    printf("X的转置矩阵与矩阵X的乘积");
    T** multiXX=allocMatrix(ma,ma);
    multiXX=multiplyMatrix(transX,ma,na,X,na,ma);
    printMatrix(multiXX,ma,ma);
    T** multiXY=allocMatrix(ma,mb);
    printf("X的转置矩阵与矩阵Y的乘积!");
    multiXY=multiplyMatrix(transX,ma,na,Y,nb,mb);
    //   printf("%d,%d\n",ma,mb);

    printMatrix(multiXY,ma,mb);

    T** agumentMatrix=allocMatrix(ma,ma+mb);
    agumentMatrix=augmentMatrix2(multiXX,ma,ma,multiXY,ma,mb);
    T** t=gaussElement(agumentMatrix,ma,ma+mb);
    return t;
}