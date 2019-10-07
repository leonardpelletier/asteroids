boolean upkey, downkey, leftkey, rightkey;
PImage shipimg;
Ship myShip;

void setup() {
  size(800, 600);
  shipimg = loadImage("ship.png");
  shipimg.resize(100,100);
  imageMode(CENTER);
  myShip = new Ship(); 
}

void draw() {
  background(0);
  myShip.show();
  myShip.act();
}

void keyPressed() {
  if (keyCode == UP)    upkey = true; 
  if (keyCode == DOWN)  downkey = true;
  if (keyCode == LEFT)  leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
}

void keyReleased() {
  if (keyCode == UP)    upkey = false; 
  if (keyCode == DOWN)  downkey = false;
  if (keyCode == LEFT)  leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
}
