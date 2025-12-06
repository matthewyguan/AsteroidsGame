class Bullet extends Floater {
  Bullet(Spaceship ship) {
    myCenterX = ship.getmyCenterX();
    myCenterY = ship.getmyCenterY();
    myXspeed = ship.getXspeed();
    myYspeed = ship.getYspeed();
    myPointDirection = ship.getmyPointDirection();
    corners = 0;
    myColor = color(255);
  }
  public void show () {
    ellipse((float)myCenterX,(float)myCenterY,(float)2,(float)2);
  }
   public double getmyCenterX() {
    return myCenterX;
  }
  public void setmyCenterX(double x) {
    myCenterX = x;
  }
  public double getmyCenterY() {
    return myCenterY;
  }
  public void setmyCenterY(double y) {
    myCenterY = y;
  }
}
