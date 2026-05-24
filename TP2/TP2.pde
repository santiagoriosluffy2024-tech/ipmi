PImage img;
PImage foto;
float algo = 1;
float posx, posy, tamx, tamy, otro;
float velocidad;

void setup() {
 size(640, 480);
 
// frameRate(100);
posx = 100;
otro = -1;
posy = 150;
velocidad = 3;
 if ( posy >= width){
   algo = velocidad;
 }
   img = loadImage("otrolado.jpg");
   foto = loadImage("yafue.jpg");
   textSize(100);
}
void draw(){
//  println(frameCount);
  //algo = frameCount ;
  background(255);


  image(img, 0, 0, 640, 480);
   image(foto, 80, algo, 220, 310); 
   circle(posx, posy, 150);
}
