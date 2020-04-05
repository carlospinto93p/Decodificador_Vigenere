// Deodificador Vigenère.

PFont f;
String t1 = "zmxzbvidyawaealgtpteamzrvnmoczwbahndsiwgzgainyiubowkmifwihwfawzgbxbxmpjmqdvfoxsslqfgfwmpgjzqxsvoiegywmbwayizrgzmhwfawzhusbiofhtmbgwlubzqjdovfafwydzqanavekvlpubgzmechf" +
"latfatqbpwqzfrkbxsfkldsneaukndsqrndwzsaszdcjkbdsrlaatpgjnzrkbabrfmmhulpqvndwatnkbdsrltmacabgfawlympgtxoelwfvruwxrnflpozhetsaegqmrkeqfrkbmpowlnmgzmrznkpatnfmabyaothgzifgcdqfhuwvu" + 
"uulizrggcovrvbtsfgczrbxauzrfkqoavqzhuwvmyrvtuuulqeojlmzhugceoavxqccdmyoltmycewxqccdmfoycqzujabtchlabsncqzucwwbzrzmmfvfoiwgzwghyaafsaavsdrgxxsjjqfwayaabtkbtognwuqrkvqjrjatoewizra" +
"gwzsqszqrqaafietbtsfgczrbxauzrfkqtbgtegnalumbmlabblszcjkqxsaumxwxwiooaumduegeevrszymjgzpggzifwzaothgwiovlgcfoxwukoeeafvnlqywtzbdsnupkchtcfalowdrfdqwsfatqbgjiubqjwbgswtxoavmovbwlu" +
"bgzmisydaatfatqbpwizrgzmbsbhtqpbompoavxdolwlfcgzmzsbfoargzmkanvmmbqlpqgvyvrznkpqrbmbuhfoidbvfoubgzmicevafvnlqfknknafzavsoavbtsfaozgnalfvrowdrfgnfvrhzaduwbeoewedwglmzcalpqghtemmjs" +
"txgnflfsawuqbgzixzfsvpkuaabsewlubgzmechflecskqxsaum";
int longclave = 5;
char[] c1;
char[] c2;
char[][] ch3;
String[] s1;     // Digrafos
int[] s1f;       // Frecuencia de digrafos
String[] s2;     // Trigrafos
int[] s2f;       // Frecuencia de trigrafos
char[] abc = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z'};  // Alfabeto

void setup() {
  size(1300,680);
  f = createFont("Arial",16,true);
}

