/*
For this piece I will be making a halloween themed clock for spooky season! It will be
wonderfully decorated for halloween time. I will use Jack-o-laterns to represent the 
hour hands and they will rotate and allow the 
*/

PImage pump;
float minuteHand;

void setup() {
  size(1200,1200);
  pump = loadImage("pumpkin.png");
  imageMode(CENTER);
}

void draw(){
  int presentHour = hour();
  minuteHand = map(minute(), 0, 59, 0, TAU);
  
  // colors for AM and PM 
  if(presentHour < 12){
    background(#540076); // purple
  } else{
    background(#000000); // black
  }
  
  // all 12 hour "hands"
  if(presentHour == 1 || presentHour == 13){
    image(pump, 50, height * .25, 90, 80);
  } else { 
    image(pump, 50, height/2, 90, 80);
    }
  
  if(presentHour == 2 || presentHour == 14){
    image(pump, 150, height * .25, 90, 80);
  } else {
    image(pump, 150, height/2, 90, 81);
  }
  
  if(presentHour == 3 || presentHour == 15){
    image(pump, 250, height * .25, 90, 80);
  } else {
    image(pump, 250, height/2, 90, 80);
  }
  if(presentHour == 4 || presentHour == 16){
    image(pump, 350, height * .25, 90, 80);
  } else {
    image(pump, 350, height/2, 90, 80);
  }
  if(presentHour == 5 || presentHour == 17){
    image(pump, 450, height * .25, 90, 80);
  } else {
    image(pump, 450, height/2, 90, 80);
  }
  if(presentHour == 6 || presentHour == 18){
    image(pump, 550, height * .25, 90, 80);
  } else {
    image(pump, 550, height/2, 90, 80);
  }
  if(presentHour == 7 || presentHour == 19){
    image(pump, 650, height * .25, 90, 80);
  } else {
    image(pump, 650, height/2, 90, 80);
  }
  if(presentHour == 8 || presentHour == 20){
    image(pump, 750, height * .25, 90, 80);
  } else {
    image(pump, 750, height/2, 90, 80);
  }  
  if(presentHour == 9 || presentHour == 21){
    image(pump, 850, height * .25, 90, 80);
  } else {
    image(pump, 850, height/2, 90, 80);
  }  
  if(presentHour == 10 || presentHour == 22){
    image(pump, 950, height * .25, 90, 80);
  } else {
    image(pump, 950, height/2, 90, 80);
  }  
  if(presentHour == 11 || presentHour == 23){
    image(pump, 1050, height * .25, 90, 80);
    rotate(minuteHand);
  } else {
    image(pump, 1050, height/2, 90, 80);
  }  
  if(presentHour == 12 || presentHour == 0){
    image(pump, 1150, height * .25, 90, 80);
  } else {
    image(pump, 1150, height/2, 90, 80);
  }  
  
}
