  int mColor = (int)(Math.random() * 100) + 150;
  public void setup(){
    size(400, 400);
    background(0, 0, 0);
  }
  public void draw(){
    noFill();
    sierpinski(mouseX, mouseY, 15);
  }
  public void mShape(float centerX, float centerY, float siz) {
      float sizee = (float)siz;
      noFill();
      beginShape();
      vertex(centerX + sizee, centerY);
      vertex(centerX, centerY + sizee);
      vertex(centerX - sizee, centerY);
      vertex(centerX, centerY - sizee);
      vertex(centerX + sizee, centerY);
      endShape();
      strokeWeight(2);
      stroke(mColor, 255, 255);
      ellipse(centerX, centerY, siz * 1.5, siz);
  }
  
  public void mouseClicked() {
    mColor = (int)(Math.random() * 100) + 100;
  }
  public void sierpinski(float x, float y, float len) {
    if (len >= 200) { 
      mShape(x, y, len);
    }
    else { 
      sierpinski(x, y, len * 30);
      stroke(150, 200, 200);
      sierpinski((x + len/1.5), y, len * 2);
      stroke(200, 250, 200);
      sierpinski(x - len/1.5, y, len * 2);
      stroke(0);
      sierpinski(x, y + len/2, len * 2);
      stroke(230, 200, 239);
      sierpinski(x, y - len/2, len * 2);
    }
  }
