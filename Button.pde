class Button {
  String[] notOkStr = { 
    "Not sure", "Maybe", "Not really", "No way", "Probably"
  };
  float wi, he, x, y;
  String txt;
  
  // The button can be an OK button, or another button
  Button(boolean isOK) {
    if (isOK) {
      txt = "Ok";
    } else {
      // Pick a random text for this button
      txt = notOkStr[int(random(notOkStr.length))];
    }
    textFont(F20);
    
    // Calculate the size for the surrounding box
    wi = textWidth(txt) + 20;
    he = textAscent() + textDescent() + 20;
    
    // Calculate a random position for the button
    x = random(width * 0.25, width * 0.75);
    y = random(height * 0.25, height * 0.75);
  }
  
  boolean mouseInside() {
    return mouseX>x && mouseY>y && mouseX<x+wi && mouseY<y+he;
  }
  void draw() {
    // Draw rectangle
    fill(255, 30);
    stroke(#FF0000);
    strokeWeight(2);
    rect(x, y, wi, he);
    strokeWeight(1);
    
    // Draw text
    textAlign(LEFT, TOP);
    fill(255);
    textFont(F20);
    text(txt, x+10, y+10);
  }
}

