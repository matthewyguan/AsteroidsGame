class Star {
  private int x;
  private int y;
  private int brightness;

  public Star() {
    x = (int)(Math.random() * width);
    y = (int)(Math.random() * height);
    brightness = (int)(Math.random() * 255);
  }

  public void show() {
    stroke(brightness);
    point(x, y);
  }
}
