/*
  Final Version of my clock for Programming for Visual Artists
  With Joe Mckay http://www.joemckaystudio.com/
  At SUNY Purchase, Spring 2016 as part of my work in the New Media program
*/

Hours hours;         // Controls Hours
Minutes minutes;     // Controls Minutes
Seconds seconds;     // Controls Seconds

void setup() {
  background(20);
  size(800, 800);
  stroke(255);
                            // Declares, h,m,s
  hours = new Hours();
  minutes = new Minutes();
  seconds = new Seconds();
                            // Declares setup function for h,m,s 
  //hours.hsetup();
  minutes.msetup();
  seconds.ssetup();
}

void draw() {
  background(20);
                            // Declares update function for h,m,s
  hours.update();
  minutes.update();
  seconds.update();
  
}