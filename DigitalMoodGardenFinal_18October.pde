// Digital Mood Garden
// 52685 Creative Coding A2
// Interactive flower garden created in Processing (Java Mode)

void setup() {
  // Create the canvas and set the final cream background colour
  size(900, 650);
  background(245, 240, 230);
}

void draw() {
  // No continuous animation is needed for this project
}

// Create one flower at the mouse position when the user clicks
void mousePressed() {
  float flowerSize = random(50, 90);

  // Keep the colours varied but within a softer pink/purple range
  color flowerColor = color(
    random(190, 255),
    random(140, 210),
    random(170, 240)
  );

  drawFlower(mouseX, mouseY, flowerSize, flowerColor);
}

// Draw a five-petal flower using the position, size and colour values
void drawFlower(float x, float y, float s, color c) {
  pushMatrix();
  translate(x, y);

  noStroke();
  fill(c);

  // Repeat and rotate the petal shape five times
  for (int i = 0; i < 5; i++) {
    rotate(TWO_PI / 5.0);
    ellipse(0, -s * 0.28, s * 0.42, s * 0.60);
  }

  // Draw the flower centre
  fill(255, 200, 0);
  ellipse(0, 0, s * 0.30, s * 0.30);

  popMatrix();
}

// Keyboard controls: R resets the garden and S saves the artwork
void keyPressed() {
  if (key == 'r' || key == 'R') {
    background(245, 240, 230);
  }

  if (key == 's' || key == 'S') {
    saveFrame("DigitalMoodGarden-####.png");
  }
}
