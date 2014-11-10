public class Square {  
  int r, g, b, h, w, x, y;
  float d;
  
  Square(int r, int g, int b, int w, int h, float d, int x, int y) {
    this.r = r;
    this.g = g;
    this.b = b;
    this.h = h;
    this.w = w;
    this.d = d;
    this.x = x;
    this.y = y;
  }
  public void Print() {
    fill(r, g, b, random(5, 50));
    rect(w - x, h - y, d + .3*abs((w/2)-x), d + .3*abs((h/2)-y));
  }

}
