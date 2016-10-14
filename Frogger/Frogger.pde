Car car1 = new Car((int)random(400), 310, 50, (int)random(6)*-1-1);
Car car2 = new Car((int)random(400), 270, 50, (int)random(6)+1);
Car car3 = new Car((int)random(400), 230, 50, (int)random(6)*-1-1);
Car car4 = new Car((int)random(400), 190, 50, (int)random(6)+1);
Car car5 = new Car((int)random(400), 150, 50, (int)random(6)*-1-1);
Car car6 = new Car((int)random(400), 110, 50, (int)random(6)+1);
void setup(){
  size(400, 400);
}
void draw(){
  background(0, 34, 34);
  off();
  //intersects(car1);
  //intersects(car2);
  fill(0, 136, 119);
  ellipse(frogX, frogY, 40, 40);
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
if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
          return true;
    else 
        return false;
}

void keyPressed()
{
  if(key == CODED){
      if(keyCode == UP)
      {
      frogY = frogY-hop;
      }
      else if(keyCode == DOWN)
      {
        frogY = frogY+hop;
      }
      else if(keyCode == RIGHT)
      {
      frogX = frogX+hop;
      }
      else if(keyCode == LEFT)
      {
        frogX = frogX-hop;
      }
   }
}
void off(){
  if(frogX >= 380){
    frogX = 380;
    
  }
  if(frogX <= 20){
    frogX = 20;
    
  }
  if(frogY >= 380){
    frogY = 380;
    
  }
  if(frogY <= 20){
    frogY = 20;
    
  }
}
  class Car{ 
  int carX;
  int carY;
  int size;
  int speed;
  public Car(int carX, int carY, int size, int speed){
    this.carX = carX;
    this.carY = carY;
    this.size = size;
    this.speed = speed;
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
  
    fill(255, 255, 255);
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

int hop = 40;
int frogX = 220;
int frogY = 380;
