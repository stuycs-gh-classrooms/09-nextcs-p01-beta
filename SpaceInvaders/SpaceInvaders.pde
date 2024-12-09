int rows = 5, cols = 8; // Grid of blocks
float blockWidth = 50, blockHeight = 30;
Enemi[][] enemies; // Grid of enemies
boolean moveRight = true; // Direction of movement
float EnemiSpeed = 2; // Speed of movement
int moveDownAmount = 20; // How much the blocks move down after hitting the edge
int score = 0; // Score counter
boolean paused = false; // Game paused state

void setup() {
  size(800, 600); // Screen size
  initializeEnemies(); // Initialize the blocks
}

void draw() {
  background(0); // Clear the screen

  if (paused) {
    displayPaused(); // Display paused message
    return;
  }

  updateEnemies(); // Update Enemi positions
  drawEnemies(); // Draw the blocks

  displayScore(); // Display the score
}

// Initialize the grid of blocks
void initializeEnemies() {
  enemies = new Enemi[rows][cols];
  score = 0; // Reset score
  for (int i = 0; i < rows; i++) {
    for (int j = 0; j < cols; j++) {
      enemies[i][j] = new Enemi(j * (blockWidth + 10) + 50, i * (blockHeight + 10) + 50, blockWidth, blockHeight, EnemiSpeed);
    }
  }
}

// Update the blocks' movement
void updateEnemies() {
  boolean edgeHit = false;
  for (Enemi[] row : enemies) {
    for (Enemi e : row) {
      if (e != null) {
        e.update(moveRight); // Move the block
        if (e.x <= 0 || e.x + blockWidth >= width) edgeHit = true; // Check for edge hit
      }
    }
  }

  // Change direction and move down if an edge is hit
  if (edgeHit) {
    moveRight = !moveRight; // Reverse direction
    for (Enemi[] row : enemies) {
      for (Enemi e : row) {
        if (e != null) e.y += moveDownAmount; // Move blocks down
      }
    }
  }
}

// Draw the blocks on the screen
void drawEnemies() {
  for (Enemi[] row : enemies) {
    for (Enemi e : row) {
      if (e != null) e.draw(); // Draw each block
    }
  }
}

// Handle key press for player movement and actions
void keyPressed() {
  if (key == 'r' || key == 'R') {
    initializeEnemies(); // Reset game
  }
  if (key == 'o' || key == 'O') {
    paused = !paused; // Toggle pause state
  }
}

// Display the current score
void displayScore() {
  fill(255);
  textSize(20);
  textAlign(TOP, CENTER);
  text("Score: " + score, 10, 30);
}

// Display the paused state
void displayPaused() {
  fill(255, 255, 0);
  textSize(40);
  textAlign(CENTER, CENTER);
  text("Paused - Press 'O' to Resume", width / 2, height / 2);
}
