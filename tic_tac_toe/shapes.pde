void drawBoard () {
  background(255);
  stroke(0);
  strokeWeight(4);

  for (int i = 1; i < GRID_SIZE; i++) {
    line(i * CELL_SIZE, 0, i * CELL_SIZE, height);
    line(0, i * CELL_SIZE, width, i * CELL_SIZE);
  }

  for (int i = 0; i < 9; i++) {
    int row = i / GRID_SIZE;
    int col = i % GRID_SIZE;
    float x = col * CELL_SIZE + CELL_SIZE / 2;
    float y = row * CELL_SIZE + CELL_SIZE / 2;
  }

void drawX(float x, float y) {
  float offset = CELL_SIZE * 0.25;
  stroke(255, 0, 0);
  line(x - offset, y - offset, x + offset, y + offset);
  line(x - offset, y + offset, x + offset, y - offset);
  }
}  

void drawO(float x, float y) {
  float radius = CELL_SIZE * 0.4;
  noFill();
  stroke(0, 0, 255);
  ellipse(x, y, radius, radius);
  }
