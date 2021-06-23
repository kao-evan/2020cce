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
#第七週

## 第一題 字串排序,改用 qsort()
```C
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
char a[100][10];
int compare(const void *p1,const void *p2)
{
char *s1=(char*)p1;
char *s2=(char*)p2;
 return strcmp{ s1, s2};
}
int main()
{
int n;
scanf("%d",&n);

for(int i=0; i<n;i++)
{
 scanf("%s",a[i]);
 }
  qsort( a, n,   10,       compare);
   for(int i=0;i<n;i++)
   {
    printf("%s\n",a[i]);
   } 
}
```
#第十週

## 第一題 UVA10008
```C
#include <stdio.h>
char line[10000];
int main()
{
 int n;
 scanf("%d\n",&n);
 
 for(int i=0;i<n;i++){
   gets(line);
   
   printf("%s\n",line);
  } //gets()讀整行
 } 
```
## 第二題  每個字母做大小轉換 先能判斷大小寫
```C
#include <stdio.h>
char line[10000];
int ans[26];//出現的次數
int main()
{
 int n;
 scanf("%d\n",&n);
 
 for(int i=0;i<n;i++){
    gets(line);
    
    //把小寫,轉大寫
    //判斷大 小寫?
    for(int k=0; line[k]!=0; k++){
     char c= line[k];
     
     if( c>='A' && c<='Z' ) printf("大");
     else if( c>='a' && c<='z' ) printf("小");
     else printf("他");
    } 
  }  //gets()讀整行
}
```
## 第三題 對應的統計 ans[c-'A']++ 或 ans[c-'a']++
```C
#include <stdio.h>
char line[10000];
int ans[26];//出現的次數
int main()
{
 int n;
 scanf("%d\n",&n);
 
 for(int i=0;i<n;i++){
    gets(line);
    
    //把小寫,轉大寫
    //判斷大 小寫?
    for(int k=0; line[k]!=0; k++){
     char c= line[k];
     
     if( c>='A' && c<='Z' ) ans[ c-'A' ]++;
     else if( c>='a' && c<='z' ) ans[c-'a']++;
    } 
  }  //gets()讀整行
   for(int i=0;i<26;i++){
      printf("%c %d\n",'A'+1,ans[i]);
   }
}
```
## 第四題 用排序，把答案算出來
```C
#include <stdio.h>
char line[10000];
int ans[26];//出現的次數
char alphabet[]="ABCDEFGHIJKLMNOPQRSTUVWXYZ";
int main()
{
 int n;
 scanf("%d\n",&n);
 
 for(int i=0;i<n;i++){
    gets(line);
    for(int k=0; line[k]!=0; k++){
     char c= line[k];
     if( c>='A' && c<='Z' ) ans[ c-'A' ]++;
     else if( c>='a' && c<='z' ) ans[c-'a']++;
    } 
  }  //gets()讀整行
   for(int i=0;i<26;i++){//排序!!!
    for(int j=i+1; j<26; j++){
     if( ans[i]< ans[j] || (ans[i]==ans[j] &&alphabet[i]>alphabet[j])){
      int temp=ans[i];
      ans[i]=ans[j];
      ans[j]=temp;
      char c= alphabet[i];
      alphabet[i]= alphabet[j];
      alphabet[j]= c;
      }
     }
    }  
     for(int i=0;i<26;i++){
     if(ans[i]>0) printf("%c %d\n",alphabet[i],ans[i]);
   }
}
```
## 第五題 改用 qsort()配資料結構 struct來寫出來
```C
#include <stdio.h>
#include <stdlib.h>
char line[10000];
typedef struct{
  int ans;
  char c;
}BOX;  
BOX array[26];
int compare( const void *p1,const void *p2){
  if( ((BOX*)p1)->ans > ((BOX*)p2)->ans ) return -1;
  else if( ((BOX*)p1)->ans <((BOX*)p2)->ans ) return +1;
  else if( ((BOX*)p1)->c <((BOX*)p2)->c ) return -1;
  else if( ((BOX*)p1)->c >((BOX*)p2)->c ) return +1;
  else return 0;//ans相等時,要比字母
}
int main()
{
 
 for(int i=0; i<26;i++) array[i].c='A'+i;
    int n;
    scanf("%d\n",&n);
    for(int i=0;i<n;i++){
     gets(line);
    for(int k=0; line[k]!=0; k++){
     char c= line[k];
     if( c>='A' && c<='Z' ) array[ c-'A' ].ans++;
     else if( c>='a' && c<='z' ) array[c-'a'].ans++;
    } 
  }  //gets()讀整行
  qsort ( array, 26, sizeof(BOX), compare);
  
     for(int i=0;i<26;i++){
     if(array[i].ans>0) printf("%c %d\n",array[i].c,array[i].ans );
   }
}
```
#第十二週

