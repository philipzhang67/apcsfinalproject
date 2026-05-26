class CityLane {
  private int y;
  private int laneHeight;
  private ArrayList<Car> cars;
  private int direction;
  private float carSpeed;
  private boolean isRoad;
  public CityLane(int y, int laneHeight, int direction, float carSpeed, boolean isRoad) {
    this.y = y;
    this.laneHeight = laneHeight;
    this.direction = direction;
    this.carSpeed = carSpeed;
    this.isRoad = isRoad;
    cars = new ArrayList<Car>();
    if (isRoad) {
      createCars();
    }
  }
  private void createCars() {
    int carWidth = 70;
    int carHeight = 35;
    int spacing = 180;
    for (int i = 0; i < 4; i++) {
      float carX = i * spacing;
      if (direction == -1) {
        carX += width / 2;
      }
      Car car = new Car(carX, y + laneHeight / 2 - carHeight / 2, carSpeed, carWidth, carHeight, direction);
      cars.add(car);
    }
  }
  public void updateCars() {
    if (isRoad) {
      for (Car car : cars) {
        car.move();
      }
    }
  }
  public void displayLane() {
    if (isRoad) {
      fill(60);
      rect(0, y, width, laneHeight);
      stroke(255, 255, 0);
      strokeWeight(2);
      for (int i = 0; i < width; i += 40) {
        line(i, y + laneHeight / 2, i + 20, y + laneHeight / 2);
      }
      noStroke();
      for (Car car : cars) {
        car.display();
      }
    } else {
      fill(80, 200, 100);
      rect(0, y, width, laneHeight);
    }
  }
  public boolean checkCollision(Player player) {
    if (!isRoad) {
      return false;
    }
    for (Car car : cars) {
      if (car.collidesWith(player)) {
        return true;
      }
    }
    return false;
  }
  public int getY() {
    return y;
  }
  public int getLaneHeight() {
    return laneHeight;
  }
  public boolean getIsRoad() {
    return isRoad;
  }
}
