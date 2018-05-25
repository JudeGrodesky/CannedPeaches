boolean growing;
int circleSize = 0;
int mouseXLast;
int mouseYLast;
SingleBall[] arr = new SingleBall[35];
SingleBall a;
final static int MOVING = 0;
final static int GROWING = 1;
final static int SHRINKING = 2;
final static int DEAD = 3;

void setup() {
  size(600, 600);
  for (int i =0; i < 35; i++) {
    arr[i] = new SingleBall();
  }
}

void mouseClicked() {
  if (circleSize == 0) {
    mouseXLast = mouseX;
    mouseYLast = mouseY;
    growing = true;
  }
}

void draw() {
  background(0); 
  for (SingleBall ball : arr) {
    switch(ball.state) {
    case GROWING:
      ball.grow();
    case SHRINKING:
      ball.shrink();
    case MOVING:
      ball.move();
    case DEAD:
    }
  }
  if (growing) {
    if (circleSize < 200) {
      circleSize += 5;
    }
    if (circleSize == 200) {
      growing = false;
    }
  } else {
    if ( circleSize != 0 ) {
      circleSize -= 5;
    }
  }
  fill(124, 32, 0);
  ellipse(mouseXLast, mouseYLast, circleSize, circleSize);
}