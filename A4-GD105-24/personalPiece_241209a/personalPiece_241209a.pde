/*
I want to make a gun that shoots three different colour pellets depending on which 
button is pressed. Depending on the colour of the bullet the speed will vary.
*/

Bullet slowBullet, midBullet, fastBullet;
PImage Target,Target2, Tool;
int[] bulletSize = {15, 20, 60};
float hor = width/2.0;
float BTdist = dist(hor, height/2.0, 320, 175);


void setup(){
  size(666, 666);
  background(255);
  midBullet = new Bullet(hor, height/2.0, bulletSize[1]);
  slowBullet = new Bullet(hor, height/2.0, bulletSize[2]);
  fastBullet = new Bullet(hor, height/2.0, bulletSize[0]);
  Target = loadImage("Target.png");
  Target2 = loadImage("Target2.png");
  Tool = loadImage("tool.png");
}

void draw(){
  background(255);
  image(Tool, 90, 275); 
  fastBullet.firingGreen();
  midBullet.firingRed();
  slowBullet.firingBlue();
  
  
 
  for(int i = 0; i < bulletSize.length; i++){
    boolean hitting =  BTdist < bulletSize[i];
    if(hitting){
      image(Target2, 320, 175);
    } else{
      image(Target, 320, 175);
    }
  }  
}
