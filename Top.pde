class Top{
  PVector loc;
  PVector hiz;
  PVector ivme;
  float r = 30;
  
  Top(){
  loc = new PVector(width/2, height/2);
  hiz = new PVector(0,2);
  ivme = new PVector(0,0.1);
  }
  
  void update(){
  hiz.add(ivme);
  loc.add(hiz);
  hiz.limit(10);
  
  }

  void kenar(){
    if (loc.x > width){
    loc.x = 0;
    }
    if (loc.x < 0){
    loc.x = width;
    }
    if (loc.y > height){
    loc.y = 0;
    hiz.y = hiz.y * -1;
    }
    if (loc.y < 0){
    loc.y = height;
    }
  }
  
  void display (){
    stroke(0);
    fill(255);
    ellipse(loc.x, loc.y, r,r);
  
  }
  
  
}
