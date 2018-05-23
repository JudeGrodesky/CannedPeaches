
ArrayList<SingleBall> arr = new ArrayList<SingleBall>();
SingleBall a;

void setup() { 
  size(600,600);
  for (int i =0; i < 35; i++){
    arr.add( new SingleBall() );
  }
} 

void draw() { 
  background(0); 
  for (int i = 0; i < 35; i++){
    arr.get(i).move(); 
  }
} 
