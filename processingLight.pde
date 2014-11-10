/* This program allows the draw using the metaphor of light shining through a colored object.
** how to use:
** move your mouse around to move the light source
** hold down 'c' to shine light through a circle printed in the center
** hold down 's' to shine light through a square printed in the center
** hold down 'e' to shine light through an ellipse printed in the center
** hold down 'r' to shine light through a rectangle printed in the center
** press the up arrow to increase the size of the objects(will increase size of ALL OBJECTS printed AFTER the change
** press the down arrow to decrease the size of the objects(will decrease size of ALL OBJECTS printed AFTER the change
** click your mouse to print the object shown currently, this object will remain(flickering) on screen while you continue to use the program.
** press '1' on your keyboard to change to a new random color
** press the space bar to reset your drawing (deletes printed objects and resets color to blue)
*/
int background, r, g, b, w, h, circleCount, squareCount, ellipseCount, rectangleCount;
Circle[] circles = new Circle[1000];
Square[] squares = new Square[1000];
Ellipse[] ellipses = new Ellipse[1000];
Rectangle[] rectangles = new Rectangle[1000];
float d;


void setup() {
  background = 0;
  w = 1200;
  h = 600;
  noStroke();
  noCursor();
  size(w, h);
  r = 0;
  g = 200;
  b = 200;
  d = 50;
  circleCount = -1;
  squareCount = -1;
  ellipseCount = -1;
  rectangleCount = -1;

}
void draw() {
  background(background);
  LightObject shape = new LightObject(r, g, b, w, h, d);
  for(int x = 0; x <= circleCount; x++) {
    circles[x].Print();
  }
  for(int x = 0; x <= squareCount; x++) {
    squares[x].Print();
  }
  for(int x = 0; x <= ellipseCount; x++) {
    ellipses[x].Print();
  }
  for(int x = 0; x <= rectangleCount; x++) {
    rectangles[x].Print();
  }
  if (keyPressed) {
      if(key == 'c'){
        shape.Circle();
        if(mousePressed){
          circleCount++;
          circles[circleCount] = new Circle(r, g, b, w, h, d, mouseX, mouseY);
        }
      } else if(key == 's') {
        shape.Square();
        if(mousePressed){
          squareCount++;
          squares[squareCount] = new Square(r, g, b, w, h, d, mouseX, mouseY);
        }  
      } else if(key == 'e') {
        shape.Ellipse();
        if(mousePressed){
          ellipseCount++;
          ellipses[ellipseCount] = new Ellipse(r, g, b, w, h, d, mouseX, mouseY);
        }  
      } else if(key == 'r') {
        shape.Rectangle();
        if(mousePressed){
          rectangleCount++;
          rectangles[rectangleCount] = new Rectangle(r, g, b, w, h, d, mouseX, mouseY);
        }  
      } else if(key == '1') {
        r = int(random(0, 256));
        g = int(random(0, 256));
        b = int(random(0, 256));
      } else if(key == ' ') {
          circleCount = -1;
          squareCount = -1;
          ellipseCount = -1;
          rectangleCount = -1;
          r = 0;
          g = 200;
          b = 200;
          d = 50;
      } else if(key == CODED) {
        if(keyCode == UP) {
          d++;
        } else if(keyCode == DOWN) {
          d--;
        }
      }
  }
  LightSource lightSource = new LightSource();
}
