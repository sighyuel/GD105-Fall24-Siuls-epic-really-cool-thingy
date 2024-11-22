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
int[] winterMonths = { 12, 1 ,2};
int[] springMonths = { 3, 4, 5};
int[] summerMonths = { 6, 7, 8};
int[] fallMonths = { 9, 10, 11};

int currentMonth;

// background colours
color[] winterColors = { #FFFFFF, #6DD4F0 };
color[] springColors = { #E6E6FA, #C8A2C8 }; 
color[] summerColors = { #FDFD96, #77DD77 };
color[] fallColors = { #964B00, #964B00};


void setup(){
  size(666,666);
  imageMode(CENTER);
  for(int i = 0; i < springNames.length; i++){
    winterFiles[i] = loadImage(winterNames[i]);
    springFiles[i] = loadImage(springNames[i]);
    summerFiles[i] = loadImage(summerNames[i]);
    fallFiles[i] = loadImage(fallNames[i]);
  }
 
  // Images are in different positions everytime
  float post1 = random(111, 555);
  float post2 = random(111, 555);
  float post3 = random(111, 555);
    
}

void draw(){
  background(#FFFFFF);
 
  // patterned backgrounds
  strokeWeight(130);
  
  // variable for current month
  currentMonth = month();
  


    

  
}
