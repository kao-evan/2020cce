# 2020cce

#第二週

## 第一題 使用座標 *p,把變數 n1的值改掉
```C
#include <stdio.h>
int main()
{
 int n1=10, n2=20, n3=30;
 printf("n1:%d n2:%d n3:%d\n",n1,n2,n3);
 
 int *p=&n1;   /// 使用#p把n1的值改掉
 *p=200;
 printf("n1:%d n2:%d n3:%d\n",n1,n2,n3);
 
 return 0;
}
```
## 第二題  使用*P2,把變數n3得值改掉
```C
#include <stdio.h>
int main()
{
 int n1=10, n2=20, n3=30;
 printf("n1:%d n2:%d n3:%d\n",n1,n2,n3);
 
 int *p=&n1; 
 *p=200;
 printf("n1:%d n2:%d n3:%d\n",n1,n2,n3);
 
 int *p2=&n3;  /// 使用#p2把n3的值改掉
 *p2=300;
 printf("n1:%d n2:%d n3:%d\n",n1,n2,n3);
 
 return 0;
}
```
## 第三題 試著先 p2=p1, 然後 *p2=400, 再印出來
```c
#include <stdio.h>
int main()
{
 int n1=10, n2=20, n3=30;
 printf("n1:%d n2:%d n3:%d\n",n1,n2,n3);
 
 int *p=&n1;   /// p1裡面,放的是n1的住址 &n1
 *p=200;
 printf("n1:%d n2:%d n3:%d\n",n1,n2,n3);
 
 int *p2=&n3;   /// p2裡面,放的是n3的住址 &n3
 *p2=300;
 printf("n1:%d n2:%d n3:%d\n",n1,n2,n3);
 
 p2=p;         ///p2叛逃,改存p1裡面的東西
 *p2=400;
 printf("n1:%d n2:%d n3:%d\n",n1,n2,n3);
 
 return 0;
}
```
## 第四題 改用陣列 int n[3]={10, 20, 30}, 再用指標, 去改裡面的值
```c
#include <stdio.h>
int main()
{
 int n[3]={10,20,30};
 printf("n[0]:%d n[1]:%d n[2]:%d\n",n[0],n[1],n[2]);
 
 int *p=&n[0];   /// *p變成n[0] =200
 *p=200;
  printf("n[0]:%d n[1]:%d n[2]:%d\n",n[0],n[1],n[2]);
 
 int *p2=&n[2];   ///*p2變成n[2] =300
 *p2=300;
  printf("n[0]:%d n[1]:%d n[2]:%d\n",n[0],n[1],n[2]);
 
 p2=p;         ///p2=p *p的位址在 &n[0]=400
 *p2=400;
  printf("n[0]:%d n[1]:%d n[2]:%d\n",n[0],n[1],n[2]);
 
 return 0;
}
```
#第三週

## 第一題  int *p = &a[2]; *p=222; p = p + 2; *p = 666;
```
#include <stdio.h>
int a[5]={0,10,20,30,40};
int main()
{
 int *p=&a[2];  ///p在a[2]的位址
 *p=222;

 p=p+2;        ///p變成a[4]的位址
 *p=666;
}
```
## 第二題  int *p = &a[2]; *p=222; p = p + 2; *p = 666;p--; *p=555;
```
#include <stdio.h>
int a[5]={0,10,20,30,40};
void printAll()
{
    for(int i=0; i<5 ;i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n");
}
int main()
{
 int *p=&a[2];      ///p在20的位址
 *p= 222;        
       printAll();
 p=p+2;            ///p在40的位址
 *p= 666;
       printAll();
 p--;
 *p= 555;          ///p在30的位址
       printAll();
}

```
## 第三題 int *p=&a[2]; 及指標的使用 p = &a[2] 
```
#include <stdio.h>
int a[5]={0,10,20,30,40,50,60,70,8090};
void printAll()
{
    for(int i=0; i<10 ;i++)
    {
        printf("%d ", a[i]);
    }
    printf("\n");
}
int main()
{
 int *p=&a[2];      
 *p= 222;        
       printAll();
       
 int  *p2= p+4;    ///宣告
 
 p=p+2;            ///使用
 *p2=666;
      printAll();
 
 p2--;
 *p= 555;         
       printAll();
       
 return 0;      
}
```

## 第四題  malloc
```
#include <stdio.h>
#include <stdlib.h>
int a[10];
int main()
{
 int b[10];

 int *p=(int*) malloc( sizeof(int)*10 );  

 return 0;
}
```
#第四週

