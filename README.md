# Digital Mood Garden

## Project Overview

Digital Mood Garden is a simple interactive visual art prototype created in Processing.

The user can click anywhere on the canvas to create a five-petal flower. Each flower appears at the mouse position and has a random size and a colour generated within a controlled pink and purple RGB range, so each garden looks slightly different.

## Main Features

- Click the mouse to create a flower.
- Each flower appears where the user clicks.
- Flower size is randomly generated between 50 and 90.
- Flower colour is randomly generated within a controlled pink and purple RGB range.
- Each flower has five evenly spaced petals.
- Press `R` to clear the canvas and return to the cream background.
- Press `S` to save the current artwork as a PNG image.

## How to Run

1. Install Processing.
2. Open Processing in Java Mode.
3. Open `DigitalMoodGardenFinal_18October.pde`.
4. Press the Run button.
5. Click anywhere on the canvas to create flowers.

## Controls

- Mouse click — create a flower
- `R` — reset the garden
- `S` — save the current image

## Code Structure

### `setup()`

Creates a 900 × 650 canvas and sets the background to `background(245, 240, 230)`, a soft cream colour.

### `draw()`

Processing uses `draw()` as its main loop. This project does not need continuous animation, so the function is empty.

### `mousePressed()`

Runs whenever the mouse is clicked. It generates a random flower size between 50 and 90 and a flower colour using these controlled RGB ranges:

- Red: 190–255
- Green: 140–210
- Blue: 170–240

It then calls `drawFlower()` using the current `mouseX` and `mouseY` position.

### `drawFlower()`

Uses `translate()` to move the drawing position to the mouse location. A `for` loop repeats the petal shape five times. `TWO_PI / 5.0` divides one full rotation into five equal angles so the petals are evenly spaced.

The flower centre uses `fill(255, 200, 0)`.

### `keyPressed()`

Checks keyboard input.

- `R` redraws the cream background and clears the current garden.
- `S` uses `saveFrame("DigitalMoodGarden-####.png")` to save the current artwork.

## Key Processing Functions Used

- `size()`
- `background()`
- `mousePressed()`
- `mouseX`
- `mouseY`
- `random()`
- `color()`
- `pushMatrix()`
- `popMatrix()`
- `translate()`
- `rotate()`
- `TWO_PI`
- `ellipse()`
- `keyPressed()`
- `saveFrame()`

## External Libraries and Assets

No external libraries or image assets are required. All visual elements are generated directly in Processing.

## Author

Junlin Cheng  
52685 Creative Coding — Spring 2026
