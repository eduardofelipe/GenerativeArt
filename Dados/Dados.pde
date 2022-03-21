/*
*********
* ROLLS *
*********
GENERATIVE ART
CODED BY: EDUARDO FELIPE
*/

int n_loop = 1;
int q_loop = 5;
int grade = 100;
int margem = 150;
int dx = 80;
int dy = 80;


color[] ArrayColor = {
  color(255, 255, 255), // BRANCO
  color(255, 76, 91), // VERMELHO
  color(76, 127, 255), // AZUL
  color(0, 179, 104), // VERDE
  color(255, 255, 102), // AMARELO
  color(255, 172, 76), // LARANJA
  color(250, 126, 255)    // LILÁS
};

void setup() {
  size(800, 800);
  colorMode(RGB, 255, 255, 255);
  //noLoop();
}

void draw() {
  background(60);
  strokeWeight(2);
  //int arrayColorTray = (int)random(7);
  //fill(ArrayColor[arrayColorTray]);
  fill(255);
  rectMode(CENTER);
  rect(400, 400, 610, 610, 15);



  for (int i = margem-dx; i < width-margem; i += grade) {
    for (int j = margem-dy; j < height-margem; j += grade) {
      //Randomizar Cores
      int arrayColorDado = (int)random(7);


      rectMode(CENTER);
      pushMatrix();
      translate(i, j);
      fill(ArrayColor[arrayColorDado]);
      rect(dx, dy, 80, 80, 15);
      desenhaPips(dx, dy);
      popMatrix();
    }
  }
  if (n_loop == q_loop) noLoop();
  save("quadro" + str(int(random(10000))) + ".png");
  n_loop++;
}

void desenhaPips(int x, int y) {
  //Cor do Pip
  int arrayColorPip = (int)random(7);
  int pip_size = 15;
  int grid_x = x/3;
  int grid_y = y/3;
  int db = 4;
  int side = int(random(1, 7));
  //int side = 6;

  switch(side) {
  case 1:
    fill(ArrayColor[arrayColorPip]);

    ellipse(dx, dy, pip_size, pip_size);
    break;

  case 2:
    fill(ArrayColor[arrayColorPip]);

    ellipse(dx+grid_x-db, dy-grid_y+db, pip_size, pip_size);
    ellipse(dx-grid_x+db, dy+grid_y-db, pip_size, pip_size);
    break;

  case 3:
    fill(ArrayColor[arrayColorPip]);

    ellipse(dx+grid_x-db, dy-grid_y+db, pip_size, pip_size);
    ellipse(dx, dy, pip_size, pip_size);
    ellipse(dx-grid_x+db, dy+grid_y-db, pip_size, pip_size);
    break;

  case 4:
    fill(ArrayColor[arrayColorPip]);

    ellipse(dx-grid_x+db, dy-grid_y+db, pip_size, pip_size);
    ellipse(dx+grid_x-db, dy-grid_y+db, pip_size, pip_size);
    ellipse(dx-grid_x+db, dy+grid_y-db, pip_size, pip_size);
    ellipse(dx+grid_x-db, dy+grid_y-db, pip_size, pip_size);
    break;

  case 5:
    fill(ArrayColor[arrayColorPip]);

    ellipse(dx-grid_x+db, dy-grid_y+db, pip_size, pip_size);
    ellipse(dx+grid_x-db, dy-grid_y+db, pip_size, pip_size);
    ellipse(dx, dy, pip_size, pip_size);
    ellipse(dx-grid_x+db, dy+grid_y-db, pip_size, pip_size);
    ellipse(dx+grid_x-db, dy+grid_y-db, pip_size, pip_size);
    break;

  case 6:
    fill(ArrayColor[arrayColorPip]);

    ellipse(dx-grid_x+db, dy-grid_y+db, pip_size, pip_size);
    ellipse(dx, dy-grid_y+db, pip_size, pip_size);
    ellipse(dx+grid_x-db, dy-grid_y+db, pip_size, pip_size);
    ellipse(dx-grid_x+db, dy+grid_y-db, pip_size, pip_size);
    ellipse(dx, dy+grid_y-db, pip_size, pip_size);
    ellipse(dx+grid_x-db, dy+grid_y-db, pip_size, pip_size);
    break;
  default:
    println("Zero");
    break;
  }

}
