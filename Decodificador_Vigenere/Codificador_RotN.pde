// Codificador Rot-n.

/*
PFont f;
String t1 = "e";
String t3;
char[] c1;
char[] c2;
char[] abc = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};
// Variable: n.
                int n = 8; 

void setup() {
  size(400,200);
  f = createFont("Arial",16,true);
}

void draw() {
  String t2 = t1.toUpperCase();
  c1 = new char[t2.length()];
  c2 = new char[t2.length()];
  for (int i = 0; i < t2.length(); i++) {
     c1[i] = t2.charAt(i);
     for (int i1 = 0; i1 < abc.length; i1++) {
        if (c1[i] == abc[i1]) {
          c2[i] = abc[(i1+n)%abc.length];
        } 
     }
  }
  String t3 = new String(c2);
  background(0);
  textFont(f,16);
  fill(255); 
  text(t3,10,20);
  noLoop();
}
*/