## 第一題  UVA 10062 依字母的頻率, 從少到多排序
```C
#include <stdio.h>
char line[2000];
int main()
{
 for(int t=0; gets(line);t++){
  int ans[256]={};
  char ascii[256];
  for(int i=0;i<256;i++) ascii[i]=i;
  
  for(int i=0;line[i]!=0;i++){
   char c=line[i];
   ans[c]++;
   }
   for(int i=0;i<256;i++){
     for(int j=i+1;j<256; j++){
      if( ans[i]>ans[j]){//如果順序不對，要交換
       int temp=ans[i];
       ans[i]=ans[j];
       ans[j]=temp;
       char c=ascii[i];
       ascii[i]=ascii[j];
       ascii[j]=c;
      }
    }
  }  
   if(t>0) printf("\n");
   for(int i=0;i<256;i++){
    if(ans[i]>0) printf("%d %d\n",ascii[i],ans[i]);
    }
   } 
}
```
## 第二題 UVA 10062 完成 Part 2 字母的頻率相同時, 字母從大到小排序
```
#include <stdio.h>
char line[2000];
int main()
{
 for(int t=0; gets(line);t++){
  int ans[256]={};
  char ascii[256];
  for(int i=0;i<256;i++) ascii[i]=i;
  
  for(int i=0;line[i]!=0;i++){
   char c=line[i];
   ans[c]++;
   }
   for(int i=0;i<256;i++){
     for(int j=i+1;j<256; j++){
      if( ans[i]>ans[j]){//如果順序不對，要交換
       int temp=ans[i];
       ans[i]=ans[j];
       ans[j]=temp;
       char c=ascii[i];
       ascii[i]=ascii[j];
       ascii[j]=c;
      }
      if( ans[i]== ans[j] &&ascii[i]<ascii[j]){
       int temp=ans[i];
       ans[i]=ans[j];
       ans[j]=temp;
       char c=ascii[i];
       ascii[i]=ascii[j];
       ascii[j]=c;
      }
    }
  }  
   if(t>0) printf("\n");
   for(int i=0;i<256;i++){
    if(ans[i]>0) printf("%d %d\n",ascii[i],ans[i]);
    }
   } 
}
```
## 第三題 UVA 299 交換火車, Part 1: 先解決 Input, Output
```
#include <stdio.h>
int a[100];
int main()
{
 int T; // Input 有幾筆
 scanf("%d",&T);
 for(int t=0; t<T; t++){
  
  int N; // Input
  scanf("%d",&N);
  for(int i=0; i<N; i++){
   scanf("%d", &a[i]);
  }
  
   int ans=0;
   
   printf("Optimal train swapping takes %d swaps.\n");
  } // 印出答案
}
```
## 第四題 接續上題 Part 2: 完成泡泡排序法, 並把正確答案算出來
```
#include <stdio.h>
int a[100];
int main()
{
 int T,N; // Input 有幾筆
 scanf("%d",&T);
 for(int t=0; t<T; t++){
  scanf("%d",&N);
  for(int i=0; i<N; i++){
   scanf("%d", &a[i]);
  }
   int ans=0;//統計泡泡排序法交換幾次
   for(int k=0; k<N-1; k++){
    for(int i=0; i<N-1; i++){
     if( a[i]> a[i+1]){
      int temp=a[i];
      a[i]=a[i+1];
      a[i+1]=temp;
      ans++;
      }
    }
   }   
   printf("Optimal train swapping takes %d swaps.\n",ans);
  } // 印出答案
}
```
## 第五題 UVA 11321 排排排序, Part 1: 先解決 Input, Output
```
#include <stdio.h>
int a[10000];
int main()
{
 int N,M;
 while( scanf("%d %d",&N,&M)==2){ //Input
  for(int i=0;i<N; i++){
   scanf("%d",&a[i]);//Input
  }
  
   printf("%d %d\n",N, M);
   for(int i=0;i<N;i++){ //Output
    printf("%d\n",a[i]);
   } 
  } 
}
```

