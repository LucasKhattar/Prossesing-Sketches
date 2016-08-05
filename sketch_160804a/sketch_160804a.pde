PImage background;
PImage pokeball;
 void setup(){
background = loadImage("pokemon.png");
size(background.width, background.height);
pokeball = loadImage("pokeballs 2.png");

   
   
   
 }
 void draw(){
   background(background);
   
   
   if(mousePressed){
    image(pokeball,mouseX, mouseY);
   }
   else{
     image(pokeball, 150, height - 500);
   }}
