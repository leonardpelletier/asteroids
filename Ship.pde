class Ship extends GameObject {

  //1. Instance variables
  PVector direction;
  int shotTimer;
  int threshold;

  //2. Constructor(s)
  Ship() {
    lives = 3;
    shotTimer = 0;
    threshold = 30;

    location = new PVector(width/2, height/2);   
    velocity = new PVector(0, 0);
    direction = new PVector(0, -0.1);
  }

  //3. Behaviour functions
  void show() {
    pushMatrix();
    translate(location.x, location.y);
    rotate( direction.heading() );
    stroke(0,255,0);
    noFill();
    triangle(-25, -12.5, -25, 12.5, 25, 0);
    popMatrix();
  }

  void act() {
    super.act();

    shotTimer++;

    if (upkey)    velocity.add(direction);
    if (downkey) velocity.sub(direction);
    if (leftkey) direction.rotate( -radians(2) );
    if (rightkey) direction.rotate( radians(2) );
    if (spacekey && shotTimer >= threshold) { 
      myGameObjects.add(new Bullet());
      shotTimer = 0;
    }
  }
}
