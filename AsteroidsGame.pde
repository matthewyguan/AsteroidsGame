Spaceship bob;
Star[] stars;
ArrayList <Asteroid> sue;
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
  sue = new ArrayList <Asteroid> ();
  for (int i = 0; i < 18; i++) {
    sue.add(i, new Asteroid());
  }
}
public void draw() 
{
  background(#000000);
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  for (int i = 0; i < sue.size(); i++) {
    sue.get(i).show();
    sue.get(i).move();
    if (dist((float)sue.get(i).getmyCenterX(),(float)sue.get(i).getmyCenterY(),(float)bob.getmyCenterX(),(float)bob.getmyCenterY()) <=25)
    {
      sue.remove(i);
    }
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
