class Pipe{
 int locY;
 int size;
 public int x;
 
 Pipe(){
   this.x = width;
   this.size = 150; //needs tweaking
   this.locY = int(random(150, height-150));
 }
 
 void move(){
   this.x -= 3;
 }
 
 void drawPipes(){
   fill(0, 180, 0);
   stroke(0);
   rect(this.x, 0, this.size/2.2, this.locY-(size/2));
   rect(this.x, this.locY + (size/2), this.size/2.2, height);
 }
}
