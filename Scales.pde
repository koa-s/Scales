void setup() {
  size(1000, 1000);
  //noLoop(); //stops the draw() function from repeating
}

void draw() {

  boolean shift = false;

  for (int y = -100; y<=1100; y+=100) {

    if (shift == false) {
      for (int x = -100; x<=1100; x+=320) {
        scale(x, y);
      }
      shift = true;
    } else {
      for (int x = -260; x<=1160; x+=320) {
        scale(x, y);
      }
      shift = false;
    }
  }
}

void scale(int x, int y) {

  //creating color vars

  //we want between (40,170,140) to (40,40,170)
  // 80 to 170  (int)(Math.random()*130 + 40)
  // 140 to 170 (int)(Math.random()*30 + 140)


  fill(40, (int)(Math.random()*130 + 40), (int)(Math.random()*30 + 140));

  bezier(x, y, x+80, y-300, x+240, y-300, x+320, y);


  fill(40, (int)(Math.random()*130 + 40), (int)(Math.random()*30 + 140));
  beginShape();
  vertex(x+20, y);
  vertex(x+85, y-150);
  vertex(x+160, y-210);
  vertex(x+235, y-150);
  vertex(x+300, y);


  endShape();

  fill(40, (int)(Math.random()*130 + 40), (int)(Math.random()*30 + 140));

  bezier(x+40, y, x+100, y-230, x+220, y-230, x+280, y);

  fill(40, (int)(Math.random()*130 + 40), (int)(Math.random()*30 + 140));


  ellipse( x+85, y-85, 10, 10);
  ellipse(x+235, y-85, 10, 10);
  ellipse( x+110, y-130, 10, 10);
  ellipse( x+210, y-130, 10, 10);
  ellipse(x+160, y-160, 10, 10);


  //vertex: similar to curveVertex but with straight lines
  //double first and last statements in curveVertex

  //delay(1);
sleep(1);
}
