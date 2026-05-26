class Player {
  private int x;
  private int y;
  private int size;
  private int startX;
  private int startY;
  private int highestRow;
  public Player(int x, int y, int size) {
    this.x = x;
    this.y = y;
    this.size = size;
    this.startX = x;
    this.startY = y;
    this.highestRow = y;
  }
  public void move(int dx, int dy) {
    x += dx;
    y += dy;
    if (x < 0) {
      x = 0;
    }
    if (x > width - size) {
      x = width - size;
    }
    if (y < 0) {
      y = 0;
    }
    if (y > height - size) {
      y = height - size;
    }
    if (y < highestRow) {
      highestRow = y;
    }
  }
  public void display() {
    fill(255, 220, 0);
    ellipse(x + size / 2, y + size / 2, size, size);
    fill(0);
    ellipse(x + size / 2 + 6, y + size / 2 - 5, 5, 5);
  }
  public void reset() {
    x = startX;
    y = startY;
    highestRow = startY;
  }
  public int getX() {
    return x;
  }
  public int getY() {
    return y;
  }
  public int getSize() {
    return size;
  }
  public int getHighestRow() {
    return highestRow;
  }
}
