class Car extends MovingObject {
  private int direction;
  public Car(float x, float y, float speed, int w, int h, int direction) {
    super(x, y, speed, w, h);
    this.direction = direction;
  }
  public void move() {
    x += speed * direction;
    if (direction == 1 && x > width) {
      x = -w;
    }
    if (direction == -1 && x + w < 0) {
      x = width;
    }
  }
  public void display() {
    fill(200, 50, 50);
    rect(x, y, w, h, 8);
    fill(20);
    ellipse(x + 15, y + h, 15, 15);
    ellipse(x + w - 15, y + h, 15, 15);
    fill(180, 220, 255);
    rect(x + w / 3, y + 5, w / 3, h / 3);
  }
  public boolean collidesWith(Player p) {
    return p.getX() < x + w &&
           p.getX() + p.getSize() > x &&
           p.getY() < y + h &&
           p.getY() + p.getSize() > y;
  }
}
