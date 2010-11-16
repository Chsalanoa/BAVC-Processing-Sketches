/**
 * Continuous Lines. 
 * 
 * Click and drag the mouse to draw a line. 
 
 
 // notes
 
 - user image as color pallet, and click image to get color
 
 
 
 
 */

color strokecolor;
int strokeweight;



void setup() {
  size(600, 600);
  background(220);
  smooth();
  strokecolor = color(0);
  strokeweight = 1;
}

void draw() {
  strokeWeight(strokeweight);
  stroke(strokecolor);
  if(mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void keyPressed()
{

  println(key);

  switch(key) {

    //increases strokeweight
  case '=' : 
    strokeweight++;
    break;

    //decreases strokeweight 
  case '-' :
    if(strokeweight>1) {
      strokeweight--;
    }
    break;

    //picks random color
  case 'r' : 
    strokecolor= color(random(255),random(255),random(255));
    break;

    //picks black
  case 'b' : 
    strokecolor= color(0);
    break;

    //saves
  case 's' : 
    save("myImage"+frameCount+".png");
    println("Image Saved!");     
    break;
  }
}

