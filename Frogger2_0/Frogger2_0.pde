class Car{ 
  int carX;
  int carY;
  int size;
  int speed;
  int r;
  int g;
  int b;
  public Car(int carX, int carY, int size, int speed){
    this.carX = carX;
    this.carY = carY;
    this.size = size;
    this.speed = speed;
    this.r = (int)random(255);
    this.g = (int)random(255);
    this.b = (int)random(255);
  }
  int getX (){
   return carX; 
  }
  
  int getY (){
   return carY; 
  }
  
  int getSize (){
   return size; 
  }
  void display() {
  
    fill(r, g, b);
    rect(carX, carY, size, 10);
  }
  void move(){
    if(carX <= 0){
      carX = 400;
    }
    if(carX >= 401){
      carX = 0;
    }
    carX -= speed;
  }
}
  
Car car1 = new Car((int)random(500), 310, 50, (int)random(6)*-1-1);
Car car2 = new Car((int)random(500), 270, 50, (int)random(6)+1);
Car car3 = new Car((int)random(500), 230, 50, (int)random(6)*-1-1);
Car car4 = new Car((int)random(500), 190, 50, (int)random(6)+1);
Car car5 = new Car((int)random(500), 150, 50, (int)random(6)*-1-1);
Car car6 = new Car((int)random(500), 110, 50, (int)random(6)+1);
void setup(){
  size(500,500);
}
int X = 250;
int Y = 500;
int hop = 25;
void draw(){
  
  background(0,0,0);
  fill(17,204,51); 
  rect(0,340, 500, 200);
  fill(255,255,34);
  rect(0,30,500,30);
  fill(238,68,221);
  //text("FINISH",235,5ss0);
  fill(17,204,221);
  ellipse(X, Y, 20, 20);
   

  
  
  if(X<=0){
     X=10;
  }
  if(X>=500){
    X=490; 
    
  }
  if(Y<=0){
     Y=10;
  }
  if(Y>=500){
    Y=490; 
    
  }
  if(intersects(car1)==true){
    Y = 500;
    X = 250;
  }
  if(intersects(car2)==true){
    Y = 500;
    X = 250;
  }
  if(intersects(car3)==true){
    Y = 500;
    X = 250;
  }
  if(intersects(car4)==true){
    Y = 500;
    X = 250;
  }
  if(intersects(car5)==true){
    Y = 500;
    X = 250;
  }
  if(intersects(car6)==true){
    Y = 500;
    X = 250;
  }
  intersects(car2);
  intersects(car3);
  intersects(car4);
  intersects(car5);
  intersects(car6);
  car1.display();
  car2.display();
  car3.display();
  car4.display();
  car5.display();
  car6.display();
  car1.move();
  car2.move();
  car3.move();
  car4.move();
  car5.move();
  car6.move();
}
boolean intersects(Car car) {
if ((Y > car.getY() && Y < car.getY()+50) && (X > car.getX() && X < car.getX()+car.getSize()))
          return true;
    else 
        return false;
        
}
  void keyPressed(){
  if(key == CODED){
      if(keyCode == UP)
      {
      Y = Y-hop;
      }
      else if(keyCode == DOWN)
      {
        Y = Y+hop;
      }
      else if(keyCode == RIGHT)
      {
      X = X+hop;
      }
      else if(keyCode == LEFT)
      {
        X = X-hop;
      }
  }
  }

