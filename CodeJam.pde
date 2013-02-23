import promidi.*;

final int STATE_WAIT = 0;
final int STATE_INTRO = 1;
final int STATE_GAME = 2;
final int STATE_END = 3;
final boolean FAST = false;

int currState = STATE_WAIT;

State state;

PFont F10;
PFont F20;
PFont F48;
PFont F100;

MidiIO midiIO;

void setup() {
  size(800, 600);
  
  midiIO = MidiIO.getInstance(this); 
  midiIO.printDevices();  
  midiIO.openInput(0,0);

  F10 = loadFont("Candara-10.vlw");
  F20 = loadFont("Candara-20.vlw");
  F48 = loadFont("Candara-48.vlw");
  F100 = loadFont("Candara-100.vlw");
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

void keyPressed(){
  state.keyPressed();
}

void noteOn(Note note, int device, int channel){
  //state.midiButton();
}

void controllerIn(Controller controller, int device, int channel){
  //state.midiCC(controller.getNumber(), controller.getValue());
}


void nextState() {
  currState = (currState + 1) % 4;

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
