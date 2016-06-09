class Hours {
  float t;
  
  // Defines the motion of parametric curve
  float x1(float t) {
    return sin(t / 3.14) * 100 + sin(-t / 42) * 20;
  }

  float y1(float t) {
    return cos(t / 3.14) * 200;
  }

  float x2(float t) {
    return sin(t / 3.14) * 200 + sin(-t) * 2;
  }

  float y2(float t) {
    return cos(t / 3.14) * 100 + cos(t / 24) + 02 ;
  }

  
  void update() {
    stroke(255);
    strokeWeight(5);

    translate(225, 225);
    // Triggers parametric motion and draws number of lines that correspond to hour
    for ( int i = 0; i < hour(); i++) {
      line(x1(t + i), y1(t + i), x2(t + i), y2(t + i));
    }
    t += 0.05;
  }
}