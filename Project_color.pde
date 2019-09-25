// () paranetheses
// [] brackets
// {} braces

final int intro = 1;
final int menu = 2;
final int play = 3;
final int gameover = 4;
int mode = 3;
int point = 0;
int highpt = 0;
int life = 3;

color red = #DE4038;
color orange = #F5A554;
color yellow = #FAE56D;
color green = #68B26C;
color blue = #8CD0EA;
color purple = #A67FC1;

//color[] colors = {red, orange, yellow, green, blue, purple};
//String[] words = {"RED", "ORANGE", "YELLOW", "GREEN", "BLUE", "PURPLE"};

PFont beatstreet;
PFont typewriter;

void setup() {
  size(700, 600);
  beatstreet = createFont("beatstreet.ttf", 20);
  typewriter = createFont("rough_typewriter.otf", 20);
  textAlign(CENTER);
  rectMode(CENTER);
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == menu) {
    menu();
  } else if (mode == play) {
    play();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}

void mouseReleased() {
  if (mode == intro) {
    introClicks();
  } else if (mode == menu) {
    menuClicks();
  } else if (mode == play) {
    playClicks();
  } else if (mode == gameover) {
    gameoverClicks();
  }
}
