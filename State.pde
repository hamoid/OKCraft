// All states must implement these functions
interface State {
  void draw();
  void mousePressed();
  void keyPressed();
  boolean done();
}
