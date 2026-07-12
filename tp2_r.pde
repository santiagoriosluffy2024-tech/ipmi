PImage fondo1;
PImage fondo2;
PImage fondo3;
PImage fondo4;
PImage fondo5;
PImage fondo6;
PImage fondo7;

boolean mostrarFondo2 = false;
boolean mostrarFondo3 = false;
boolean mostrarSarah = false;
boolean mostrarAlice = false;
boolean mostrarPosters = false;
boolean mostrarBotonReiniciar = false;

PFont fuente;

String mensaje = "CORTAR POR LA LINEA DE PUNTOS.";
String mensaje2 = "CORTAR POR LA LINEA DE PUNTOS es una serie\noriginalmente italiana, creada por\nZero Calcare inspirada en su propia vida\ndonde nos cuenta anecdotas que se conectan\na un final en comun, todo en un tono\nde comedia y referencias a la cultura pop.";
String mensaje3 = "El armadillo es una parte fundamental\n de las historias de Zero ya que representa\nsus pensamientos y voz interna. Es un personaje\nsarcastico y suele hacer chistes y referencias\na muchas cosas. Ademas, al ser un pensamiento,\nsolo Zero lo puede ver e interactuar con el.";
String mensaje4 = "Secco es uno de los amigos\n principales de Zero el mismo\n parece que no le importa nada\n le gustan las peleas no tiene\n trabajo y vive de el poker online\n ademas su respuesta a todo\n siempre es -¿vamos por un helado?- ";
String mensaje5 = "Sarah es su otra mejor amiga \n es la voz de la razon del grupo\n trabaj en una oficina aunque\n su sueño es ser maestra Zero\n la llama su faro moral ya que \n parece ser la persona mas\n inteligente sentimentalmente";
String mensaje6 = "Alice es un interes romantico de zero aparece\n varias veces atraves de las historias que nos\n cuentan aunque al final de la serie se nos\n cuenta que todas las historias que pasaron\n mientras se esta yendo a su funeral esto le\n duele muchisimo a zero ya que siente que\n la podria haber ayudado antes de que\n se suicidara aunque sarah le dice a zero que \n no es su culpa ";
String mensaje7 = "Zero calcare tiene otras dos series en netflix \n                            llamadas \n ESTE MUNDO NO ME HARA MALA PERSONA \ny POR DOS MONEDAS ambas tienen poca \nrelacion entre si pero siguen el mismo formato\n                        y la vida de zero ";

int letras = 0;
int letras2 = 0;
int letras3 = 0;
int letras4 = 0;
int letras5 = 0;
int letras6 = 0;
int letras7 = 0;

int botonX = 220;
int botonY = 420;
int botonW = 200;
int botonH = 40;

int tiempoFinalTexto = 0;
int tiempoFinalTexto3 = 0;
int tiempoFinalTexto5 = 0;
int tiempoFinalTexto6 = 0;

float xSarah = 640;
float xAlice =-640;
float yPoster1 =-240;
float yPoster2 = 480;
void setup() {
  size(640, 480);

  fondo1 = loadImage("fondo.jpeg");
  fondo2 = loadImage("fase 2.jpg");
  fondo3 = loadImage("armadillo.jpg");
  fondo4 = loadImage("sarah secco.jpg");
  fondo5 = loadImage("alice.jpg");
  fondo6 = loadImage("poster1.jpg");
  fondo7 = loadImage("poster2.jpg");
  fuente = loadFont("titulo.vlw");
  textFont(fuente);
  textSize(24);
}

