/**
 * HardwareHackingSound
 *
 * This Processing sketch is part of the WdKA Hardware Hacking course.
 *
 * It uses the Minim library, which comes with your processing installation, to play sounds.
 *
 * See <a href="http://interactionstation.wdka.hro.nl/wiki/Hardware_Hacking">Hardware Hacking Course</a>
 * @see <a href="http://code.compartmental.net/tools/minim/">Minim</a>
 *
 * @author Brigit Lichtenegger
 * @version 1.0
 */

import ddf.minim.*;

Minim minim;
AudioPlayer spacePlayer;
AudioPlayer upPlayer;
AudioPlayer downPlayer;
AudioPlayer rightPlayer;
AudioPlayer leftPlayer;

void setup() {

  // we pass this to Minim so that it can load files from the data directory
  minim = new Minim(this);

  spacePlayer = minim.loadFile("space.wav");
  upPlayer = minim.loadFile("up.wav");
  downPlayer = minim.loadFile("down.wav");
  rightPlayer = minim.loadFile("right.wav");
  leftPlayer = minim.loadFile("left.wav");
}

void draw() {
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      if(!upPlayer.isPlaying()) upPlayer.play(0);
    }
    else if (keyCode == DOWN) {
      if(!downPlayer.isPlaying()) downPlayer.play(0);
    }
    else if (keyCode == RIGHT) {
      if(!rightPlayer.isPlaying()) rightPlayer.play(0);
    }
    else if (keyCode == LEFT) {
      if(!leftPlayer.isPlaying()) leftPlayer.play(0);
    }
  }
  else if (key == ' ') {
    if(!spacePlayer.isPlaying())spacePlayer.play(0);
  }
}


// Minim requires that this function be added
void stop() {
  spacePlayer.close();
  upPlayer.close();
  downPlayer.close();
  rightPlayer.close();
  leftPlayer.close();
  minim.stop();

  super.stop();
}
