PImage photo1, photo2, photo3, photo4, photo5;
PFont fuente;

float elcontador;
float suma;
String logicaestado; //cambio de pantallas, guarda palabras, le podes cambiar la palabra en cualquier momento
float x1;
float txt2;
float txt3;
float txt4;

void setup() {
  size(640, 480);
  elcontador=0;
  logicaestado="estadoinicial";
  suma=1;
  x1 = 0;
  txt2 = 0;
  txt3 = 0;
  txt4 = 0;

  
  photo1 = loadImage("submarino 1.jpg");
  photo2 = loadImage("submarino 2.jpg");
  photo3 = loadImage("submarino 3.jpg");
  photo4 = loadImage("submarino 4.jpg");
  photo5 = loadImage("botons.png");
  
  fuente = loadFont("pepito.vlw");
  textFont(fuente,35);
  textAlign(CENTER, CENTER);
  
}

void draw() {


  elcontador=elcontador+suma;
  if (logicaestado=="estadoinicial") {
    background(0);
    image(photo1, 0, 0, 640, 480);
    text("SUBMARINOS", x1, 100,100);
    x1 = x1 + 2;
    fill(#0E0D55);
    textSize(50);
      

  }

  if (elcontador>100) {
    logicaestado = "estadodos";
  }

  if (logicaestado=="estadodos" && elcontador > 200) {
    image(photo2, 0, 0, 640, 480);
    text("Un submarino es\nun buque capaz de navegar\nbajo el agua.", txt2, 200, 100);
    txt2 = txt2 + 3;
    textSize(40);

    logicaestado="estadotres";
  }

  if (logicaestado=="estadotres" && elcontador > 300) {
    image(photo3, 0, 0, 640, 480);
    text("su funcionamiento se basa en el\nequilibrio entre el peso del buque,\nque lo hunde y el empuje hidrostatico\nque lo hace flotar.", txt3, 200);
    txt3 = txt3 + 4;
    textSize(40);

    logicaestado="estadofinal";
  }

  if (logicaestado=="estadofinal" && elcontador > 400) {
    image(photo4, 0, 0, 640, 480);
    image(photo5, 540, 380, 100, 100);
    text("Partes del submarino: casco de presion,\ncasco resistente, casco hidrodinamico,\nhelice, tanques de inmersion,\ntimon y periscopio.", txt4, 200);
    txt4 = txt4 + 5; 
    textSize(40);
  }
}

void mousePressed() {

  if (mouseX>540 && mouseX<640 && mouseY>380 && mouseY<480 && logicaestado=="estadofinal") {
    logicaestado="estadoinicial";
    elcontador=0;
    x1 = 0;
    txt2 = 0;
    txt3 = 0;
    txt4 = 0;
  }
}
