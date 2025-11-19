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
}
