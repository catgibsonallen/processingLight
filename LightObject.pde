public class LightObject{
  int r, g, b, w, h;
  float d;
  
  
  LightObject(int r, int g, int b, int w, int h, float d) {
    this.r = r;
    this.g = g;
    this.b = b;
    this.d = d;
    this.w = w;
    this.h = h;
    rectMode(CENTER);
  }
  
  
  void Circle() {
    fill(r, g, b);
    ellipse(w/2, h/2, d, d);
    fill(r, g, b, random(50, 180));
    ellipse(w - mouseX, h - mouseY, d + .3*abs((w/2)-mouseX), d + .3*abs((h/2)-mouseY));
  }


  void Square() {
    fill(r, g, b);
    rect(w/2, h/2, d, d);
    fill(r, g, b, random(50, 180));
    rect(w - mouseX, h - mouseY, d + .3*abs((w/2)-mouseX), d + .3*abs((h/2)-mouseY));
  }
  
  
  void Ellipse() {
    fill(r, g, b);
    ellipse(w/2, h/2, d, 1.5 * d);
    fill(r, g, b, random(50, 180));
    ellipse(w - mouseX, h - mouseY, (d + .3*abs((w/2)-mouseX)), 1.5*(d + .3*abs((h/2)-mouseY)));
  }
  
  
  void Rectangle() {
    fill(r, g, b);
    rect(w/2, h/2, d, 1.5 * d);
    fill(r, g, b, random(50, 180));
    rect(w - mouseX, h - mouseY, (d + .3*abs((w/2)-mouseX)), 1.5*(d + .3*abs((h/2)-mouseY)));
    }
}

