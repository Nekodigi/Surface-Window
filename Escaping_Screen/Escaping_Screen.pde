PVector pos = new PVector();
int size = 500;
PImage img;

void setup() {
  fullScreen();//with out frame
  //size(500, 500);//if I use size, I can get window frame
  img = loadImage("FevCat.png");
  pos = new PVector(1000, 1000);
  surface.setResizable(true);
  surface.setSize(size, size);
  surface.setAlwaysOnTop(true);
}

void draw(){
  //background(255);
  image(img, 0, 0, width, height);
  if(mouseX > 10 && mouseX < width-10 && mouseY > 10 && mouseY < height-10){
    PVector diff = new PVector(width/2, height/2).sub(new PVector(mouseX, mouseY));
    pos.add(diff.setMag(10));
  }
  surface.setLocation(int(pos.x-size/2), int(pos.y-size/2));
}
