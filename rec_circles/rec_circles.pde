

void setup() {
  size(1300,700);
}
 
void draw() {
  background(255);
  drawCircle(width/2,height/2,600);
}
 
void drawCircle(float x, float y, float radius) {
  stroke(0);
  noFill();
  ellipse(x, y, radius, radius);
  if(radius > 2) {
    drawCircle(x + radius/2, y, radius/2);
    drawCircle(x - radius/2, y, radius/2);
  }
}
