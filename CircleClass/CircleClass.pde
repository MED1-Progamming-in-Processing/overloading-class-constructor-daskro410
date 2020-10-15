Shape circle;
Shape square;

boolean switcher;

void setup() {
  size(300, 300);
  //Creates both shapes from the class
  circle = new Shape(random(width), random(height), random(-3, 3), random(-3, 3), random(1, 100), color(#FFFFFF), color(#FFFFFF), color(#FFFFFF));
  square = new Shape(random(width), random(height), random(-3, 3), random(-3, 3), random(1, 100), random(1, 100), color(#FFFFFF), color(#FFFFFF), color(#FFFFFF));
}

void draw() {
  background(200);
  
  //Does the move function from the class
  circle.move();
  square.move();
  
  //Ask the switcher which shape should be displayed
  if (switcher){
      square.display();
    }
    else if (!switcher){
      circle.display();
    }

}

void mouseClicked() {
  //Switches between true and false, to show what shape it displays
  if (switcher){
    switcher = false;
  }
  else if (!switcher){
    switcher = true;
  }
}
