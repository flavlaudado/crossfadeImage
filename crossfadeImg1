/*
Flavia Laudado - crossfade images
 
 buscando recuerdos en las imágenes
 mezclando recuerdos buscando imágenes
 mezclando imágenes encontrando recuerdos
 */

int nImg = 8;
int imgTotal = 11;
//int[] orden = {0, 1, 2, 4, 5, 7, 8, 10};
int[] orden = {0, 5, 8, 4, 7, 1, 3, 10};
int [] superposicion = {0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 1};
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
  mx = orden[int(map(mouseX, 0, width, 0, nImg))];  
  my = orden[int(map(mouseY, 0, height, 0, nImg))];

  image(images[mx], 0, 0); 

  if (superposicion[my] == 0) {
    image(imagesUp[my], 0, 0);
    //text("arriba " + my + ", abajo " + mx, 20, 450);
  } else {   
    image(imagesDown[my], 0, 0);
    //text("arriba " + mx + ", abajo " + my, 20, 450);
  }
}

void keyPressed() {
  if (key == 'a') {
    saveFrame("crossfade-######.png");
  }
}
