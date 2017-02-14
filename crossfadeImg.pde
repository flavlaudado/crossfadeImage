/*
Flavia Laudado - crossfade images
 
 encontrando recuerdos en las imágenes
 mezclando recuerdos buscando imágenes
 mezclando imágenes encontrando recuerdos
 */

int nImg = 8;
int imgTotal = 11;
int[] orden = {0, 1, 2, 4, 5, 7, 8, 10, 0, 0};
PImage[] images = new PImage[imgTotal];
PImage[] imagesUp = new PImage[imgTotal];
PImage[] imagesDown = new PImage[imgTotal];
PImage img = new PImage();
int mx;
int my;
int resizeW = 640;
int resizeH = 480;
boolean upDown = true;

void setup() {
  //size(640, 480);
  fullScreen();
  resizeW = width;
  resizeH = height;
  for (int i = 0; i < images.length; i ++) {
    images[i] = loadImage("../../img_/" + i + ".png");
    images[i].resize(resizeW, resizeH);
    imagesUp[i] = loadImage("../../img_/" + i + ".1.png");
    imagesUp[i].resize(resizeW, resizeH);
    imagesDown[i] = loadImage("../../img_/" + i + ".0.png");
    imagesDown[i].resize(resizeW, resizeH);
  }
  background(images[0]);
}

void draw() {
  mx = int(map(mouseX, 0, width, 0, nImg));  
  my = int(map(mouseY, 0, height, 0, nImg));
  image(images[orden[mx]], 0, 0);  
  if (upDown) {
    image(imagesUp[orden[my]], 0, 0);
  text("arriba " + orden[my] + ", abajo " + orden[mx], 20, 450);
  } else {   
    image(imagesDown[orden[my]], 0, 0);
  text("arriba " + orden[mx] + ", abajo " + orden[my], 20, 450);
  }
  //si tengo que hacer solo grilla de imagen elegir la imagen concatenando
  //mx + "." + my + ".png"
}

void mouseClicked() {//test
  if (upDown) {
    upDown = false;
  } else {   
    upDown = true;
  }
}

void keyPressed() {
  if (key == ' ') {
    saveFrame("crossfade-######.jpg");
  }
}
