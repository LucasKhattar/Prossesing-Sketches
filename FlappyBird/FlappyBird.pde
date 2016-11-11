void setup(){
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
int randomOP;
void draw(){
   if(intersects(x, y, X, Y, 50)){
    System.exit(0); 
   }
    background(93, 184, 196);
    fill(255, 255, 0);
    ellipse(x, y, 25, 25);
    fill(97, 182, 22);
    rect(X, Y, 50, 1000);
    
     
    if(y<=487){
      y += birdYVelocity;
      birdYVelocity += gravity;
      X -= pipeMove;
    }
     else{
           System.exit(0); 
     }
    if(mousePressed){
       birdYVelocity = -5;
}
    if(y<=0){
      y = 0;
    }
    if(X<=-50){
     X = 500;
     int random = (int) random(100, 300);
     Y = random;
     //randomOP = random + 100;
    }
  
}
boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
return true;
else 
return false;
}

//11. Make the game end when the bird hits the pipe. Figure it out by yourself, or use this method:
//boolean intersects(int birdX, int birdY, int paddleX, int paddleY, int paddleLength) {
//if (birdY > paddleY - 4 && birdX > paddleX && birdX < paddleX + paddleLength)
//return true;
//else 
//return false;
//}
//
//
//12. Make a second pipe that comes down from the sky
//fill(red, green, blue)    //in draw method
//rect(x, y, width, height)    //in draw method
//
//
//13. Repeat steps 8-10 for this pipe 
//  //it shouldn’t look any different from before yet
//
//
//14. Create a gap between the pipes
//  //the x values of the pipes need to be the same value
//  //make sure both pipes y values are set to the same random number
//  //then subtract (pipe height + gap length) from the upper pipe’s y value
//
//
//15. End the game when the bird hits the ground
//  //you can make a rectangle for the ground
//  //you’ll need a boolean  variable that is declared at the top of your sketch
//
//
//16. Create a score and make it increase each time the bird passes through a pipe
//text(text, xPosition, yPosition)
//
//
//17 (Optional). Make a sound when the bird flaps.
//  //drop the sound file onto your sketch
//
//
//  import ddf.minim.*;       //at the very top of your sketch
//  Minim minim;        //as a member variable
//  AudioSample sound;      //as a member variable
//  minim = new Minim (this);    //in the setup method
//  sound = minim.loadSample("BD.mp3", 128);//in the setup method
//  sound.trigger();        //in mouseReleased() method (when the bird flaps)
