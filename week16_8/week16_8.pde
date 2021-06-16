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
