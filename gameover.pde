void gameover() {
  background(0);
  fill(255);
  textFont(beatstreet, 100);
  text("GAEMOVER", width/2, height/2);
  textSize(50);
  text("hightest score: "+highpt, width/2, 400);
} 

void gameoverClicks() {
  mode = intro;
  life = 1;
  point = 0;
}
