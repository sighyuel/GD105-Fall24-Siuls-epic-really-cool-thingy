/* I decicided with this piece to make a college of some trips I went to with a
program called Coffee talk. They specialize in giving youth in New York City 
opportunites of getting to learn history in person instead of in a classroom.
With Coffee Talk I went to Atlanta, Alabama, Mississippi, Boston, and Philly
to learn history about activist and the progression that occured in those cities by
important civil rights activist. All of these trips have had a massive impact on me so
I believed it was important for me to honor the program with something like this. 
*/

PImage grave;
PImage children;
PImage dancing;
PImage homer;
PImage maize;
PImage cell;
PImage sign;
PImage water;
PImage pastors;

void setup() {
  size(666,666);
  grave = loadImage("bostonGrave.png"); // Granary Burying Ground
  children = loadImage("childrenCrying.png"); // 16th street baptist church
  dancing = loadImage("dancingMan.png"); // Penn Museum
  homer = loadImage("homer.png"); // Penn Museum
  maize = loadImage("maize.png"); // Penn Museum
  cell = loadImage("prisionCell.png"); // Eastern State Penitentiary
  sign = loadImage("prisonSign.png"); // Eastern State Penitentiary
  water = loadImage("waterGoddess.png"); // Penn Museum
  pastors = loadImage("pastors.png"); // 16th street baptist church
  imageMode(CENTER);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  
  // background images
  
  image(grave, -123, -121, 420, 420);
  image(pastors, 170, -125, 420, 420);
  image(cell, -8, 209, 846, 255);
  
  // foreground images 
  
  image(sign, -166, 137, 370, 370);
  image(water, 53, -4, 225, 225);
  image(children, -216, -53, 252, 252);
  image(dancing, 59, 192, 240, 240);
  image(maize, 271, -47, 220, 220);
  tint(#434d59);
  image(homer, -158, -188, 220, 220);
  noTint();
}
