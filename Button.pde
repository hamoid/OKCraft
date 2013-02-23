class Button {
  String[] notOkStr = { 
    "Not sure", "Maybe", "Not really", "No way", "Probably"
  };
  float wi, he, x, y;
  String txt;
  Button(boolean isOK) {
    if (isOK) {
      txt = "Ok";
    } 
    else {
      txt = notOkStr[int(random(notOkStr.length))];
    }
    textFont(F20);
    wi = textWidth(txt) + 20;
    he = textAscent() + textDescent() + 20;
    x = random(width * 0.25, width * 0.75);
    y = random(height * 0.25, height * 0.75);
  }
  boolean mouseInside() {
    println(mouseX + "," + mouseY);
    println(x + ", " + y + ", " + (x+wi) + ", " + (y+he));
    return mouseX>x && mouseY>y && mouseX<x+wi && mouseY<y+he;
  }
  void draw() {
    fill(255, 30);
    stroke(#FF0000);
    strokeWeight(2);
    rect(x, y, wi, he);
    strokeWeight(1);
    
    textAlign(LEFT, TOP);
    fill(255);
    textFont(F20);
    text(txt, x+10, y+10);
  }
}

