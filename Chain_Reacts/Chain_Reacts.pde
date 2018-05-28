ArrayList<SingleBall> arr = new ArrayList<SingleBall>();
final static int MOVING = 0;
final static int GROWING = 1;
final static int SHRINKING = 2;
final static int DEAD = 3;

void setup() {
  size(600, 600);
  for (int i =0; i < 35; i++) {
    arr.add(new SingleBall());
  }
}

void mouseClicked() {
  arr.add(new SingleBall(mouseX, mouseY, GROWING));
}


void draw() {
  background(0); 
  for (SingleBall ball : arr) {
    ball.action();
  }
}
