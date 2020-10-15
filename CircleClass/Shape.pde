class Shape {
  //Variables
  float x;
  float y;
  float xSpeed;
  float ySpeed;
  float sizeX;
  float sizeY;
  float radius;
  
  //R, G, B colors
  color rColor = #FFFFFF;
  color gColor = #FFFFFF;
  color bColor = #FFFFFF;

  //Circle
  Shape(float x, float y, float xSpeed, float ySpeed, float radius, color rColor, color gColor, color bColor) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.radius = radius;
    this.rColor = rColor;
    this.gColor = gColor;
    this.bColor = bColor;
  }

  //Square
  Shape(float x, float y, float xSpeed, float ySpeed, float sizeX, float sizeY, color rColor, color gColor, color bColor) {
    this.x = x;
    this.y = y;
    this.xSpeed = xSpeed;
    this.ySpeed = ySpeed;
    this.sizeX = sizeX;
    this.sizeY = sizeY;
    this.rColor = rColor;
    this.gColor = gColor;
    this.bColor = bColor;
  }

  void move() {
    //Move function for x, change direction and colors
    x += xSpeed;
    if (x <= radius/2 || x > width-radius/2 || x <= sizeX/2 || x > width-sizeX/2) {
      xSpeed *= -1;
      rColor = round(random(0, 255));
      gColor = round(random(0, 255));
      bColor = round(random(0, 255));
    }

    //Move function for y, change direction and colors
    y += ySpeed;
    if (y <= radius/2 || y > height-radius/2 || y <= sizeY/2 || y > width-sizeY/2) {
      ySpeed *= -1;
      rColor = round(random(0, 255));
      gColor = round(random(0, 255));
      bColor = round(random(0, 255));
    }
  }

  //What it displays: color, shape, etc.
  void display() {
    fill(rColor, gColor, bColor);
    noStroke();
    ellipse(x, y, radius, radius);
    rectMode(CENTER);
    rect(x, y, sizeX, sizeY);
  }
}
