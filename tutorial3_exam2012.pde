//float x = random(0, 500); 
//float y = random(0, 500);

float angle;
float jitter;

float [] x = new float [30];
float [] y = new float [30];

float speed = 0.2;

void setup() {

  size(500, 500);
  frameRate(1);
  
  for ( int i = 0 ; i < x.length ; i++){
    x[i] = random( width);
  }
  
  for ( int i = 0 ; i < y.length; i++){
    y[i] = random(height);
  }
}
void draw() {

  background(255);


  smooth();
  beginShape(TRIANGLES);

  for ( int i = 0; i < 30; i++) {
    stroke(random(0, 200));
    fill(random(225, 255), random(225, 255), random(225, 255), 150);
    strokeWeight(random(.5, 5));
    if ( i % 3 == 0) {
      vertex(250, 250);
    } else {

      vertex(x[i], y[i]);
    }
   
  }

  endShape();
  
 
}
