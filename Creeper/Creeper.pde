PImage creeper;  
PImage minecraft;
int X = 405;
int Y = 320;
void setup(){
  size(1000,1000);
  minecraft = loadImage("Creeper2.png");
minecraft.resize (1000, 1000);      
  background(minecraft);
  creeper=loadImage("Creeper.png");
  
  
}

void draw(){
  background(minecraft);
  image(creeper,X, Y, 100, 100);
  if(mousePressed){
    ellipse(mouseX, mouseY, 50, 50);
    if(isNear(X, mouseX)&&isNear(Y, mouseY)){
       fill(0,255,0); 
    }
    else{
      fill(255,0,0);
    }
  }
  
}
boolean isNear(int a, int b) {
      if (abs(a - b) < 10)
          return true;
     return false;
}