void draw() {
  background(0);
  textFont(f,16);
  fill(255); 
  String t2 = t1.toUpperCase();    // Pasa a mayúsculas.
  c1 = new char[t2.length()];
  for (int i = 0; i < t2.length(); i++) {
     c1[i] = t2.charAt(i);
  }                                // Convierte el texto inicial en una lista de caracteres.
  s1 = new String[t2.length()-1];
  s1f = new int[t2.length()-1];
  for (int i = 0; i < t2.length()-1; i++) {    // Crea el vector de digrafos, con sus frecuencias.
    s1f[i] = 1;
    c2 = new char[2];
    c2[0] = c1[i];
    c2[1] = c1[i+1];
    s1[i] = new String(c2);
    if (i >= 1) {
      for (int i1 = 0; i1 < i; i1++) {
        if (s1[i1].equals(s1[i])) {
          s1f[i]++;
        }
      }
    }
  }
  int c = 0;                                    // Cuenta las frecuencias máximas.
  for (int i = 0; i < t2.length()-1; i++) {    // Escoge cada digrafo más frecuente
    if (s1f[i] == max(s1f)) {
      int[] posicioness1 = new int[s1f[i]];
      int[] tramoss1f = new int[s1f[i]-1];
      int cont1 = 0;
      for (int i1 = 0; i1 < t2.length()-1; i1++) {
        if (s1[i].equals(s1[i1])) {
          posicioness1[cont1] = i1;
          cont1++;
        }
      }
      for (int i1 = 0; i1 < s1f[i]-1; i1++) {
         tramoss1f[i1] = posicioness1[i1+1] - posicioness1[i1];
      }
      text("El digrafo más común es " + s1[i] +", con una frecuencia de " + s1f[i] + ".",10,20+20*c);
      String jointramoss1f = join(nf(tramoss1f, 0), ", ");
      text("Distancias: " + jointramoss1f, 500, 20+20*c);
      c++;
    }
  }
  s2 = new String[t2.length()-2];
  s2f = new int[t2.length()-2];
  for (int i = 0; i < t2.length()-2; i++) {    // Crea el vector de trigrafos, con sus frecuencias.
    s2f[i] = 1;
    c2 = new char[3];
    c2[0] = c1[i];
    c2[1] = c1[i+1];
    c2[2] = c1[i+2];
    s2[i] = new String(c2);
    if (i >= 2) {
      for (int i1 = 0; i1 < i; i1++) {
        if (s2[i1].equals(s2[i])) {
          s2f[i]++;
        }
      }
    }
  }
  for (int i = 0; i < t2.length()-2; i++) {    // Escoge cada trigrafo más frecuente
    if (s2f[i] == max(s2f)) {
      int[] posicioness2 = new int[s2f[i]];
      int[] tramoss2f = new int[s2f[i]-1];
      int cont1 = 0;
      for (int i1 = 0; i1 < t2.length()-2; i1++) {
        if (s2[i].equals(s2[i1])) {
          posicioness2[cont1] = i1;
          cont1++;
        }
      }
      for (int i1 = 0; i1 < s2f[i]-1; i1++) {
         tramoss2f[i1] = posicioness2[i1+1] - posicioness2[i1];
      }
      text("El trigrafo más común es " + s2[i] +", con una frecuencia de " + s2f[i] + ".",10,20+20*c);
      String jointramoss2f = join(nf(tramoss2f, 0), ", ");
      text("Distancias: " + jointramoss2f, 500, 20+20*c);
      c++;
    }
  }
  
  /*
  text("Análisis de frecuencias. Longitud de la clave: " + longclave, 10, 30+20*c);      // Análisis de frecuencias.
  char[][] ch3 = new char[longclave][t2.length()/longclave+1];                              // Separa los alfabetos.
  for (int i = 0; i < longclave; i++) {
     int cont1 = 0;
     for (int i1 = 0; i1 < t2.length(); i1++) {
       if (i1%longclave == i) {
         ch3[i][cont1] = c1[i1];
         cont1++;
       }
     } 
  }
  
  for (int i2 = 0; i2 < longclave; i2++) {
    for (int i = 0; i < abc.length; i++) {    
      int cont1 = 0;
      for (int i1 = 0; i1 < t2.length()/longclave+1; i1++) {
        String st1 = str(ch3[i2][i1]);
        String st2 = str(abc[i]);
        if (st1.equals(st2)) {
           cont1++; 
        }
      }
      float f1 = float(cont1);
      float f2 = float(t2.length()/longclave+1);
      float f3 = 100 * f1/f2;
      if (i < 8) {
        text(abc[i] + ": " + f3, 10 + i*120, 50+20*c+100*i2);
      } else if (i < 16) {
        text(abc[i] + ": " + f3, 10 + (i-8)*120, 70+20*c+100*i2);
      } else if (i < 24) {
        text(abc[i] + ": " + f3, 10 + (i-16)*120, 90+20*c+100*i2);
      } else {
        text(abc[i] + ": " + f3, 10 + (i-24)*120, 110+20*c+100*i2);
      }
    }
  }
  */
  
  int[] desf = new int[longclave];    // Desencriptación.
  // Parte manual:
  desf[0] = 13;
  desf[1] = 8;
  desf[2] = 18;
  desf[3] = 14;
  desf[4] = 12;
  //
  //String joindesf = join(nf(desf, 0), ", ");
  text("Desencriptación. Longitud de la clave: " + longclave + ". Desfases:                                Clave de encriptado:", 10, 30+20*c);
  textAlign(CENTER);
  fill(0, 180, 0);
  text(desf[1], 400, 30+20*c);
  text(abc[abc.length-desf[1]], 700, 30+20*c);
  fill(0, 0, 180);
  text(desf[2], 420, 30+20*c);
  text(abc[abc.length-desf[2]], 720, 30+20*c);
  fill(180, 180, 0);
  text(desf[3], 440, 30+20*c);
  text(abc[abc.length-desf[3]], 740, 30+20*c);
  fill(0, 180, 180);
  text(desf[4], 460, 30+20*c);
  text(abc[abc.length-desf[4]], 760, 30+20*c);
  fill(180, 0, 0);
  text(desf[0], 480, 30+20*c);
  text(abc[abc.length-desf[0]], 780, 30+20*c);
  //textAlign(LEFT);
  c2 = new char[t2.length()];
  int x = 10;
  int y = 0;
  for (int i = 0; i < t2.length(); i++) {
    for (int i2 = 0; i2 < longclave; i2++) {
      if (i % longclave == i2) {
        for (int i1 = 0; i1 < abc.length; i1++) {
          if (c1[i] == abc[i1]) {
            c2[i] = abc[(i1+desf[(i2+1)%longclave])%abc.length];
            // Parte manual:
            if ((i2+1)%longclave == 0) fill(180, 0, 0);
            if ((i2+1)%longclave == 1) fill(0, 180, 0);
            if ((i2+1)%longclave == 2) fill(0, 0, 180);
            if ((i2+1)%longclave == 3) fill(180, 180, 0);
            if ((i2+1)%longclave == 4) fill(0, 180, 180);
            //
            text(c2[i], x, 85+20*c+50*y);
            fill(255);
            text(c1[i], x, 60+20*c+50*y);
            x += 13;        
            if (x > 1200) {
               x = 10;
               y += 1; 
            }
          } 
        }
      }
    }
  }
  noLoop();
}
