PImage photo1;
PFont fuente;
String [] coso;

void setup() {
size (600, 600);

photo1 = loadImage("portada1.jpg");
fuente = loadFont("letrita.vlw");
textFont(fuente,35);
textAlign(CENTER, CENTER);
  
}

void draw() {
  
    background(0);
    image(photo1, 0, 0, 600, 600);
    textSize(45);
    fill(15,11,77);
    text("La casa de\nBernarda Alba", 170, 150);
    
    coso = loadStrings("nose.txt");
    for (int i = 0; i < coso.length; i++) {
      fill(0,0,0);
      textSize(25);
      text(coso[i], 180, i * 40 + 400);
    }  
    
}

//void mousePressed(){
  
    
  
  
  
  
