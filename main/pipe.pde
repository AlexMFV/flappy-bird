class Pipe{
 int locY;
 int size;
 public int x;
 
 Pipe(){
   this.x = width;
   this.size = 200; //needs tweaking
   this.locY = int(random(200, height-200));
 }
 
 void move(){
   this.x -= 3;
 }
 
 void drawPipes(){
   fill(255, 0, 0);
   stroke(0);
   rect(this.x, 0, this.size/2, this.locY-(size/2));
   rect(this.x, this.locY + (size/2), this.size/2, height);
 }
}
