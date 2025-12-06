class Spaceship extends Floater  
{   
  public Spaceship() {
    corners = 3;
    xCorners = new int[]{-10,12,-10};
    yCorners = new int[]{7,0,-7};
    myColor = color(#767575);
    myCenterX = 500;
    myCenterY = 500;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
  }
  public void hyperspace() {
    myCenterX = Math.random()*width;
    myCenterY = Math.random()*height;
    myPointDirection = Math.random()*2*PI;
    myXspeed = 0;
    myYspeed = 0;
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
  public double getmyPointDirection() {
    return myPointDirection;
  }
  public void setmyPointDirection(double pd){
    myPointDirection = pd;
  }
  public double getXspeed() {
    return myXspeed;
  }
  public void setXspeed(double x) {
    myXspeed = x;
  }
  public double getYspeed() {
    return myYspeed;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
}
}
