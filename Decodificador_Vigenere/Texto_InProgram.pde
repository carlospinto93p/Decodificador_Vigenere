/* 

char letter;
String words = "Begin...";
char[] ch1;

String[] list1;

void setup() {
  size(640, 360);
  // Create the font
  textFont(createFont("Georgia", 36));
}

void draw() {
  background(0); // Set background to black

  // Draw the letter to the center of the screen
  textSize(14);
  text("Click on the program, then type to add to the String", 50, 50);
  text("Current key: " + letter, 50, 70);
  text("The String is " + words.length() +  " characters long", 50, 90);
  
  textSize(36);
  text(words, 50, 120, 540, 300);
}

void mouseClicked() {
  list1 = split(words, ' ');
  saveStrings("nouns.txt", list1);
}

void keyPressed() {
  // The variable "key" always contains the value 
  // of the most recent key pressed.
  if ((key >= 'A' && key <= 'z') || key == ' ') {
    letter = key;
    words = words + key;
  }
  if (key == BACKSPACE && words.length() >= 1) {
     ch1 = new char[words.length()-1];
     for (int i = 0; i < words.length()-1; i++) {
       ch1[i] = words.charAt(i);
     }
     words = new String(ch1);
  }
}
*/
