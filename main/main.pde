ArrayList<Pipe> pipes;
Bird bird = new Bird();

void setup(){
  size(800, 600);
  pipes = new ArrayList<Pipe>();
  pipes.add(new Pipe()); //Initial Pipe
}

void draw(){
  background(123, 206, 247);
  
  bird.drawBird();
   
  int index = 0;
  for(Pipe p : pipes){
    p.drawPipes();
  }
  
  for(Pipe p : pipes){
    p.move();
    
    if(p.x < 0 - p.size){
      pipes.remove(index);
      break;
    }
    
    if(pipes.size() == index+1 && p.x < width - width/2.5){
      pipes.add(new Pipe());
      break;
    }
    index++;
  }
  
  bird.move();  
}

void mousePressed(){
  bird.jump();
  println("Mouse Pressed!");
}
