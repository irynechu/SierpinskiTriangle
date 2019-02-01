public void setup() {
  size(400,400);
  background(29,255,18);
  fill(255,8,233);
}

public void draw() {
  background(29,255,18);
  int len = 400;
  sierpinski(0,400,len);
}

public void sierpinski(int x, int y, int len) {
  if (len <= 20) {
    triangle(x,y,x+len,y,x+len/2,y-len);
  }
  else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