#第十三週

## 第一題  size() 及 background()先完成
```
size(1024,400);
background(255,0,255);
```
## 第二題  配合 void setup() 及 void draw()，做互動配合 if(mousePressed) 及 else 來換色。
```
void setup(){
 size(1024,400);
}
void draw(){
  if(mousePressed)background(255,0,255);
  else background(62,141,247);
}
```
## 第三題  用 void mousePressed() 來做互動, 讓 text() 可以秀出不同的點擊次數
```
 size(1024,400);
}
void draw(){//每秒畫60次
  if(mousePressed)background(255,0,255);
  else background(62,141,247);
  text(a,512,200);//畫出文字
}//目標:能畫圖 mouse 按下去
int a=0;
void mousePressed(){
  a++;
}
```
## 第四題  用 textSize()還有文字加法
```
void setup(){//只做一次的設定
 size(1024,400);
}
void draw(){//每秒畫60次
  if(mousePressed)background(255,0,255);
  else background(62,141,247);
  textSize(34);//文字大小
  text("中文壞掉Now a is:"+a, 212, 200);
}//目標:文字全系列
int a=0;
void mousePressed(){
  a++;
}
```
## 第五題  重寫新的Ctrl-N,得到hour(),minute(),second() 再用字串加法加長起來
```
void setup(){
  size(1024,400);
}
void draw(){
  background(#2541D8);//色碼
 int s=second();//Values from 0-59
 int m=minute();//Values from 0-59
 int h=hour();  //Values from 0-23
 textSize(80);
 text( h+ ":" +m+ ":" +s,100,200);
   //數字字串數字字串 數字
}  
```

## 第六題  將秒、分、時,換算出總秒數,目標總秒數-現在總秒數,得到剩下總秒數
```
void setup(){
  size(1024,400);
  textFont( createFont("標楷體",80));
}
void draw(){
  background(#2541D8);//色碼
 int s=second();//Values from 0-59
 int m=minute();//Values from 0-59
 int h=hour();  //Values from 0-23
 textSize(80);
 text( h+ ":" +m+ ":" +s,100,200);
 int total =s+ 60*m+ 60*60*h;//現在總秒數
 int closeH=17, closeM=40, closeS=0;//下課的精確時間
 int total2=closeS +60*closeM +60*60*closeH;//目標總秒數
 int ans= total2-total;
 text( "剩下幾秒:" +ans,100,100);
   //數字字串數字字串 數字
}  
```
## 第七題  把總秒數,用找零錢的方法,變出時、分、秒
```
 int m=minute();//Values from 0-59
 int h=hour();  //Values from 0-23
 textSize(80);
 text( h+ ":" +m+ ":" +s,100,200);
 int total =s+ 60*m+ 60*60*h;//現在總秒數
 int closeH=17, closeM=40, closeS=0;//下課的精確時間
 int total2=closeS +60*closeM +60*60*closeH;//目標總秒數
 int ans= total2-total;
 text( "剩下幾秒:" +ans,100,100);
 int ansH=ans/60/60%60, ansM=ans/60%60,ansS=ans%60;
 text( ansH+":"+ansM+":"+ansS,100,300);
   //數字字串數字字串 數字
}  
```
#第十四週

