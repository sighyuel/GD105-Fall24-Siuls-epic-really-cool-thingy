/*
For this piece I will be using Call of duty's PVE game mode Zombies for some  
inspiration. I will be using wonder weapons to represent the hour "hands" and for the
minute hands I will be using the rotation of said wonder weapons to represent the minute
"hand".
*/

PImage VR;
PImage Winter;
PImage Ray;
PImage Three;
PImage Wave;
PImage Acid;
PImage Bow;
PImage Staff;
PImage Waffe;
PImage Thunder;
PImage Baby;
PImage ApSe;

void setup() {
  size(1024,1024);
  VR = loadImage("VR11.png");
  Winter = loadImage("Winter.png");
  Ray = loadImage("rayGun.png");
  Three = loadImage("markThree.png");
  Wave = loadImage("waveGun.png");
  Acid = loadImage("acidGat.png");
  Bow = loadImage("bow.png");
  Staff = loadImage("staff.png");
  Waffe = loadImage("lightning.png");
  Thunder = loadImage("thunderGun.png");
  Baby = loadImage("BabyGun.png");
  ApSe = loadImage("ApSe.png");
  imageMode(CENTER);
}

void draw(){
  background(#f6f3f3);
  int presentHour = hour();
  int presentMinute = minute();
  
  if(presentHour == 1 || presentHour == 13){
    image(VR, width * 0.083, height * .25, 140, 95);
  } else { 
    image(VR, width * 0.083, height/2, 140, 95);
    }
  
  if(presentHour == 2 || presentHour == 14){
    image(Winter, width * 0.17, height * .25, 140, 100);
  } else {
    image(Winter, width * 0.17, height/2, 140, 100);
  }
  
  if(presentHour == 3 || presentHour == 15){
    image(Ray, width * .25, height * .25, 140, 100);
  } else {
    image(Ray, width * .25, height/2, 140, 100);
  }
  if(presentHour == 4 || presentHour == 16){
    image(Three, width * .33, height * .25, 140, 80);
  } else {
    image(Three, width * .33, height/2, 140, 80);
  }
}
