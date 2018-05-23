class Balls {
  float x;
  float y;
  float speed;
  color c;

  Balls() { 
    x = random(500);
    y = random(500);
    c = color(random(256), random(256), random(256));
  }
}