## 第一題 結構的宣告、定義
```
#include <stdio.h>
struct DATA
{
   float x,y,z; 
}
int main()
{

}
```
## 第二題 把變數的x,y,z用小數點拿出來用
```
#include <stdio.h>
struct DATA
{ ///宣告
 float x,y,z;  ///定義裡面有...
} point1 ;
/// point1 是變數
int main()
{
    point1.x=3; ///使用裡面的值
    point1.y=5;
    point1.z=7;
    printf("%f %f %f\n", point1.x,point1.y,point1.z);
}
```
## 第三題 結構的陣列
```
#include <stdio.h>
struct DATA
{ ///宣告
 float x,y,z;  ///定義裡面有...
} point1 ;
struct DATA point[5];
/// point1 是變數
int main()
{
    for(int i=0; i<5; i++)
    {
    point[i].x= i*10;
    point[i].y= 20;
    point[i].z= 0;
    printf("%f %f %f\n", point[i].x,point[i].y,point[i].z);
    }
}
```
## 第四題  global變數 /local變數
```
#include <stdio.h>
struct DATA
{ ///宣告
 float x,y,z;          /// 外面 golbal 全域變數

} a, b, c;
struct DATA points[5];

int main()
{
 struct DATA d,e,f;    /// 裡面 local 區域變數 沒有給值,是亂碼
 
 for(int i=0; i<5 ;i++)
 {
   point[i].x= i*10;
   point[i].y= 20;
   point[i].z= 0;
   printf("%f %f %f\n", point[i].x,point[i].y,point[i].z);
 }
}

```
## 第五題  結構的宣告與初始值
```
#include <stdio.h>
struct DATA
{ ///宣告
 float x,y,z;

} a, b;
struct DATA c,d;

int main()
{
    struct DATA e;
    struct DATA f={1 ,2 ,3} ; ///宣告的同時,可以初始值

    printf("%f %f %f\n", a.x, a.y, a.z);
    printf("%f %f %f\n", b.x, b.y, b.z);
    printf("%f %f %f\n", c.x, c.y, c.z);
    printf("%f %f %f\n", d.x, d.y, d.z);
    printf("%f %f %f\n", e.x, e.y, e.z);
    printf("%f %f %f\n", f.x, f.y, f.z);

}
```
#第五週

## 第一題 除惡務盡
```C
#include <stdio.h>
char line[20]="233233233233233233";
int main()
{
 char *p=line;
 //scanf("%s",line);
 for(int i=0; line[i]!=0;i++)
 {
  p=&line[i];
  char c=line[i];
  if(c!='2')printf("%c",c);
 }
 printf("\n");
}
```
## 第二題  字串的宣告
```C
#include <stdio.h>
int main()
{
 char line[10]="decline";
 char line2[10]={'p','r','o','p','e','r','\0'};

 printf("%s\n",line);
 printf("%s\n",line2);
}
```
## 第三題  加2行新的: char line3[]="majority"; char line4[]={'m','a','j','o','r','i','t','y'}
```C
#include <stdio.h>
int main()
{
 char line[10]="decline";
 char line2[10]={'p','r','o','p','e','r','\0'};

 printf("%s\n",line);
 printf("%s\n",line2);

 char line3[]="majority 這是好的,沒問題,是多長有多長";
 char line4[]={'m','a','j','o','r','i','t','y'};
 printf("%s\n",line3);

 printf("你相信嗎? 這是 line4:==%s==\n",line4);
}
```
## 第四題  char line[5][10] 
```C
#include <stdio.h>
int main()
{
  char line[5][10]={"decline","proper","majority","bullet","shop"};
  char *p;
  for(int i=0;i<5;i++)
  {
      char *p=line[i];
      printf("%s\n",line[i]);
  }
}
```
## 第五題  int a[3][3]={ {1,2,3}, {4,5,6}, {7,8,9} }; 
```C
#include <stdio.h>
int a[3][3]={(1,2,3),(4,5,6),(7,8,9)};
int main()
{
 for(int i=0;i<3;i++
 {
  for(int j=0;j<3;j++)
  {
  printf("%d",a[i][j]);
  }
    printf("\n");
 }
}
```
## 第六題  字串排序
```C
#include <stdio.h>
#include <string.h>
char line[100][10];
int main()
{
 int N;
 scanf("%d",&N);
 
 for(int i=0;i<N;i++)
 {
  scanf("%s",line[i]);
 }
  
 char temp[10];
 for(int i=0;i<N;i++)
 {
  for(int j=i+1;j<N;j++)
  {
  if(strcmp(line[i],line[j])>0)
   {
    strcpy(temp,line[i]);
    strcpy(line[i],line[j]);
    strcpy(line[j],temp);
  }
 }
 }
 
 for(int i=0;i<N;i++)
 {
  printf("%s\n",line[i]);
 }
}
```