## 第一題  亂數random()抽個浮點數的數字,並畫出來
```
//在有色彩的字，mouse按右鍵
void setup(){
 float ans=random(60); // 亂數，會是<60的浮點數
 text( ans,20,20);  //畫出ans
}
void dwaw(){//畫圖
  
  }
```
## 第二題  用mousePressed互動方式,來產生整數的亂數
```
int ans=0;
void setup(){
  size(300,300);
// float ans=random(60); // 亂數，會是<60的浮點數
  textSize(30);
  text( ans,20,30);  //畫出ans
}
void draw(){//畫圖
  background(#435FF7);
  text( ans,20,30);
}
void mousePressed(){
  ans = (int)random(60);
}
```
## 第三題  洗牌,亂數1,亂數2,交換對應位置,重覆做很多次
```
int[]a={1,2,3,4,5,6,7,8,9,10};//Java
int i1,i2;
void setup(){
  size(400,100);
  textSize(30);
}
void draw(){
  background(#435FF7);
  for(int i=0;i<10;i++){
    text( a[i], i*40,50);
  }
  rect( i1*40,50,30,30);
  rect( i2*40,50,30,30);
}
void mousePressed(){
  i1=(int)random(10);
  i2=(int)random(10);
  int temp=a[i1]; a[i1]=a[i2];a[i2]=temp;
}
```
## 第四題  大樂透抽球,其實就是洗牌1000次,再粗暴印出前面5個數字
```
int []a=new int[47];
void setup(){
  size(500,200);
  textSize(30);
  for(int i=0; i<47;i++) a[i]=i;
 //讓a[i]的陣列裡，要先放整齊對應的數字
  for(int i=0; i<1000;i++){
     int i1=(int)random(47);
     int i2=(int)random(47);
  int temp=a[i1]; a[i1]=a[i2];a[i2]=temp;
 } 
}
void draw(){
  background(#23CBA0);
  for(int i=0;i<5;i++){
     text(a[i], i*80, 100);
 }     
}
```
## 第五題  利用mousePressed互動,決定要秀幾顆球
```
int []a=new int[47];
void setup(){
  size(500,200);
  textSize(30);
  for(int i=0; i<47;i++) a[i]=i;
 //讓a[i]的陣列裡，要先放整齊對應的數字
  for(int i=0; i<1000;i++){
     int i1=(int)random(47);
     int i2=(int)random(47);
  int temp=a[i1]; a[i1]=a[i2];a[i2]=temp;
 } 
}
int N=0;
void draw(){
  background(#23CBA0);
  for(int i=0;i<N;i++){
     text(a[i], i*80, 100);
 }     
}
void mousePressed(){//利用mousePress互動
  N++;
} 
```
## 第六題  把文字對齊textAlign，用fill(灰階色彩)改色彩
```
int []a=new int[47];
void setup(){
  size(500,200);
  textSize(30);
  for(int i=0; i<47;i++) a[i]=i;
 //讓a[i]的陣列裡，要先放整齊對應的數字
  for(int i=0; i<1000;i++){
     int i1=(int)random(47);
     int i2=(int)random(47);
  int temp=a[i1]; a[i1]=a[i2];a[i2]=temp;
 } 
}
int N=0;
void draw(){
  background(#23CBA0);
  textAlign(CENTER,CENTER);
  for(int i=0;i<N;i++){
    fill(255); ellipse(  i*80+40,100,55,55);
    fill(0); text(a[i], i*80+40, 100);
 }     
}
void mousePressed(){//利用mousePress互動
  N++;
}  
```
#第十五週

