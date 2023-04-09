
  PImage photo;
  

void setup() {
  size(800, 400);
  photo = loadImage("aeroplano.jpg");
  background(194,217,232);

}

void draw() {
  image(photo, 0, 0, 400, 400);
  
  //noStroke();
  fill(139,203,134);
  beginShape();
  vertex(400,320);
  vertex(800,300);
  vertex(800,400);
  vertex(400,400);
  endShape(CLOSE); //pasto 
  
  stroke(5,5,5);
  strokeWeight(1);
  
  fill(237,234,215);
  triangle(660,100,660,180,640,170);
  
  fill(229,216,139);
  ellipse(700, 450, 300,200); //arena
  
   beginShape();
  vertex(600,60);
  vertex(630,62);
  vertex(540,240);
  vertex(510,242); 
  endShape(CLOSE);
  
    beginShape();
  vertex(670,130);
  vertex(690,132);
  vertex(660,170);
  vertex(640,170);
  endShape(CLOSE);
  
  beginShape();
  vertex(635,186);
  vertex(653,182);
  vertex(640,210);
  vertex(625,210);
  endShape(CLOSE);
  // alas
  
  fill(237,234,215);
  beginShape();
  vertex(500,150);
  vertex(550,145);
  vertex(550,180);
  vertex(500,180);
  endShape(CLOSE);
  fill(50,50,50);
  beginShape();
  vertex(500,180);
  vertex(550,180);
  vertex(550,200);
  vertex(500,180);
  endShape(CLOSE);
  // trompa del aeroplano
  
  fill(237,234,215);
  beginShape();
  vertex(550,135);
  vertex(610,140);
  vertex(610,180);
  vertex(550,180);
  endShape(CLOSE);
  //rect(550,135,60,45);
  fill(50,50,50);
  beginShape();
  vertex(550,180);
  vertex(610,180);
  vertex(610,190);
  vertex(550,200);
  endShape(CLOSE);
  //rect(550,180,60,20);
  // cabina del aeroplano
  
  fill(237,234,215);
  beginShape();
  vertex(610,155);
  vertex(660,165);
  vertex(660,180);
  vertex(610,190);
  endShape(CLOSE);
  // cola del aeroplano
  
  fill(157,157,154);
  triangle(490,165,500,155,500,175);
  
  //stroke(237,234,215);
  //strokeWeight(5);
  //line(580,115,555,190);
  
   
  
}
