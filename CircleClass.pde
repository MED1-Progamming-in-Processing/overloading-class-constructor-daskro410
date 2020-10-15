Shape circle;
Shape square;

boolean switcher;

void setup() {
  size(300, 300);
  circle = new Shape(random(width), random(height), random(-3, 3), random(-3, 3), random(1, 100), color(#FFFFFF), color(#FFFFFF), color(#FFFFFF));
  square = new Shape(random(width), random(height), random(-3, 3), random(-3, 3), random(1, 100), random(1, 100), color(#FFFFFF), color(#FFFFFF), color(#FFFFFF));
}

void draw() {
  background(200);

  circle.move();
  square.move();
  
  if (switcher){
      square.display();
    }
    else if (!switcher){
      circle.display();
    }

}

void mouseClicked() {
  if (switcher){
    switcher = false;
  }
  else if (!switcher){
    switcher = true;
  }
}
