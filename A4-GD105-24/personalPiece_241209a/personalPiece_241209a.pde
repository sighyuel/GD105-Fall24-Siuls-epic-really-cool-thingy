/*
I want to make a gun that shoots three different colour pellets depending on which 
button is pressed. Depending on the colour of the bullet the speed will vary.
*/

Bullet b;
PImage Target,Target2, Tool;
int[] bulletSize = {15, 20, 60};
float hor = width/2.0;
float BTdist = dist(hor, height/2.0, 320, 175);
int chargeTime = millis();
PVector imagePos;

void setup(){
  size(666, 666);
  background(255);
  imagePos = new PVector(555.0, 400.0);
  b = new Bullet(99999, 99999, "type");
  Target = loadImage("Target.png");
  Target2 = loadImage("Target2.png");
  Tool = loadImage("tool.png");
}

void draw(){
  background(255);
  image(Tool, mouseX - 80, mouseY + 35);
  image(Target, imagePos.x, imagePos.y);
  b.update();
  b.display();
  imageMode(CENTER);
  //circle(444, 222, 50);

}

void mousePressed(){
  chargeTime = millis();
}

void mouseReleased(){
  chargeTime = millis() - chargeTime;
  println("chargeTime", chargeTime);
  int slowCharge = 1000;
  int mediCharge = 500;
  
  if(chargeTime > slowCharge){
    b = new Bullet(mouseX, mouseY, "slow");
  } else if(chargeTime > mediCharge){
    b = new Bullet(mouseX, mouseY, "medi");
  } else {
    b = new Bullet(mouseX, mouseY, "fast");
  }
}
