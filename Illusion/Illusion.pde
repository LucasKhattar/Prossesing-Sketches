void setup() {
  size(1000,1000);
  noFill();
} 
void draw() {
  for (int i = 1; i < 500; i=i+5) {
  ellipse(500,500,25,25);
  ellipse(500,500,35,35);
  ellipse(500,500,35,35);
  ellipse(500,500,i,i);
  }
}

