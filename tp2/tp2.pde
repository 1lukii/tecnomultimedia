PImage photo;

void setup(){
  size(800, 400);
  background(0);
  
  photo = loadImage ("formitas.jpg");
}

void draw() {
  
  image(photo, 0, 0, 400, 400);
  //noStroke();
  
    //dibuja el circulo de abajo a la derecha
    fill(211,38,38);
  for (int i=1; i<140; i+=20) {
    ellipse(i+618, 340, 120, 120);
  }
  
  //dibuja el rectangulo de la izquierda abajo
  fill(153, 81,216);
  for (int i=1; i<140; i+=20) {
    pushMatrix();
    translate(390,-230);
    rotate(radians(45)); 
    rect(400, i+150, 110, 110);
    popMatrix();
    //pushMatrix();
    //translate(width, height);
    //rotate(radians(45));
    //popMatrix();
  }
  //arriba a la izquierda circulo
  fill(68, 57,188);
  for (int i=-1; i<120; i+=20) {
    ellipse(i+460, 60, 120, 120);
  }
//rect de la derecha arriba
fill(15,188,137);
  for (int i=1; i<140; i+=20) {
    pushMatrix();
    translate(160,-440);
    rotate(radians(45));
    rect(i+680, 0, 110, 110);
    popMatrix();
  }
  
 //for (int i=9; i<120; i=20){
   //rect(600, i+10, 120, 120);
 }