## 第一題  倒數計時,先能得到second()秒鐘,用奇偶數調背景色
```
void setup(){//設定做1次
  size(400,200);
}
void draw(){
   int s= second();
   if( s%2==0) background(255,0,0);
   else background(58,114,191);
}   
```
## 第二題  倒數計時_利用秒數、餘數、減法,做出10到0的倒數計時
```
void setup(){//設定做1次
  size(400,200);
  textSize(40);
}
void draw(){
  int s =second(); //s增加 0...59
  background(58,114,191);
  //text(60-s, 100,100);
  text( 10 -s%11, 100,100);
 }   //  0...10=>10...0
   //共11個數字
```
## 第三題  安裝Processing的Sound函式庫,再寫程式,並把 tada.mp3 拉到Processing的PDE視窗,就可以有聲音
```
import processing.sound.*;
SoundFile player;
void setup(){
   size(400,200);
   player = new SoundFile(this, "tada.mp3");
}  
void draw(){
  background(58,114,191); 
}  
void mousePressed(){
   player.play();
}   
```
## 第四題  用 player的isPlaying()來決定stop()或play()
```
import processing.sound.*;
SoundFile player;
void setup(){
   size(400,200);
   player = new SoundFile(this, "bell.mp3");
}  
void draw(){
  background(58,114,191); 
}  
void mousePressed(){
  if( player. isPlaying()){
   player.play();
  }else{
  player.play();
 }   
}
```
## 第五題  整合step01倒數計時10秒 及 step02 發出聲音,並用 isPlaying()保護一下,每10秒叫一聲tada
```
import processing.sound.*;
SoundFile player;
void setup(){//設定做1次
  size(400,200);
  textSize(40);
  player = new SoundFile(this, "tada.mp3");
}
void draw(){
  int s =second(); //s增加 0...59
  background(58,114,191);
  //text(60-s, 100,100);
  text( 10 -s%11, 100,100);
  if( 10-s%11 ==0 && !player.isPlaying() ){
    player.play();
  } 
 }   //  0...10=>10...0
   //共11個數字
```
## 第六題  先裝p5 js 模式,再用converter轉成JavaScript,貼上即可,小心if()的大括號要補
```
function setup(){//設定做1次
  createCanvas(400,200);
}
function draw(){
   let s= second();
   if( s%2==0){
     background(255,0,0);
   }else{
     background(58,114,191);
  }   
}
```
#第十六週

