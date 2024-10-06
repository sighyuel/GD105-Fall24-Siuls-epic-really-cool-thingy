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
  sign = loadImage("prisonSign.png"); // Eastern State Penitentiary
  water = loadImage("waterGoddess.png"); // Penn Museum
  pastors = loadImage("pastors.png"); // 16th street baptist church
  imageMode(CENTER);
}

void draw() {
  background(255);
  translate(width/2, height/2);
  
  // background image

  image(grave, 0, 0, 666, 666);

  // foreground images   
  tint(#434d59);
  image(pastors, -15, 40, 255, 322);
  image(sign, 272, -99, 370, 370);
  image(dancing, 238, 90, 240, 240);  
  image(water, 182, 27, 320, 320);
  image(homer, -229, 4, 220, 220);
  image(maize, -229, 133, 220, 220);  
  noTint();
  image(children, 24, 93, 355, 430);

if(frameCount == 1) {
    save("collagePiece_2024-10-5.png");    
 }
 
/* Artist Comments :)
All the images I've selected represent death and show the consequences. The children
crying to the pastors represents the despair we get from death and how it can make us
look anywhere for just a glimmer of hope. The homer, maize, and water goddess shows 
other cultures represent death in a grim way as well. The dancing man shows that some
cultures celebrate death and see it as a good thing that we should all be happy for, 
as if its some graduation to the next stage of life. The sign represents the prision
our emotions can lock us into when we face something so challenging as death.
*/
}
