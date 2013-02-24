class StateGame extends BaseState implements State {

  String [] licenseLines;
  String [] agreementLines;
  GameEngine engine;
  int scroll = 0;
  String currentAgreementTxt = "";

  public StateGame(){
    engine = new GameEngine();
    licenseLines = loadStrings("license.txt");
    agreementLines = loadStrings("agreement.txt");
    nextAgreement();
  }

  void draw() {
    super.draw();

    drawBackgroundText();
    drawLives();

    engine.draw();
    if (engine.isDead()){
        done = true;
    }

    write(currentAgreementTxt, F20, height/2, #FFFFFF);
  }

  void drawBackgroundText(){
    fill(255, 60);
    for (int i = 0 ; i < licenseLines.length; i++) {
      textFont(F20);
      text(licenseLines[(i + scroll) % licenseLines.length], 10, i * 10);
    }
    scroll += 1;
  }
  void drawLives() {
    fill(#FF0000);
    stroke(#FF0000);
    tri(20, 50);
    noFill();
    tri(50, 50);
    tri(80, 50);
  }
  void tri(float x, float y) {
    triangle(x, y-10, x+20, y, x, y+10);
  }
  void nextAgreement() {
    int currentAgreement = int(random(agreementLines.length));
    currentAgreementTxt = agreementLines[currentAgreement];
  }
  
  void mousePressed() {
    if(engine.onClick()) {
      nextAgreement();
    }
  }

}
