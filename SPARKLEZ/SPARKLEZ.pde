int x = 10;
int y = 10;
void setup(){
    size(2000,1000);
   background(0,0,0);
  }
  void draw(){
  fill(round(random(256)),round(random(256)),round(random(256)));
  ellipse(x,y,10,10);
  x+= 10;
  y+= 10;
  x = round(random(500));
  y = round(random(500));
  x = round(getWormX(x));
  y = round(getWormY(y));
  makeMagical();
}
float frequency = 10;
float noiseInterval = 10; 

void makeMagical() {
  fill( 0, 0, 0, 10 );rect(0, 0, width, height);noStroke();
}

float getWormX(int i) {
  return map(noise(i*noiseInterval + frameCount * frequency), 0, 1, 0, width);
}

float getWormY(int i) {
  return map(noise(i*noiseInterval+1 + frameCount * frequency), 0, 1, 0, height);
}