## 第一題  畫出圓盤，用ellipse配合void setup()及void draw()還有background()
```
void setup(){
  size(400,200);
}
void draw(){
background(#0C33C9);  
ellipse(50,50, 80,80);
  //    圓心   寬，高
}  
```
## 第二題  畫出圓弧arc，多了2個不明參數,我們利用fill()不同色彩來看結果,並利用mouseX來算出一個magic number
```
void setup(){
  size(400,200);
}
void draw(){
 background(#0C33C9); 
 fill(255);
 ellipse(50,50, 80,80);
  //    圓心   寬，高
 fill(255,0,0);
 float stop=mouseX/50.0;
 text(stop, 100,100); //畫出字
 arc(50,50, 80,80, 0, stop); //畫出圓弧
}  //圓心   寬 高 開始 結束  
```
## 第三題  用arc()的參數,重點在了解 start 的意思,它可以讓圓弧轉動
```
void setup(){
  size(400,200);
}
void draw(){
 background(#0C33C9); 
 fill(255);
 ellipse(50,50, 80,80);
  //    圓心   寬，高
 fill(255,0,0);
 float start= mouseX/50.0;
 textSize(40);
 text(start,100,100);
 arc(50,50, 80,80, 0+start, 0.1+start); //畫出圓弧
}  //圓心   寬 高 開始 結束  

```
## 第四題  利用for迴圈,來畫出24片細細的小片,換算出角度,換算出shift位移量,再利用餘數來決定色彩,完成會轉動的大轉盤
```
void setup(){
  size(400,200);
}
void draw(){
 background(#0C33C9); 
 fill(255);
 ellipse(100,100, 180,180);
  //    圓心   寬，高
 fill(255,0,0);
 float start= mouseX/50.0;
 for(int i=0; i<24;i++){
   float shift=2*PI*i/24.0;
   if(i%3==0) fill(0);
   if(i%3==1) fill(#FFF86C);
   if(i%3==2) fill(255);
 arc(100,100, 180,180, shift+0+start, shift+PI/12+start); //畫出圓弧
 }
}  //圓心   寬 高 開始 結束
```
## 第五題  利用if(i==0)來挑出最前面的i,把它設成橘色
```
void setup(){
  size(400,200);
}
void draw(){
 background(#0C33C9); 
 fill(255);
 ellipse(100,100, 180,180);
  //    圓心   寬，高
 fill(255,0,0);
 float start= mouseX/50.0;
 for(int i=0; i<24;i++){
   float shift=2*PI*i/24.0;
   if(i%3==0) fill(0);
   if(i%3==1) fill(#FFF86C);
   if(i%3==2) fill(255);
   if(i==0) fill(#FA761E);
 arc(100,100, 180,180, shift+0+start, shift+PI/12+start); //畫出圓弧
 }
}  //圓心   寬 高 開始 結束  

```
## 第六題  利用外面的global變數float start=0,再於draw()裡,if(start比10小)start+=0.01來讓它轉動
```
void setup(){
  size(400,200);
}
float start=0;
void draw(){
 background(#0C33C9); 
 if(start<10) start+=0.01;
 fill(255); text( start,200,150);
for(int i=0; i<24;i++){
   float shift=i*PI/12;
   if(i%3==0) fill(#000000);
   if(i%3==1) fill(#FFF86C);
   if(i%3==2) fill(#FFFFFF);
   if(i==0) fill(#FA761E);
 arc(100,100, 180,180, shift+0+start, shift+PI/12+start); //畫出圓弧
 }
}  //圓心   寬 高 開始 結束  
```
## 第七題  利用速度v來讓start位置會改變, 只要速度夠快,就繼續轉 start += v;  v變0.99倍
```
void setup(){
  size(400,200);
}
float start=0, v=0.07; //v是旋轉的速度
void draw(){
 background(#0C33C9); 
 if( v> 0.001){//速度很慢時，就不再轉動
  start += v; //位置 速度 加速度
  v *=0.99; //摩擦力，讓速度變慢
 }//if(start<10) start+=0.01;
 fill(255); text( start,200,150); text(v,200,170);
for(int i=0; i<24;i++){
   float shift=i*PI/12;
   if(i%3==0) fill(#000000);
   if(i%3==1) fill(#FFF86C);
   if(i%3==2) fill(#FFFFFF);
   if(i==0) fill(#FA761E);
 arc(100,100, 180,180, shift+0+start, shift+PI/12+start); //畫出圓弧
 }
}  //圓心   寬 高 開始 結束  

```
## 第八題  為了讓每次轉動都有變化,我們在mousePressed()裡,利用random()亂數來決定一開始的速度
```
void setup(){
  size(400,200);
}
float start=0, v=0.07;//v是旋轉的速度
void mousePressed(){
  v=random(1);
} 
void draw(){
 background(#0C33C9); 
 if( v> 0.001){//速度很慢時，就不再轉動
  start += v; //位置 速度 加速度
  v *=0.99; //摩擦力，讓速度變慢
 }//if(start<10) start+=0.01;
 fill(255); text( start,200,150); text(v,200,170);
for(int i=0; i<24;i++){
   float shift=i*PI/12;
   if(i%3==0) fill(#000000);
   if(i%3==1) fill(#FFF86C);
   if(i%3==2) fill(#FFFFFF);
   if(i==0) fill(#FA761E);
 arc(100,100, 180,180, shift+0+start, shift+PI/12+start); //畫出圓弧
 }
} //圓心   寬 高 開始 結束  
```
#第十七週 打字遊戲

