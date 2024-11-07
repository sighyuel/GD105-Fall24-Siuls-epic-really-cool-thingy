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

void setup(){
  size(666,666);
  for(int i = 0; i < springNames.length; i++){
    winterFiles[i] = loadImage(winterNames[i]);
    springFiles[i] = loadImage(springNames[i]);
    summerFiles[i] = loadImage(summerNames[i]);
    fallFiles[i] = loadImage(fallNames[i]);
  }
  
}
