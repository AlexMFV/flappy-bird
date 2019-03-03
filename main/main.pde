ArrayList<Pipe> pipes;
Bird bird = new Bird();

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
    
    if(index == 0)
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

  bird.drawBird();
}

void checkCollisions(Pipe p){
  //Check top pipe needs fixing
  if(bird.posX >= p.x && bird.posX <= p.x + (p.size/2.2) && bird.posY >= 0 && bird.posY <= p.locY)
    bird.isDead = true;
  
  //Check bottom pipe
}

void mousePressed() {
  bird.jump();
}
