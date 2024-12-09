class Enemi {
  float x, y, w, h; // Position and size of the block
  float speed; // Speed of the block
  int points; // Points for this block

  Enemi(float x, float y, float w, float h, float speed) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.speed = speed;
    this.points = int(random(1, 11)); // Random points between 1 and 10
  }

  // Update the block's position based on direction
  void update(boolean moveRight) {
    x += moveRight ? speed : -speed;
  }

  // Draw the block
  void draw() {
    fill(255, 0, 0); // Color of the block
    rect(x, y, w, h); // Draw rectangle
    
    // Draw the score on the block
    fill(0);
    textSize(12);
    textAlign(CENTER, CENTER);
    text(points, x + w / 2, y + h / 2);
  }
}
