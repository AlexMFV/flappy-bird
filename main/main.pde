ArrayList<Pipe> pipes;
Bird bird = new Bird();
Score score = new Score();

void setup() {
  size(800, 600);
  pipes = new ArrayList<Pipe>();
  pipes.add(new Pipe()); //Initial Pipe
}

void draw() {
  background(123, 206, 247);  
  bird.move();
  
  int index = 0;
  for (Pipe p : pipes) {
    p.drawPipes();
  }

  for (Pipe p : pipes) {
    if(!bird.isDead)
      p.move();
      
    if(!bird.isDead && p.x == 200)
      score.addScore();
    
    if(index <= 1)
      checkCollisions(p);

    if (p.x < 0 - p.size) {
      pipes.remove(index);
      break;
    }

    if (pipes.size() == index+1 && p.x < width - width/2.5) {
      pipes.add(new Pipe());
      break;
    }
    index++;
  }
  
  score.drawScore();
  bird.drawBird();
}

void checkCollisions(Pipe p){
  println(bird.posX, bird.posY, p.x, p.locY);
  //Check top pipe needs fixing
  if(!bird.isDead && bird.posX + 40 >= p.x && bird.posX + 40 <= p.x + (p.size/2.2) && bird.posY + 40 >= 0 && bird.posY + 40 <= p.locY-(p.size/2))
    bird.isDead = true;
  else
    if(!bird.isDead && bird.posX >= p.x && bird.posX <= p.x + (p.size/2.2) && bird.posY >= 0 && bird.posY <= p.locY-(p.size/2))
      bird.isDead = true;
  
  //Check bottom pipe
  if(!bird.isDead && bird.posX + 40 >= p.x && bird.posX + 40 <= p.x + (p.size/2.2) && bird.posY + 40 <= height && bird.posY + 40 >= p.locY + (p.size/2))
    bird.isDead = true;
  else
    if(!bird.isDead && bird.posX >= p.x && bird.posX <= p.x + (p.size/2.2) && bird.posY <= height && bird.posY >= p.locY + (p.size/2))
      bird.isDead = true;
      
  //if(bird.isDead)
    //if(bird.posY == height-40)
      //Draw Buttons on screen and restart game on button click
}

void mousePressed() {
  bird.jump();
}
