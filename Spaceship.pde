class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid() {
    corners = 6;
    xCorners = new int[]{25,13,-13,-25,-13,13};
    yCorners = new int[]{0,22,22,0,-22,-22};
    myColor = color(#555454);
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = Math.random()*width;
    myCenterY = Math.random()*height;
    myPointDirection = 0;
    rotSpeed = Math.random()*0.5;
  }
  public void move() {
    myPointDirection += rotSpeed;
  }
  public double getmyCenterX() {
    return myCenterX;
  }
  public void setmyCenterX(int x) {
    myCenterX = x;
  }
  public double getmyCenterY() {
    return myCenterY;
  }
  public void setmyCenterY(int y) {
    myCenterY = y;
  }
}
