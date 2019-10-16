boolean upkey, downkey, leftkey, rightkey, spacekey;
PImage shipimg;
Ship myShip;
ArrayList<GameObject> myGameObjects;

void setup() {
  size(800, 600);
  imageMode(CENTER);
  myShip = new Ship();
  myGameObjects = new ArrayList<GameObject>();
  
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
  myGameObjects.add(new Asteroid());
}

void draw() {
  background(0);
  myShip.show();
  myShip.act();
  
  int i = 0;
  while (i < myGameObjects.size()) {
    GameObject myObj = myGameObjects.get(i);
    myObj.show();
    myObj.act();
    if (myObj.lives == 0) {
       myGameObjects.remove(i); 
    } else {
       i++;
    }
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
