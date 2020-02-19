Top top;

void setup(){
  size(640,480);
  top = new Top();
  

}

void draw(){
  background(120);
  top.update();
  top.kenar();
  top.display();

}
