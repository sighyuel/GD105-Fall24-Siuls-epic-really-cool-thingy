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
  
  // in the cell
  image(sign, -166, 137, 370, 370);
  image(dancing, 59, 192, 240, 240);

  // being prayed for
  
  image(water, 98, -44, 225, 225);
  image(maize, 194, -70, 220, 220);
  
  //in the burial ground
  
  tint(#434d59);
  image(homer, -235, -214, 220, 220);
  noTint();
  image(children, -216, -53, 252, 252);
  
/* Artist Comments I suppose
The placement with each image is important and has meaning with the correlating 
background. The dancing man statue is in the prision cell because the prision cell is
an art piece with vibrant colours and they both reminded me of how people have to 
keep high spirits while in such sorrow moments in their lives like being inprisioned.
The sign was at Eastern State Penitentiary so it fit perfect for what I wanted.
The two images being prayed by the pastors are two religous imagery from indigenous
societies throughout the globe. The children relate with the background of the graveyard
because the children were civil rights activist who were willing to die for what they
believed in. The homer was something used for post death celebration for civilizations
around the Mediterranean Sea.
*/  

if(frameCount == 1) {
    save("collagePiece_2024-10-5.png");
 }
}
