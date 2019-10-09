class Bullet extends GameObject {



  Bullet() {
    
    location = new PVector (myShip.location.x, myShip.location.y);
    //location.x = myShip.location.x;
    //location.y = myShip.location.y;
    
    velocity = new PVector (myShip.direction.x, myShip.direction.y);
    velocity.setMag(10);
    
    //velocity.x = myShip.direction.x;
    //velocity.y = myShip.direction.y;
  }

  void show() {
    fill(255, 0, 0);
    ellipse(location.x, location.y, 25, 25);
  }
  
  void act() {
     location.add(velocity); 
  }
}