void draw() {
  
  if (letras6 == mensaje6.length() && tiempoFinalTexto6 == 0) {
  tiempoFinalTexto6 = millis();
}

if (tiempoFinalTexto6 != 0 && millis() - tiempoFinalTexto6 >= 2000) {
  mostrarPosters = true;
}

if (mostrarPosters) {

  background(0);
  
  if (yPoster1 < 120) {
    if (frameCount % 2 == 0)
      yPoster1 += 4;
  }

  if (yPoster2 > 120) {
    if (frameCount % 2 == 0)
      yPoster2 -= 4;
  }

  image(fondo6, 0, yPoster1, 200, 280);
  image(fondo7, 450, yPoster2, 200, 280);

 if (yPoster1 >= 0 && yPoster2 <= 300) {

    fill(255);
    stroke(0);
    strokeWeight(3);

    text(mensaje7.substring(0, letras7), 40, 40);

    if (frameCount % 3 == 0 && letras7 < mensaje7.length()) {
      letras7++;
    }

    if (letras7 == mensaje7.length()) {

      mostrarBotonReiniciar = true;

      if (mouseX > botonX && mouseX < botonX + botonW &&
          mouseY > botonY && mouseY < botonY + botonH) {
        fill(220);
      } else {
        fill(255);
      }

      stroke(0);
      rect(botonX, botonY, botonW, botonH, 10);

      fill(0);
      textAlign(CENTER, CENTER);
      textSize(20);
      text("REINICIAR", botonX + botonW/2, botonY + botonH/2);

      textAlign(LEFT, BASELINE);
      textSize(24);
    }
}

  return;
}

  if (mostrarFondo3) {

    image(fondo3, 0, 0, width, height);

    fill(0);
    text(mensaje3.substring(0, letras3), 30, 50);

    if (frameCount % 3 == 0 && letras3 < mensaje3.length()) {
      letras3++;
    }


    if (letras3 == mensaje3.length() && tiempoFinalTexto3 == 0) {
      tiempoFinalTexto3 = millis();
    }

   
    if (tiempoFinalTexto3 != 0 && millis() - tiempoFinalTexto3 >= 2000) {
      mostrarSarah = true;
    }

  
    if (mostrarSarah) {

      if (xSarah > 0) {
        if (frameCount % 2 == 0) {
          xSarah -= 5;
        }
      }

      image(fondo4, xSarah, 0, width, height );
      
   
if (xSarah > 0) {
  if (frameCount % 2 == 0) {
    xSarah -= 5;
  }
}

image(fondo4, xSarah, 0, width, height);

if (xSarah <= 0) {

if (tiempoFinalTexto5 != 0 && millis() - tiempoFinalTexto5 >= 2000) {
  mostrarAlice = true;
}

if (mostrarAlice) {

  if (xAlice < 0) {
    if (frameCount % 2 == 0) {
      xAlice += 5;
    }
  }

  image(fondo5, xAlice, 0, width, height);
}

if (mostrarAlice) {

  if (xAlice < 0) {
    if (frameCount % 2 == 0) {
      xAlice += 5;
    }
  }

  image(fondo5, xAlice, 0, width, height);

  if (xAlice >= 0) {

    stroke(255);
    strokeWeight(3);
    fill(255);

    text(mensaje6.substring(0, letras6), 40, 50);

    if (frameCount % 1 == 0 && letras6 < mensaje6.length()) {
      letras6++;
    }
  }
}

if (!mostrarAlice) {
  
  stroke(255);
  strokeWeight(3);
  fill(0,150,0);

  text(mensaje4.substring(0, letras4), 40, 40);

  if (frameCount % 3 == 0 && letras4 < mensaje4.length()) {
    letras4++;
  }

  if (letras4 == mensaje4.length()) {

    if (frameCount % 3 == 0) {
      letras5++;
    }

    letras5 = constrain(letras5, 0, mensaje5.length());
 stroke(255);
  strokeWeight(3);
  fill(0,0,150);

    text(mensaje5.substring(0, letras5), 230, 260);
    
    if (letras5 == mensaje5.length() && tiempoFinalTexto5 == 0) {
  tiempoFinalTexto5 = millis();
}

  }
}

}
      
    }

  }

  else if (mostrarFondo2) {

    image(fondo2, 0, 0, width, height);

    fill(255);
    text(mensaje2.substring(0, letras2), 30, 50);

    if (frameCount % 5 == 0 && letras2 < mensaje2.length()) {
      letras2++;
    }

    if (letras2 == mensaje2.length() && tiempoFinalTexto == 0) {
      tiempoFinalTexto = millis();
    }

    if (tiempoFinalTexto != 0 && millis() - tiempoFinalTexto >= 2000) {
      mostrarFondo3 = true;
    }

  }
 
  else {

    image(fondo1, 0, 0, width, height);

    fill(0);
    
    text(mensaje.substring(0, letras), 80, 150);

    if (frameCount % 1 == 0 && letras < mensaje.length()) {
      letras++;
    }

    noStroke();
    fill(255, 150);
    circle(320, 340, 125);

    fill(0);
    triangle(290, 300, 360, 336, 290, 370);
  }
}

void mousePressed() {

  if (!mostrarFondo2) {
    mostrarFondo2 = true;
    return;
  }

  if (mostrarBotonReiniciar &&
      mouseX > botonX &&
      mouseX < botonX + botonW &&
      mouseY > botonY &&
      mouseY < botonY + botonH) {

    reiniciar();
  }
}

void reiniciar() {

  
  mostrarFondo2 = false;
  mostrarFondo3 = false;
  mostrarSarah = false;
  mostrarAlice = false;
  mostrarPosters = false;
  mostrarBotonReiniciar = false;


  letras = 0;
  letras2 = 0;
  letras3 = 0;
  letras4 = 0;
  letras5 = 0;
  letras6 = 0;
  letras7 = 0;

 
  tiempoFinalTexto = 0;
  tiempoFinalTexto3 = 0;
  tiempoFinalTexto5 = 0;
  tiempoFinalTexto6 = 0;

 
  xSarah = 640;
  xAlice = -640;
  yPoster1 = -240;
  yPoster2 = 480;

 
  frameCount = 0;
}
