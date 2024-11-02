float minuteHand;

void setup(){
  size(666,666);
  background(#000000);
}

void draw(){
  
  minuteHand = map(minute(), 0, 59, 0, TAU * 0.05);
  
  rotate(minuteHand);
  rect(width/2, height/2, 200, 500);
}
