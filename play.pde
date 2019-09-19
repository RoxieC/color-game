int rnumber = int(random(0, 6));
int rcolor = int(random(0, 6));
color[] colors = new color[6];//{red, orange, yellow, green, blue, purple};
String[] words = new String[6];
boolean tf;

void play() {
  background(255);
  
  words[0] = "RED";
  words[1] = "ORANGE";
  words[2] = "YELLOW";
  words[3] = "GREEN";
  words[4] = "BLUE";
  words[5] = "PURPLE";
  //words[6] = "LOVE";
  
  colors[0] = red;
  colors[1] = orange;
  colors[2] = yellow;
  colors[3] = green;
  colors[4] = blue;
  colors[5] = purple;
  
  fill(#A7A7A7);
  textSize(50);
  text("true", 150, 100);
  text("false", 550, 100);
  text("score: "+point, 550, 500);
  text("life: " +life, 150, 500);
  rect(width/2, 100, 20, 200);
  rect(width/2, 475, 20, 250);
  
  fill(colors[rcolor]);
  textFont(beatstreet, 100);
  text(words[rnumber], width/2, height/2);
  
  if (rnumber == rcolor) {
    tf = true;
  }
  if (rnumber != rcolor) {
    tf = false;
  }
  
  if (life <= 0) {
    mode = gameover;
    if (point > highpt) {
      highpt = point;
    }
  }
  
}

void playClicks() {
  if (mouseX<width/2 && tf == true || mouseX>width/2 && tf == false) {
    point = point + 1;
    rnumber = int(random(0, 6));
    rcolor = int(random(0, 6));
  }
  
  if (mouseX<width/2 && tf == false || mouseX>width/2 && tf == true) {
    point = point - 3;
    life = life - 1;
    rnumber = int(random(0, 6));
    rcolor = int(random(0, 6));
  }
  
  
}
