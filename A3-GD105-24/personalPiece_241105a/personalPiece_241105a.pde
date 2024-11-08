/*
I am making a collage that will change depending on the season of the year. Winter, 
Spring, Summer, and Fall with all have their own images and background colours that 
represent the seasons.
*/

// Winter images
String[] winterNames = { "Dreidel.png", "Tree.png", "Kwanza.png" };
PImage[] winterFiles = new PImage[winterNames.length];

// Spring images
String[] springNames = { "Bee.png", "Egg.png", "Flowers.png" };
PImage[] springFiles = new PImage[springNames.length];

// Summer images
String[] summerNames = { "Sun.png", "Fireworks.png", "Melon.png" };
PImage[] summerFiles = new PImage[summerNames.length];

// Fall images
String[] fallNames = { "Turkey.png", "Muertos.png", "Pumpkin.png" };
PImage[] fallFiles = new PImage[fallNames.length];

// setting the months 
int[] winterMonths = { 12, 1, 2};
int[] springMonths = { 3, 4, 5};
int[] summerMonths = { 6, 7, 8};
int[] fallMonths = { 9, 11, 10};

// background colours matches season themes
color[] springColors = { #00ff7f,#C8A2C8 }; 
color[] summerColors = { #FDFD96, #77DD77 };
color[] fallColors = { #964B00, #540076};

void setup(){
  size(666,666);
  imageMode(CENTER);
  background(#FFFFFF);
  noSmooth();
  for(int i = 0; i < springNames.length; i++){
    winterFiles[i] = loadImage(winterNames[i]);
    springFiles[i] = loadImage(springNames[i]);
    summerFiles[i] = loadImage(summerNames[i]);
    fallFiles[i] = loadImage(fallNames[i]);
  }
  
}

void draw(){
 
  // patterned backgrounds
  strokeWeight(50);
  
  // turn month function into variable
  int currentMonth = month();
  

  for( int i = 0; i <= 2; i++){ //  collage last entire season
    if(currentMonth == winterMonths[i]){ //  adjust for winter months
      stroke(#6DD4F0); // background pattern 
      line(0, 50, 666, 50);
      line(0, 150, 666, 150);
      line(0, 250, 666, 250);
      line(0, 350, 666, 350);
      line(0, 450, 666, 450);
      line(0, 550, 666, 550);
      line(0, 650, 666, 650);
      image(winterFiles[0], 125, 175, 420, 420); 
      image(winterFiles[1], 530, 155);
      image(winterFiles[2], 333, 515);
    }
  }
    for(int i = 0; i < 2; i++){   
      if(currentMonth == springMonths[i]){ // adjust for spring season
        stroke(springColors[0]); // patterned background
        line(0, 30, 666, 30);
        line(0, 120, 666, 120); 
        line(0, 210, 666, 210);
        line(0, 290, 666, 290);
        line(0, 360, 666, 360);
        line(0, 430, 666, 430);
        line(0, 480, 666, 480);
        line(0, 530, 666, 530);
        line(0, 600, 666, 600);
        stroke(springColors[1]);
        line(0, 0, 666, 0);
        line(0, 80, 666, 80);
        line(0, 160, 666, 160);
        line(0, 240, 666, 240);
        line(0, 320, 666, 320);
        line(0, 400, 666, 400);
        line(0, 480, 666, 480);
        line(0, 560, 666, 560);
        line(0, 645, 666, 645);
        image(springFiles[0], 125, 175);
        image(springFiles[1], 530, 155);
        image(springFiles[2], 333, 515);
    }
      if(currentMonth == summerMonths[i]){ // adjust for summer season
        stroke(summerColors[0]);
        line(0, 30, 666, 30);
        line(0, 120, 666, 120);
        line(0, 210, 666, 210);
        line(0, 290, 666, 290);
        line(0, 360, 666, 360);
        line(0, 430, 666, 430);
        line(0, 480, 666, 480);
        line(0, 530, 666, 530);
        line(0, 600, 666, 600);
        stroke(summerColors[1]);
        line(0, 0, 666, 0);
        line(0, 80, 666, 80);
        line(0, 160, 666, 160);
        line(0, 240, 666, 240);
        line(0, 320, 666, 320);
        line(0, 400, 666, 400);
        line(0, 480, 666, 480);
        line(0, 560, 666, 560);
        line(0, 645, 666, 645);
        image(summerFiles[0], 125, 175);
        image(summerFiles[1], 530, 155);
        image(summerFiles[2], 333, 515);
    }
      if(currentMonth == fallMonths[i]){ // adjust for fall months
        stroke(fallColors[0]);
        line(0, 30, 666, 30);
        line(0, 120, 666, 120);
        line(0, 210, 666, 210);
        line(0, 290, 666, 290);
        line(0, 360, 666, 360);
        line(0, 430, 666, 430);
        line(0, 480, 666, 480);
        line(0, 530, 666, 530);
        line(0, 600, 666, 600);
        stroke(fallColors[1]);
        line(0, 0, 666, 0);
        line(0, 80, 666, 80);
        line(0, 160, 666, 160);
        line(0, 240, 666, 240);
        line(0, 320, 666, 320);
        line(0, 400, 666, 400);
        line(0, 480, 666, 480);
        line(0, 560, 666, 560);
        line(0, 645, 666, 645);
        image(fallFiles[0], 125, 175);
        image(fallFiles[1], 530, 155, 250, 250);
        image(fallFiles[2], 333, 515);
    }
  }
  //if(frameCount == 1){
  //  save("personalPiece-11-07-2024.png");
  //}
}
