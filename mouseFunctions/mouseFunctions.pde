float x, y, w, h;
float xSpeed, ySpeed;

boolean overEllipse = false;
boolean locked = false;

color c;

void setup(){
  size (800, 800);
  x = (width/2);
  y = (width/2);
  w = 50;
  h = 50;
  c = color (255, 145, 0);
  
  xSpeed = mouseX - pmouseX;
  ySpeed = mouseY - pmouseY;
}

void draw(){
  background (255);
  ellipse (x, y, w, h);
  fill (c);
  
  if (mouseX > x-w && mouseX < x+w && mouseY > y-h && mouseY < y+h){
    overEllipse = true;
    c = color (0);
  } else {
    overEllipse = false;
    c = color (255, 145, 0);
  }
}
void mousePressed() {
 if (overEllipse == true){
   locked = true;
 } else {
   locked = false;
 }
}
void mouseDragged() {
  if (overEllipse == true && locked == true) {
    x = mouseX;
    y = mouseY;
  }
}
void mouseReleased() {
  locked = false;
  xSpeed = mouseX - pmouseX;
  ySpeed = mouseY - pmouseY;
}