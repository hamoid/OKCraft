class GameEngine {

  final int STATE_SHRINK = 0;
  final int STATE_GROW = 1;
  final int STATE_NO_INPUT = 2;

  boolean isDead = false; 

  int currState = STATE_SHRINK;

  // decreases over time
  int maxGrowth = 120;
  int growthThisClick = 0;
  int size = 600;
  int growingSpeed = 10;
  
  Button bOK;
  Button bELSE;

  GameEngine() {
    bOK = new Button(true);
    bELSE = new Button(false);
  }

  void draw() {
    // life circle
    int colors = (int)map(size, 600, 0, 255, 0);
    fill(255, colors, colors, 40);
    stroke(255, colors, colors, 40);
    ellipse(width/2, height/2, size, size);
    if (isDead()) {
      return;
    }

    bOK.draw();
    bELSE.draw();

    // shrink
    switch(currState) {
    case STATE_SHRINK:
      size -= 1;
      if (size < 5) {
        isDead = true;
      }
      break;
    case STATE_GROW:
      size += growingSpeed;
      growthThisClick += growingSpeed;

      if (growthThisClick >= maxGrowth) {
        currState = STATE_SHRINK;
        growthThisClick = 0;
      }
      break;
    }
  }

  // The game was clicked.
  // Find out if it was inside one of the buttons.
  // Return true if we clicked Ok so we can move
  // onto the next agreement.
  boolean onClick() {
    if(bELSE.mouseInside()) {
      isDead = true;
    } else if(bOK.mouseInside()) {
      bOK = new Button(true);
      bELSE = new Button(false);
      currState = STATE_GROW;
      maxGrowth -= 10;
      maxGrowth = max(0, maxGrowth);
      return true;
    }
   return false; 
  }

  boolean isDead() {
    return isDead;
  }
}

