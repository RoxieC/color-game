int rnumber = int(random(0, 6));
int rcolor = int(random(0, 6));
int rdom = int(random(0, 2));
color[] colors = new color[6];//{red, orange, yellow, green, blue, purple};
String[] words = new String[6];
boolean tf;
float AS = PI+HALF_PI;
float AE = PI+HALF_PI+TWO_PI;

void play() {
  background(0);
  
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
  textFont(typewriter, 17);
  text("true", 150, 100);
  text("false", 550, 100);
  text("score: "+point, 550, 500);
  text("life: " +life, 150, 500);
  
  noStroke();
  fill(#A7A7A7);
  rect(width/2, 75, 5, 150);
  rect(width/2, 500, 5, 200);
  
  stroke(#A7A7A7);
  strokeWeight(5);
  noFill();
  //ellipse(width/2, height/2-25, 250, 250);
  arc(width/2, height/2-25, 250, 250, AS, AE);
  //AE = AE - 0.06;
  
  if (AE <= AS) {
    point = point - 5;
    life = life - 1;
    AE = PI+HALF_PI+TWO_PI;
    //rnumber = int(random(0, 6));
    //rcolor = int(random(0, 6));
    rdom = int(random(0, 2));
  }
  
  fill(colors[rcolor]);
  textFont(typewriter,24);
  text(words[rnumber], width/2, height/2-10);
  
  if (rdom == 0) {
    rnumber = int(random(0, 6));
    rnumber = rcolor;
  } else if (rdom == 1) {
    while (rnumber == rcolor) {
      rnumber = int(random(0, 6));
      rcolor = int(random(0, 6));
    }
  }
  
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
    AE = PI+HALF_PI+TWO_PI;
    point = point + 1;
    rdom = int(random(0, 2));
    //rnumber = int(random(0, 6));
    //rcolor = int(random(0, 6));
  }
  
  if (mouseX<width/2 && tf == false || mouseX>width/2 && tf == true) {
    AE = PI+HALF_PI+TWO_PI;
    point = point - 5;
    life = life - 1;
    rdom = int(random(0, 2));
    //rnumber = int(random(0, 6));
    //rcolor = int(random(0, 6));
  }
  
}
