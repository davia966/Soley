 
 
 void setup () {
   size (800,600);
   smooth () ;
      background (255);
   
 }
 
 void draw () {
   if (mousePressed == false) {
     if (mouseX<=400) {
     background (255);
     stroke (0);
     fill (255);
     
   ellipse (mouseX, mouseY, mouseX/5,mouseX/5);
     }
    
 else if (mousePressed == false && mouseX>=400){
      background (255);
      stroke (0);
      fill (255);
     rect (mouseX-40,mouseY-40,mouseX/5,mouseX/5);
    }
     }
   
else if (mousePressed == true ){
  
  if (mouseX<=400){
   //fill   (random (200), random (20), random(106));
   fill   ((mouseX - (mouseX-mouseY)), (mouseX - (mouseY/3)), random(106));

   ellipse (mouseX, mouseY, mouseX/5,mouseX/5);
   }
   else if (mouseX>=400){

     
fill   ((mouseX - (mouseX-mouseY)), (mouseX - (mouseY/3)), random(106));
     rect (mouseX-40,mouseY-40,mouseX/5,mouseX/5);
   
  
   }
 }}