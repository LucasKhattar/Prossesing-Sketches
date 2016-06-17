int y = 1;
int x = 1;
int score = 0;
Minim minim;
AudioSample sound;
void checkCatch(){
if (x > mouseX && x < mouseX+100)
      score++;
   else if (score > 0)
     score--;
println("Your score is now: " + score);
}
import ddf.minim.*;
void draw(){
  background(115, 222, 119);
  fill(115, 137, 222);
  ellipse(x, y, 10, 30);
  noStroke();
  y+=10;
  if(y>=500&&score<=49){
   y = 1;
   checkCatch();
   x = floor(random(650));
   sound.trigger();
  }
  fill(230, 242, 231);
  rect(mouseX, 450, 50, 50);
  fill(115, 137, 222);
  rect(mouseX+12.5, 462.5, 25, 25);
  textSize(16);
  text("Score: " + score, 20, 20);
  if(score>=50){
  textSize(50);
  text("You win!!!!", 150, 250);
  }
}
void setup(){
  size(650, 500);
  minim = new Minim (this);
  sound = minim.loadSample("drop.aiff", 128);
  
  
  
}
