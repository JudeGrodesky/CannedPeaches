class SingleBall { 
  float xCor; 
  float yCor;
  float xSpeed; 
  float ySpeed; 
  color c; 
  
  SingleBall() { 
    xCor = random(500); 
    yCor = random(500); 
    c = color(random(256), random(256), random(256) ); 
    xSpeed = random(-20,20); 
    ySpeed = random(-20,20); 
  } 
  
  void move() { 
    if (xCor + xSpeed > 600 ) { 
      xCor = 600; 
      xSpeed = xSpeed * -1;
    } 
    else if (xCor + xSpeed < 0 ) { 
      xCor = 0; 
      xSpeed = xSpeed * -1;
    } 
    else { 
      xCor += xSpeed;
    } 
    if (yCor + ySpeed > 600 ) { 
      yCor = 600;
      ySpeed = ySpeed * -1;
    } 
    else if (yCor + ySpeed < 0 ) { 
      yCor = 0; 
      ySpeed = ySpeed * -1;
    } 
    else { 
      yCor += ySpeed;
    } 
    yCor = yCor + ySpeed; 
    ellipse(xCor, yCor, 50, 50); 
    fill(c); 
  } 
    
    
  
} 
