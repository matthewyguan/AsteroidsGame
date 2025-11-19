Spaceship bob;
Star[] stars;
boolean wHeld = false;
boolean aHeld = false;
boolean dHeld = false;
boolean sHeld = false;

public void setup() 
{
  size(1000,1000);
  bob = new Spaceship();
  stars = new Star[200];
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}
public void draw() 
{
  background(#000000);
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  if (aHeld) {
    bob.turn(-2);
  }
  if (dHeld) {
    bob.turn(2);
  }
  if (wHeld) {
    bob.accelerate(0.05);
  }
  if (sHeld) {
    bob.accelerate(-0.05);
  }
  bob.myXspeed *= 0.99;
  bob.myYspeed *= 0.99;
  bob.show();
  bob.move();
}
public void keyPressed() {
  if (key == 'a') {
    aHeld = true;
  }
  if (key == 'd') {
    dHeld = true;
  }
  if (key == 'w') {
    wHeld = true;
  }
  if (key == 's') {
    sHeld = true;
  }
  if (key == 'r') {
    bob.hyperspace();
  }
}
public void keyReleased() {
  if (key == 'a') {
    aHeld = false;
  }
  if (key == 'd') {
    dHeld = false;
  }
  if (key == 'w') {
    wHeld = false;
  }
  if (key == 's') {
    sHeld = false;
  }
}
