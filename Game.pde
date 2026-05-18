class Game {
  private Player player;
  private ArrayList<Lane> lanes;
  private int score;
  private boolean gameOver;

  public Game() {
    setupGame();
  }

  public void setupGame() {
    player = new Player(width / 2, height - 50, 30);
    lanes = new ArrayList<Lane>();
    int laneHeight = 60;
    for (int y = height - 120; y >= 0; y -= laneHeight) {
      int direction;
      if (y / laneHeight % 2 = 0){
        direction = 1;
      else{
        direction = -1;
      }

      float speed = random(2, 5);
      Lane lane = new y(

  public void update() {
    if (!gameOver) {
      for (Lane lane : lanes) {
        lane.updateCars();
      }
      checkCollision();
      updateScore();
    }
  }
  public void display() {
    background(80, 200, 100);
    // Display lanes
    for (Lane lane : lanes) {
      lane.displayLane();
    }
    // Display player
    player.display();
    // Display score
    fill(255);
    textSize(24);
    textAlign(LEFT, TOP);
    text("Score: " + score, 20, 20);
    if (gameOver) {
      displayGameOver();
    }
  }
  public void checkCollision() {
    for (Lane lane : lanes) {
      if (lane.checkCollision(player)) {
        gameOver = true;
      }
    }
  }
  public void updateScore() {
    int currentScore = (height - player.getY()) / 60;
    if (currentScore > score) {
      score = currentScore;
    }
  }

  public void movePlayer(int dx, int dy) {
    if (!gameOver) {
      player.move(dx, dy);
    }
  }

  public void restart() {
    setupGame();
  }

  private void displayGameOver() {
    fill(0, 180);
    rect(0, 0, width, height);

    fill(255);
    textAlign(CENTER, CENTER);
    textSize(48);
    text("GAME OVER", width / 2, height / 2 - 40);

    textSize(24);
    text("Final Score: " + score, width / 2, height / 2 + 10);
    text("Press R to restart", width / 2, height / 2 + 50);
  }

  public boolean isGameOver() {
    return gameOver;
  }

  public int getScore() {
    return score;
  }
}
