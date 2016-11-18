void setup() {
  size(500, 500);
}
int x = 100;
int y = 100;
int jump = y + 50;
double birdYVelocity = 1;
double gravity = .5;
int X = 400;
int Y = 200;
int pipeMove = 4;
int random = (int) random(100, 300);
int textT = 0;
void draw() {
  if (intersects(x, y, X, Y, 50)) {
    System.exit(0);
  }
  
  if (intersectsTop(x, y, X, Y-75, 50)) {
    System.exit(0);
  }
  background(93, 184, 196);
  fill(255, 255, 0);
  ellipse(x, y, 25, 25);
  fill(97, 182, 22);
  rect(X, Y, 50, 500);
  fill(97, 182, 22);
  rect(X, 0, 50, Y-75);
  fill(0,0,0);
  textSize(70);
  text(textT+"", 200, 100);
  if (y<=487) {
    y += birdYVelocity;
    birdYVelocity += gravity;
    X -= pipeMove;
  } else {
    System.exit(0);
  }
  if (mousePressed) {
    birdYVelocity = -5;
  }
  if (y<=0) {
    y = 0;
  }
  if (X<=-50) {
    X = 500;
    int random = (int) random(100, 300);
    Y = random;
  }
  if(x >X && x < X + 5){
    textT++;
    
  }
}
boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
  if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
    return true;
  else 
    return false;
}

boolean intersectsTop(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
  if (birdY < paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
    return true;
  else 
    return false;
}
