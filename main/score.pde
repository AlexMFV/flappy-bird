class Score{
 color col;
 int value;
 int posX, posY;
 
 Score(){
   value = 0;
   this.posX = 400;
   this.posY = 150;
 }
 
 void drawScore(){
   textSize(30);
   fill(0);
   text(value, this.posX, this.posY);
 }
 
 void addScore(){
   this.value++;
 }
}
