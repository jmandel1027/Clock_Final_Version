class Seconds {

  int cx, cy;
  int c2x, c2y;
  float secondsRadius;

  void ssetup() {
    // Setting up clock size and position
    int radius = min(width, height) / 2;
    secondsRadius = radius * 0.18;

    cx = width / 2;
    cy = height / 2;

    c2x = width / 2;
    c2y = height / 2;
  }

  void update() {
    // Angles for sin() and cos() start at 3 o'clock;
    // subtract HALF_PI to make them start at the top
    float s = map(second(), 0, 60, 0, TWO_PI) - HALF_PI;

    // Draw the hands of the clock
    stroke(255);
    strokeWeight(1);
    
    // Linking the clock endpoints to middle clock, all clocks are rotating together based on seconds
    for (int i = 0; i < width; i +=20) {   // Seconds all linked to clock in middle of grd
      line(cx, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
      line(cx+120, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
      line(cx-120, cy, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
      line(cx, cy+120, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
      line(cx, cy-120, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
      line(cx-120, cy-120, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
      line(cx+120, cy-120, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
      line(cx-120, cy+120, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
      line(cx+120, cy+120, cx + cos(s) * secondsRadius, cy + sin(s) * secondsRadius);
    }
  }
}