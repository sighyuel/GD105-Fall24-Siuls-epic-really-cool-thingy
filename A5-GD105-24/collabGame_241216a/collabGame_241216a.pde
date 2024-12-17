import processing.sound.*;
SoundFile coinSound, deathSound, bgm;

Car car;
ArrayList<Coin> coins;
int collectedCoins = 0;
PGraphics trackMask; // Mask to define the race track
int tileSize = 20;   // Smaller size for tiles
int timer = 15;      // Timer starts at 15 seconds
boolean gameOver = false; // Game state tracker
int lastTime;        // Track time for timer updates

void setup() {
  fullScreen(); // Fullscreen mode
  car = new Car();
  coins = new ArrayList<Coin>();
  lastTime = millis(); // Initialize time tracker
  
  // Sounds for game
  coinSound = new SoundFile(this, "coinSound.wav");
  deathSound = new SoundFile(this, "endNoise.wav");
  bgm = new SoundFile(this, "background.wav");
  // Create the track mask
  trackMask = createGraphics(width, height);
  drawRaceTrack();
  
  // Add initial coins
  for (int i = 0; i < 15; i++) { // More coins since the track is larger
    coins.add(new Coin());
  }
  bgm.play();
}

void draw() {
  if (!gameOver) {
    // Timer logic
    if (millis() - lastTime >= 1000) {
      timer--; // Decrease timer by 1 every second
      lastTime = millis(); // Reset time tracker
    }

    // End game if timer hits 0
    if (timer <= 0) {
      gameOver = true;
    }
    
    // Draw the track
    image(trackMask, 0, 0);

    // Update and display the car
    car.update();
    car.display();

    // Display and handle coin collection
    for (int i = coins.size() - 1; i >= 0; i--) {
      Coin c = coins.get(i);
      c.display();

      if (car.collects(c)) {
        coinSound.play(1.0, 0.10);
        coins.remove(i);
        collectedCoins++;
        car.speed += 0.25; // Increase car speed
        coins.add(new Coin()); // Add a new coin
        // Reset timer based on collected coins
        timer = 15 - (collectedCoins / 3);
        if (timer < 2){
          timer = 2;
        }
      }
    }

    // Display score and timer
    fill(255,0,0);
    textSize(20);
    text("Coins Collected: " + collectedCoins, 10, 20);
    text("Time Left: " + timer, 10, 50);
  } else {
    // Game over screen
    background(0);
    fill(255, 0, 0);
    textSize(40);
    text("You Lose!", width / 2 - 100, height / 2 - 20);

    // Retry button
    fill(255);
    rect(width / 2 - 75, height / 2 + 20, 150, 50);
    fill(0);
    textSize(20);
    text("Retry", width / 2 - 30, height / 2 + 55);
  }
  if (gameOver){
    deathSound.play(1, 0.0);
  }
  

}

// Reset game
void resetGame() {
  car = new Car();
  coins.clear();
  collectedCoins = 0;
  timer = 15;
  gameOver = false;

  // Add initial coins
  for (int i = 0; i < 15; i++) {
    coins.add(new Coin());
  }
}

// Track mouse clicks for retry button
void mousePressed() {
  if (gameOver && mouseX > width / 2 - 75 && mouseX < width / 2 + 75 && mouseY > height / 2 + 20 && mouseY < height / 2 + 70) {
    resetGame();
  }
}

// Draw the race track
void drawRaceTrack() {
  trackMask.beginDraw();
  trackMask.background(255); // White background (drivable)

  trackMask.fill(0); // Black areas are impassable
  trackMask.noStroke();

  int tileMargin = tileSize * 2; // Margin size for the outer wall

  // Outer border (impassable)
  trackMask.rect(0, 0, width, tileMargin); // Top
  trackMask.rect(0, height - tileMargin, width, tileMargin); // Bottom
  trackMask.rect(0, 0, tileMargin, height); // Left
  trackMask.rect(width - tileMargin, 0, tileMargin, height); // Right

  // Center block (impassable)
  int centerMargin = 6 * tileSize;
  trackMask.rect(centerMargin, centerMargin, width - 2 * centerMargin, height - 2 * centerMargin);

  // Create square obstacles around the track edges
  int obstacleSize = 4 * tileSize;
  int gapSize = 6 * tileSize; // Gaps between obstacles to ensure connectivity

  // Top row obstacles
  for (int x = tileMargin; x < width - tileMargin; x += obstacleSize + gapSize) {
    trackMask.fill(0); // Black obstacles
    trackMask.rect(x, tileMargin, obstacleSize, obstacleSize);
  }

  // Bottom row obstacles
  for (int x = tileMargin; x < width - tileMargin; x += obstacleSize + gapSize) {
    trackMask.fill(0);
    trackMask.rect(x, height - tileMargin - obstacleSize, obstacleSize, obstacleSize);
  }

  // Left column obstacles
  for (int y = tileMargin; y < height - tileMargin; y += obstacleSize + gapSize) {
    trackMask.fill(0);
    trackMask.rect(tileMargin, y, obstacleSize, obstacleSize);
  }

  // Right column obstacles
  for (int y = tileMargin; y < height - tileMargin; y += obstacleSize + gapSize) {
    trackMask.fill(0);
    trackMask.rect(width - tileMargin - obstacleSize, y, obstacleSize, obstacleSize);
  }

  // Create square gaps in the outer border for entry/exit points
  int holeSize = 4 * tileSize;

  trackMask.fill(255); // Ensure entry/exit points are passable
  // Top border hole
  trackMask.rect(width / 2 - holeSize / 2, tileMargin, holeSize, tileMargin);

  // Bottom border hole
  trackMask.rect(width / 2 - holeSize / 2, height - tileMargin, holeSize, tileMargin);

  // Left border hole
  trackMask.rect(tileMargin, height / 2 - holeSize / 2, tileMargin, holeSize);

  // Right border hole
  trackMask.rect(width - tileMargin, height / 2 - holeSize / 2, tileMargin, holeSize);

  trackMask.endDraw();
}




// Key press tracking
ArrayList<Character> keysPressed = new ArrayList<Character>();

void keyPressed() {
  if (!keysPressed.contains(key)) {
    keysPressed.add(key);
  }
}

void keyReleased() {
  keysPressed.remove(Character.valueOf(key));
}
