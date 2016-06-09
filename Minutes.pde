class Minutes {
  
  int aX = 20;
  int aY = 20;
  int bX = 380;
  int bY = 20;
  int cX = 380;
  int cY = 380;
  int dX = 20;
  int dY = 380;

  int [] lineXa = new int [60]; 
  int [] lineYa = new int [60]; 
  int [] lineXb = new int [60]; 
  int [] lineYb = new int [60];

  int m; 

  void msetup() {
    // Defining line positioning sequence
    for (int i = 0; i < 60; i ++) {
      if (i%4 == 0) {
        lineXa [i]  = int(random(aX, bX));
        lineYa [i]  = int(random(aY, bY)); 
        lineXb [i]  = int(random(bX, cX));
        lineYb [i]  = int(random(bY, cY));
      }

      if (i%4 == 1) {
        lineXa [i]  = int(random(bX, cX));
        lineYa [i]  = int(random(bY, cY)); 
        lineXb [i]  = int(random(dX, cX));
        lineYb [i]  = int(random(dY, cY));
      }

      if (i%4 == 2) {
        lineXa [i]  = int(random(dX, cX));
        lineYa [i]  = int(random(cY, dY));
        lineXb [i]  = int(random(aX, dX)); 
        lineYb [i]  = int(random(aY, dY));
      }

      if (i%4 == 3) {
        lineXa [i]  =  int(random(aX, dX));
        lineYa [i]  = int(random(aY, dY)); 
        lineXb [i]  = int(random(aX, bX));
        lineYb [i]  =  int(random(aY, bY));
      }
    }
  }

  void update() {
    stroke(255);
    strokeWeight(1);
    // Triggers line sequence which corresponds to minutes
    for (int i = 0; i < minute(); i ++) {
      line(lineXa [i], lineYa [i], lineXb [i], lineYb [i]);
    }
    
    noStroke();
  }
}