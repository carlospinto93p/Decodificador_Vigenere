
/*        A Medias. Intento de script para mostrar una frase letra por letra.
PFont f;
String message = "One by one.";
// An array of Letter objects
Letter[] letters;
int c = 0;

void setup() {
  size(260, 200);
  f = createFont("Arial",20,true);
  textFont(f);
  
  // Create the array the same size as the String
  letters = new Letter[message.length()];
  // Initialize Letters at the correct x location
  int x = 0;
  for (int i = 0; i < message.length(); i++) {
    letters[i] = new Letter(x,100,message.charAt(i)); 
    x += textWidth(message.charAt(i));
  }
}

void draw() { 
  int m = millis();
  background(0);
  int s = m/1000;
  text(s, 90, 40);
  if (0 < s < letters.length*2) {
    
    letters[i].display();
  }
}

// A class to describe a single Letter
class Letter {
  char letter;
  float homex,homey;
  float x,y;

  Letter (float x_, float y_, char letter_) {
    homex = x = x_;
    homey = y = y_;
    letter = letter_; 
  }

  // Display the letter
  void display() {
    fill(255);
    textAlign(LEFT);
    text(letter,x,y);
  }

  // Move the letter randomly
  void shake() {
    x += random(-2,2);
    y += random(-2,2);
  }

  // Return the letter home
  void home() {
    x = homex;
    y = homey; 
  }
}
*/
