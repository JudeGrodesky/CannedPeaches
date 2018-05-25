class SingleBall { 
  final static int MOVING = 0;
  final static int GROWING = 1;
  final static int SHRINKING = 2;
  final static int DEAD = 3;
  final float CHANGE_FACTOR = .25;
  final float MAX_RADIUS = 50;

  float x; 
  float y;
  float dx; 
  float dy; 
  float rad;
  color c; 
  int state;

  SingleBall() { 
    x = random(500); 
    y = random(500); 
    dx = random(-5, 5); 
    dy = random(-5, 5); 
    rad = 10;
    c = color(random(256), random(256), random(256) );
    state = MOVING;
  } 
  SingleBall(float cx, float cy, int cstate) {
    x = cx;
    y = cy;
    dx = 0;
    dy = 0;
    rad = 10;
    state = cstate;
    c = color(random(256), random(256), random(256) );
  }
  void move() { 
    //left wall, turn around
    if (x + dx > 600 - rad ) { 
      x = 600 - rad; 
      dx = dx * -1;
    } 
    //right wall, turn around
    else if (x + dx < rad ) { 
      x = rad; 
      dx = dx * -1;
    } 
    //else move
    else { 
      x += dx;
    } 
    //top wall, turn around
    if (y + dy > 600 - rad ) { 
      y = 600 - rad;
      dy = dy * -1;
    } 
    //bottom wall, turn around
    else if (y + dy < rad ) { 
      y = rad; 
      dy = dy * -1;
    } 
    //else move
    else { 
      y += dy;
    } 
    y = y + dy;

    ellipse(x, y, rad * 2, rad * 2); //update the image of the ball
    fill(c);
  }
  void grow() {
    if (rad < MAX_RADIUS) {
      rad+=CHANGE_FACTOR;
    } else {
      state=SHRINKING;
    }
  }
  void shrink() {
    if (rad > 0) {
       rad-=CHANGE_FACTOR; 
    } else {
       state=DEAD; 
    }
  }
} 