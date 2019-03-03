class Bird {
  int posX, posY;
  float fallAccel, jumpAccel;
  boolean isJumping;

  Bird() {
    this.posX = 200;
    this.posY = height/2;
    this.fallAccel = 0;
    this.jumpAccel = 0;
    this.isJumping = false;
  }

  void move() {

    if (isJumping) {
      this.posY -= this.jumpAccel;
      
      if(this.jumpAccel > 2)
        this.jumpAccel -= 0.8;
      else{
        this.jumpAccel -= 0.2;
      }
    }
    else{
      this.posY += this.fallAccel;
      this.fallAccel += 0.4;
    }

    if (!isJumping && this.fallAccel < 3.0) {
      this.fallAccel = 3.0;
    }

    if (isJumping && this.jumpAccel < 0) {
      this.jumpAccel = 0;
      isJumping = false;
    }
  }

  void jump() {
    isJumping = true;
    this.jumpAccel = 10;
    this.fallAccel = 2;
  }

  void drawBird() {
    fill(0, 255, 0);
    rect(this.posX, this.posY, 40, 40);
  }
}
