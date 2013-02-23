final int STATE_WAIT = 0;
final int STATE_INTRO = 1;
final int STATE_GAME = 2;
final int STATE_END = 3;

int currState = STATE_WAIT;

State state;

void setup() {
  size(800, 600);
  state = new StateWait();
}
void draw() {
  background(0);  
  state.draw();
  if (state.done()) {
    nextState();
  }
}
void mousePressed() {
  state.mousePressed();
}
void nextState() {
  currState++;

  switch(currState) {
    case STATE_WAIT:
      state = new StateWait();
      break;
    case STATE_INTRO:
      state = new StateIntro();
      break;
    case STATE_GAME:
      state = new StateGame();
      break;
    case STATE_END:
      state = new StateEnd();
      break;
  }
}