## 第一題  先利用字串變數 String line來方便之後有變化。再利用 text()畫出字串
```
void setup(){
  size(400,200);
  textSize(40);
}
String line="hello"; //字串
void draw(){
 background(#3F63E0); 
 text(line, 100,100); //可以將字串line畫出來
 text("World",100,150);
}  
```
## 第二題  了解字串可以做+來越接越長, char c是個字母, key也是個字母,也可以+接起來變長
```
void setup(){
  size(400,200);
  textSize(40);
}
String line="hello"; //字串
char c='9';
void draw(){
 background(#3F63E0); 
 text(line+c+100, 100,100); //可以將字串line畫出來
 text("World:"+key,100,150);//key 會對應你按下的鍵盤的鍵
}    
```
## 第三題  利用if(判斷)來決定 win是0還是1,並秀出對應的畫面
```
void setup(){
  size(400,200);
  textSize(40);
}
char c='9';
int win=0;
void draw(){
  background(#3F63E0); 
  text("Press:"+c, 100,100);
  text("You :"+key,100,150);
  if(c==key) win=1;
  else win=0;
  
  if(win==1) text("You Win!",100,50);
}      
```
## 第四題 如果打字正確,就換下一個字母, 使用 String字串的 charAt(i) 來挑對應的字母
```
void setup(){
  size(400,200);
  textSize(40);
}
char c='9';
String ans="abcdefghjklmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ";
int win=0;
void draw(){
  background(#3F63E0); 
  text("Press:"+c, 100,100);
  text("You :"+key,100,150);
  if(c==key) win=1;
  else win=0;
  
  if(win==1){
  text("You Win!",100,50);
  int i=int(random(26+26));
  c=ans.charAt(i);
 }  
}      
```
## 第五題 利用 void keyPressed() 的時機,看 keyCode值是RIGHT或LEFT來讓方塊的座標可往右、往左移動
```
void setup(){
  size(400,200);
  textSize(40);
}
int x=100,y=100;
void draw(){
 background(#3F63E0); 
 rect(x,y,50,50);//畫方塊
}
 void keyPressed(){
   if(keyCode==LEFT ) x-=10;
   if(keyCode==RIGHT ) x+=10;
}    
```
## 第六題 讓keyPressed()裡不是直接改x的座標,而是改vx的速度,速度再等速在void draw()裡面移動位置,體驗會更好
```
void setup(){
  size(400,200);
  textSize(40);
}
int x=100,y=100, vx=0, vy=0;
void draw(){
 background(#3F63E0); 
 rect(x,y,50,50);//畫方塊
 x +=vx;
}
 void keyPressed(){
   if(keyCode==LEFT ) vx=-1;
   if(keyCode==RIGHT ) vx=+1;
}
  void keyReleased(){
   vx=0;
}      
```
## 第七題 整合第1節課+第2節課,我們利用String line 會在 void keyPressed()時慢慢變長 line = line + key;
```
String A="mother";
String line=" ";

void setup(){
  size(400,300);
  textSize(40);
}
void draw(){
 background(0); 
 text( A,100,100);
 text(line + "|", 100,150);
}  
 void keyPressed(){
 line= line+key;
}
} 
```
## 第八題 在keyPressed()裡,加上if(判斷)看是小寫、大寫,就會變長 line = line+key; 如果是 BACKSPACE就會把line變短 
```
String A="mother";
String line=" ";

void setup(){
  size(400,300);
  textSize(40);
}
void draw(){
 background(0); 
 text( A,100,100);
 text(line + "|", 100,150);
}  
 void keyPressed(){
   int len=line.length();//原字的長度
   if(key>='a' && key<='z')line=line+key;//小寫鍵
   if(key>='A' && key<='Z')line=line+key;//大寫鍵
   if(key==ENTER){   }//比對是否正確
   if(key==BACKSPACE) line=line.substring(0,len-1);//倒退刪掉
}
```
