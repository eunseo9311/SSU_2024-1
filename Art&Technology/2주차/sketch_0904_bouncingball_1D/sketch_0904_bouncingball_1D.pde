
int x;
int dirx;


void setup(){
  size(600,400);
  x = 300;
  // x=0 이라고 시작해버리면 밑에 * -1 때문에 계속 곱해져서 0만 뜨니까 x=0이 계속되서 움직이지 않게 된다.
  
  dirx = 2;
}
  
void draw(){
  background(200);
  
  
 // fill(128);
  ellipse(x,100,50,50);
  x = x + dirx;
  
  
  if (x + 25 > 600) {
    dirx = dirx * -1;
    fill(255,0,0);
    // #ffff00 각각 하나씩 RGB를 의미한다.
  }
    
  if (x - 25 < 0){
    dirx = dirx * -1;
    fill(255,255,0);
  } // if 도 끝날 때마다 중괄호로 묶어줘야 합니다.
} //draw 에서도 중괄호로 묶어줘야 합니다.
