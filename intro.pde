void intro() {
  background(0);
  fill(150);
  noStroke();
  ellipse(width/2, height/2, 400, 400);

  fill(255);
  textFont(beatstreet, 100);
  text("COLOR THEORY", width/2, height/2-50);
  textSize(50);
  text("- click to start -", width/2, height/2+75);
}

void introClicks() {
  mode = play;
}
