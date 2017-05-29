//rotation value
float a = 0;
//array list for all boxes
ArrayList<Box> sponge;
void setup(){
  
  //P3D for 3d scene
  size(400,400,P3D);
  sponge = new ArrayList<Box>();
  //first box
  Box b = new Box(0,0,0,200);
  sponge.add(b);
}

//generate new tier when mouse pressed
void mousePressed(){
  ArrayList<Box> nextTier = new ArrayList<Box>();
  //generate for every boxes
  for(Box b: sponge){
    ArrayList<Box> newTierBoxes = b.generate();
    nextTier.addAll(newTierBoxes);
  }
  sponge = nextTier;
}

void draw(){
  
  background(50);
  stroke(255);
  //noFill();
  lights();
  
  translate(width/2,height/2);
  rotateX(a);
  rotateY(a*0.4);
  rotateZ(a*0.5);
  for(Box b:sponge){
    b.show();
  }
  
  a += 0.01;
  
}