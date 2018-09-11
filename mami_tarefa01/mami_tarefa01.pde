float eixoX = 0.0;
float eixoY = 0.0;
float eixoZ = 0.0;
float volume = 0.0;

void setup() {
  size(900, 600, P3D);
}

void draw() {

  background(120, 0, 200);
  eixoX = mouseX;
  eixoY = height - mouseY;
  eixoZ = 200;

  if (eixoY > eixoZ) {
    eixoY = eixoZ;
  }
  if (eixoX > eixoZ) {
    eixoX = eixoZ;
  }

  volume = eixoX * eixoY * eixoZ;

  textSize(30);
  text("Dimensão X:", 520, 240);
  text(eixoX, 700, 240);
  text("Dimensão Y:", 520, 270);
  text(eixoY, 700, 270);
  text("Dimensão Z:", 520, 300);
  text(eixoZ, 700, 300);
  text("Volume:", 520, 330);
  text(volume, 635, 330);


  drawBox(eixoX, eixoY, eixoZ);
}

void drawBox(float x, float y, float z) {

  stroke(250);
  strokeWeight(5);
  noFill();
  translate(250, 260, 0);
  rotateX(0);
  rotateY(1);
  box(x, y, z);
}

