float baseH = 120;
float armL1 = 80;
float armL2 = 60;
float armL3 = 30;
float armL4 = 10;
float armL5 = 10;
float armW1 = 10;
float armW2 = 10;
float armW3 = 5;
float armW4 = 5;
float armW5 = 5;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float l4 = 0;
float dif = 1.0;
float dif1 =5 ;
float dif2 = 0.2;

void setup(){
  size(1200, 800, P3D);
  //background(255);
  
  camera(200, 300, 250, 0, 0, 150, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(255);
  
  if(keyPressed){  
    if(key == 'b'){
      angle0 = angle0 + dif;
    }
    if(key == 'B'){
      angle0 = angle0 - dif;
    }
    if(key == 's'){
      if( 45 > angle1  ){
        if(angle1 > -45){
      angle1 = angle1 + dif;
    }
    }
    }   
    if(key == 'S'){
     if( 45 >= angle1  ){
        if(angle1 >= -45){
      angle1 = angle1 - dif;
    }
    }
    }
    if(key == 'e'){
      if(90 >= angle2){
        if(angle2 >= -30){
      angle2 = angle2 + dif;
    }
    }
    }
    if(key == 'E'){
      if(90 >= angle2){
        if(angle2 >= -30){
      angle2 = angle2 - dif;
    }
      }
    }
    if(key == 'g'){
      angle3 = angle3 + dif1;
    }
    if(key == 'G'){
      angle3 = angle3 - dif1;
    }
    
    float a=armL3/2-armW4 ;
    if(key == 'h'){
      if(l4 < a-0.5){
      l4 = l4 + dif2;
    }
    }
    
     if(key == 'H'){
       if(l4 > 0){
      l4 = l4 - dif2;
    }
    }
  }
  
  //base
  rotateZ(radians(angle0));
  translate(0,0,baseH/2);
  fill(175);
  box(20,20,baseH);
 
  
  //1st link
  translate(0,0,baseH/2-armW1/2);
  rotateX(radians(angle1));
  translate(0,armL1/2-armW1/2,0);
  fill(150);
  box(armW1,armL1,armW1);
  
  //2nd link
  //go to 2nd joint
  translate(2*armW2,armL2-2*armW2-armW2/2,0);
  rotateX(radians(angle2));  
  //go to center of 2nd joint
  translate(-armW2,armL2/2-armW2/2,0);
  fill(125);
  box(armW2,armL2,armW2);
  
  //3rd link
  translate(0,armL2/2+armW3/2 , 0);
  rotateY(radians(angle3));
  fill(100);
  box(armL3,armW3,armW3);

  //4th link 1
  pushMatrix();
  translate(-armL3/2+armW4/2+l4,armW4,0);
  fill(150);
  box(armW4,armL4,armW4);
  popMatrix();
  
   //4th link 2 
  translate(armL3/2-armW5/2-l4,armW5,0);
  fill(150);
  box(armW5,armL5,armW5);
}
