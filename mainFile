int background, r, g, b, w, h, circleCount;//, squareCount, ellipseCount, rectangleCount;
Circle[] circles = new Circle[1000];
//Square[] squares = new Square[100];
//Ellipse[] ellipses = new Ellipse[100];
//Rectangle[] rectangles = new Rectangle[100];
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
//  squareCount = -1;
//  ellipseCount = -1;
//  rectangleCount = -1;

}
void draw() {
  background(background);
  LightObject shape = new LightObject(r, g, b, w, h, d);
  for(int x = 0; x <= circleCount; x++) {
    circles[x].Print();
  }
  if (keyPressed) {
      if(key == 'c'){
        shape.Circle();
        if(mousePressed){
//          if(circleCount < 99) {
            circleCount++;
            circles[circleCount] = new Circle(r, g, b, w, h, d, mouseX, mouseY);
        //  }
        }
      } /*else if(key == 's') {
        shape.Square();
        if(mousePressed){
          squareCount = squareCount++;
//          Square squares[squareCount] = new Square(r, g, b, w, h, d, mouseX, mouseY);
        }  
      } else if(key == 'e') {
        shape.Ellipse();
        if(mousePressed){
          ellipseCount = ellipseCount++;
//          Ellipse ellipses[ellipseCount] = new Ellipse(r, g, b, w, h, d, mouseX, mouseY);
        }  
      } else if(key == 'r') {
        shape.Rectangle();
        if(mousePressed){
          rectangleCount = rectangleCount++;
  //        Rectangle rectangle[rectangleCount] = new Rectangle(r, g, b, w, h, d, mouseX, mouseY);
        }  
      }*/ else if(key == '1') {
        r = int(random(0, 256));
        g = int(random(0, 256));
        b = int(random(0, 256));
      }
  }
  LightSource lightSource = new LightSource();
}
