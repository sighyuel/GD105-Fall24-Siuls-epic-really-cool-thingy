PFont Anarrow;

void setup () {
  size(600, 600);
  Anarrow = loadFont("ArialNarrow-140.vlw");
}

void draw () {
 // BEAUTIFUL brat GREEN!
 
  background(#8ACE00);
  fill(0);
 
 // Wonderful brat FONT!!
  textFont(Anarrow);
  text("brat" , 196, 352);
   
   if(frameCount == 1) {
    save("textPiece_2024-09-17.png");
  }
}
