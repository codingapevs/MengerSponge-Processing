//Box Class
class Box{

  //Position of box
  PVector pos;
  //One side of box
  float r;
  
  //Box constructor
  Box(float x,float y,float z, float r_){
    pos = new PVector(x,y,z);
    r=r_;
    
  }
  
  //Generates array list of box
  ArrayList<Box> generate(){
    ArrayList<Box> boxes = new ArrayList<Box>();
    for(int x = -1; x<2 ; x++){
      for(int y = -1; y<2 ; y++){
        for(int z = -1; z<2 ; z++){
          
          //sum of coordinate for boxes that have 0 value in coordinates
          int sum = abs(x)+abs(y)+abs(z);
          //division for 3 row and collumn, new value for side of box
          float newR = r/3;
          if(sum > 1){
            Box b = new Box(pos.x+x*newR,pos.y+y*newR,pos.z+z*newR,newR);
            boxes.add(b);
          }
          
        }
      }
    }
    return boxes;
  }
  
  //displays a box on scene
  void show(){
    
    pushMatrix();
    translate(pos.x,pos.y,pos.z);
    box(r);
    popMatrix();
    
  }
  
  
}