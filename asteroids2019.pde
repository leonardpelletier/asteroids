boolean upkey, downkey, leftkey, rightkey, spacekey;
PImage shipimg;
Ship myShip;
ArrayList<GameObject> myGameObjects;

void setup() {
  size(800, 600);
  shipimg = loadImage("ship.png");
  shipimg.resize(100,100);
  imageMode(CENTER);
  myShip = new Ship();
  myGameObjects = new ArrayList<GameObject>();
}

void draw() {
  background(0);
  myShip.show();
  myShip.act();
  
  int i = 0;
  while (i < myGameObjects.size()) {
    GameObject bullet = myGameObjects.get(i);
    bullet.show();
    bullet.act();
    i++;
  }
  
}

void keyPressed() {
  if (keyCode == UP)    upkey = true; 
  if (keyCode == DOWN)  downkey = true;
  if (keyCode == LEFT)  leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (key == ' ')       spacekey = true;
}

void keyReleased() {
  if (keyCode == UP)    upkey = false; 
  if (keyCode == DOWN)  downkey = false;
  if (keyCode == LEFT)  leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (key == ' ')       spacekey = false;
}
