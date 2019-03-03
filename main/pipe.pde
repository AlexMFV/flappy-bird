class Pipe{
 int locY;
 int size;
 int x, y;
 
 Pipe(){
   this.x = width;
   this.y = 0;
   this.size = 30; //30px? - needs tweaking
 }
 
 void move(){
   this.x += 3;
 }
 
 void drawPipes(){
   rect(this.x, this.y, this.x + 30, this.y + random(100, height-100));
 }
}
