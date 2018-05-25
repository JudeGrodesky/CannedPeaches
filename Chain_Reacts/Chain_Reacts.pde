
SingleBall[] arr = new SingleBall[35];
SingleBall a;

void setup() { 
  size(600,600);
  for (int i =0; i < 35; i++){
    arr[i] = new SingleBall();
  }
} 

void draw() { 
  background(0); 
  for (SingleBall ball : arr){
    ball.move(); 
  }
} 