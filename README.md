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








