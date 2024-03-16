// Example 3-6: Interactive Zoog?
void setup() {
  // Set the size of the window
  size(1000, 800);  
  // The frame rate is set to 30 frames per second.
  frameRate(30);
}

void draw() {
  // Draw a white background
  background(255);  

  // Set ellipses and rects to CENTER mode
  ellipseMode(CENTER);
  rectMode(CENTER); 


  // Draw Zoog's body
  stroke(0);
  fill(175);
  //rect(mouseX, mouseY, 20, 100);
  ellipse(mouseX, mouseY, 40, 100);


  // Draw Zoog's head
  int headSize = 100;
  float WHITE_HEAD= 0.77;
  
  stroke(0);
  fill(#117FD3);
  ellipse(mouseX, mouseY, headSize, headSize);
  fill(#F5F5F5);
  ellipse(mouseX, mouseY+10, headSize * WHITE_HEAD, headSize * WHITE_HEAD); 



  // Draw Zoog's eyes
  // The eye color is determined by the mouse location.
  //fill(mouseX/2, 0, mouseY/2);
  fill(#F5F5F5);
  ellipse(mouseX-12, mouseY-20, 23, 30); 
  ellipse(mouseX+12, mouseY-20, 23, 30); 

  // Draw Zoog's legs
  stroke(0);
  // The legs are drawn according to the mouse location and the previous mouse location.
  line(mouseX-10, mouseY+50, pmouseX-10, pmouseY+60);
  line(mouseX+10, mouseY+50, pmouseX+10, pmouseY+60);
}

void mousePressed() {
  println("Take me to your leader!");
}
