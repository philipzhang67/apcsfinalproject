class MovingObject {
  protected float x;
  protected float y;
  protected float speed;
  protected int w;
  protected int h;
  public MovingObject(float x, float y, float speed, int w, int h) {
    this.x = x;
    this.y = y;
    this.speed = speed;
    this.w = w;
    this.h = h;
  }
  public void move() {
    // abstract
  }
  public void display() {
    // abstract
  }
  public boolean isOffScreen() {
    return x > width || x + w < 0;
  }
}
