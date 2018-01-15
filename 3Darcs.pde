float r = 600;
float angle = 0;
int num = 70;
float[] angles1 = new float[num];
float[] angles2 = new float[num];
float[] arc_height = new float[num];

void setup(){
 size(800,800, P3D);

 for(int i=0; i<num; i++){
    angles1[i] =  radians(random(-40,50));
    angles2[i] = radians(random(140,250));
    arc_height[i] = random(100,400);
 }
}

void draw(){
  
 background(50);
 translate(width/2, height/2);
  
  rotateX(1.2);
  rotateY(0.1);
  rotateZ(angle);

  for(int i=0; i<num; i++){

    float angle1 = angles1[i];
    float angle2 = angles2[i];
    float x1 = cos(angle1)*r/2;
    float y1 = sin(angle1)*r/2;
    float x2 = cos(angle2)*r/2;
    float y2 = sin(angle2)*r/2;
    float z = arc_height[i];

    stroke(255);
    noFill();
    strokeWeight(1);
    bezierDetail(50);
    bezier(x1,y1,0,x1/2,y1/2,z,x2/2,y2/2,z,x2,y2,0);
    
    
  }

  angle+=0.008;
   
  saveFrame("images/frame-######.png");
}