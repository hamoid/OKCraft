class Lives {

    final int STATE_SHRINK = 0;
    final int STATE_GROW = 1;

    final int STATE_NO_INPUT = 2;

    boolean isDead = false; 

    int currState = STATE_SHRINK;

    // decreases over time
    int maxGrowth = 100;

    int growthThisClick = 0;

    int size = 600;

    int growingSpeed = 10;

    void draw(){
      // life circle
      int colors = (int)map(size, 600, 0, 255, 0);
      fill(255, colors, colors, 40);
      ellipse(width/2, height/2, size, size);
      if (isDead()){
        return;
      }

      // shrink
      switch(currState) {
        case STATE_SHRINK:
          size-=2;
          if (size < 5){
            isDead = true;
          }
          break;
        case STATE_GROW:
          size += growingSpeed;
          growthThisClick += growingSpeed;

          if (growthThisClick >= maxGrowth){
            currState = STATE_SHRINK;
            growthThisClick = 0;
          }
          break;
      }
    }

    void click_ok(){
        currState = STATE_GROW;
        maxGrowth -= 10;
        maxGrowth = max(0, maxGrowth);
    }
    
    boolean isDead(){
        return isDead;
    }
}
