/* Zarina Barsh, "palmetto", color transitions with mouse moevement with-in canvas,
right click to add green color to background, */

float r = 0;
float b = 0;
float g = 0;

void setup(){
size(500, 500);
}

void draw() {
background(r, g, b); // 

// circle rollover with mouse
int z = 1;       //  calls "z" as a single integer
    for(int i=width; i>=mouseX; i-=50){ // for loop

      fill( 51, 0, 153, 5);              // transpaerency
      strokeWeight((i+1)/250); // shape frame
      ellipse(width/2, height/2, i+1, i-1); // draws an elipse
  }
    while(z <= width) {            // draws circle  according to mouse location on x axis
     ellipse(mouseX, mouseY, mouseX, mouseY); // roll over of circles with mouse movement
      z += 16;   // draws the circle 16 times
    }
  for(int x = 0; x < width; x += 50){ // repeatative loop for each x value
  for(int y = 0; y < height; y += 50){ // loop for each y value
fill(12, 112, 45, 80); // color of triangle
triangle(x, y, 50, 5, 25, 15); // draws triangles 
  }
  }

    
// background color rollover
if(mouseX > width/2) { // if mouse is on the right increment red vale
r = r + 1;
} else {                // cursor on left decrement red value
r = r - 1;
}
if (mouseY > height/2) { // if mouse is higher then increase blue
b = b + 1;
} else {                 // decreease blue
b = b - 1;
}
if (mousePressed) {     //right mouse click increment green
g = g + 1;
} else {                // if not then green vlues return to 0
g = g - 1;
}

// constrain all colr value between 0 and 255
r = constrain(r, 0, 255);
g = constrain(g, 0, 255);
b = constrain(b, 0, 255);
}

 
