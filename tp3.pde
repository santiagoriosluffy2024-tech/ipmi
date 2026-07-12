//https://www.youtube.com/watch?v=8Zmp8q6x-kM    no pude cumplir con la consigna del video
int tamCelda;
int col;
int fila;
int tam;
PImage img;
color colorElipse;
boolean usarMouse = true;
float escala = 1;
float angulo = 0;
float calcularEscala(float posicion, float minimo, float maximo) {
  return map(posicion, 0, width, minimo, maximo);
}

void setup() {
  size(800, 400);

  img = loadImage("foto.jpg");

  colorElipse = color(0);

  col = 19;
  fila = 20;
  tam = 300;

  tamCelda = 400 / col;
}

void draw() {
  background(255);

  if (usarMouse) {
 escala = calcularEscala(mouseX, 0.5, 1.5);
  }

  translate(400, 0);

  grilla(tamCelda, fila, col);

  
  for (int p = 0; p < tam; p++) {
    noStroke();
    fill(0, 0, 0, map(p, 0, tam, 70, 0));

    ellipse(
      200,
      200,
      map(p, 15, tam, 0, 400) * escala,
      map(p, 15, tam, 0, 280) * escala
    );
  }
  image(img, 0, 0, -400, 400);

 
}

void grilla(int tamCelda, int filas, int columnas) {
  for (int i = 0; i < fila; i++) {
    for (int j = 0; j < col; j++) {

      fill(colorElipse);

      int desplazamientoX = -10;

      if (i % 2 == 0) {
        desplazamientoX = tamCelda / 10;
      }

float distancia = dist(
  mouseX - 400,
  mouseY,
  j * tamCelda + tamCelda / 2 + desplazamientoX,
  i * tamCelda + tamCelda / 2
);

float tamaño = map(distancia, 0, 500, tamCelda, tamCelda * 0.3);
tamaño = constrain(tamaño, tamCelda * 0.3, tamCelda);

      pushMatrix(); 

      translate(
        j * tamCelda + tamCelda / 2 + desplazamientoX,
        i * tamCelda + tamCelda / 2
      );

      rotate(angulo);

  dibujarOjo(0, 0, tamaño * 0.7, tamaño * 0.5);
     
      popMatrix();
    }
  }
}

void dibujarOjo(float x, float y, float ancho, float alto) {
  ellipse(x, y, ancho, alto);
}

void mousePressed() {
  noStroke();
  colorElipse = color(random(255),random(255),random(255)
  );
}

void keyPressed() {

  if (key == 'g') {
    angulo += radians(15);
  } 
  else if (key == 'r') {
    colorElipse = color(0);
    angulo = 0;
    escala = 1;
    usarMouse = false;
  }
    else if (key == 'm') {
  usarMouse = true;
}
}
