
import oscP5.*;
import netP5.*;

Figura f1,f2,f3,f4,f5,f6;
Marco marco;
color c1, c2, c3, c4,c5;

OscP5 oscP5;


NetAddress direccionRemota;
int r1a, r2a, r3a, r4a, r5a, b1a, b2a, b3a, b4a, b5a, g1a, g2a, g3a, g4a, g5a;
float r1, r2, r3, r4, r5, b1, b2, b3, b4, b5, g1, g2, g3, g4, g5;
int x;

void setup() {
  size (720,480);

  oscP5 = new OscP5(this, 12000);
  

  direccionRemota = new NetAddress("127.0.0.1", 12000);
  
  x = 1;
  r1 = 0;
  b1 = 0;
  g1 = 0;
  r2 = 0;
  b2 = 0;
  g2 = 0;
  r3 = 0;
  b3 = 0;
  g3 = 0;
  r4 = 0;
  b4 = 0;
  g4 = 0;
  r5 = 0;
  b5 = 0;
  g5 = 0;
  
  marco = new Marco();
  f1 = new Figura();
  f2 = new Figura();
  f3 = new Figura();
  f4 = new Figura();
  f5 = new Figura();
  
  /*c1 = color (0,176,80);
  c2 = color (146,34,42);
  c3 = color (112,48,160);
  c4 = color (255,192,0);
  c5 = color (49,102,33);*/
  

}

void draw() {

 c1 = color (r1,g1,b1);
 c2 = color (r2,g2,b2);
 c3 = color (r3,g3,b3);
 c4 = color (r4,g4,b4);
 c5 = color (r5,g5,b5);
/*c2 = color (r2,b2,g2);
c3 = color (r3,b3,g3);
c4 = color (r4,b4,g4);
c5 = color (r5,b5,g5);  */
print (r3);


background (c4);
marco.dibujarm1(c1,c5);
marco.dibujarm2(c1,c5);
marco.dibujarm3(c1,c5);
marco.dibujarm4(c1,c5);

pushMatrix();
scale (0.85);
translate (50,0);
f1.dibujar(c1,c2,c3,c4);
popMatrix();

pushMatrix();
scale (0.85);
translate (50,260);
f2.dibujar(c1,c2,c3,c4);
popMatrix();

pushMatrix();
scale (1.2,0.85);
translate (185,120);
f3.dibujar(c1,c2,c3,c4);
popMatrix();

pushMatrix();
scale (0.85);
translate (550,0);
f4.dibujar(c1,c2,c3,c4);
popMatrix();

pushMatrix();
scale (0.85);
translate (550,260);
f5.dibujar(c1,c2,c3,c4);
popMatrix();
}


void mousePressed() {

  OscMessage mensaje = new OscMessage("/mouseX");

  mensaje.add(mouseX); 

  //envío el mensaje 
  oscP5.send(mensaje, direccionRemota);
}


void oscEvent(OscMessage theOscMessage) {  

  if (theOscMessage.checkAddrPattern("/r1") == true) {
    r1a = theOscMessage.get(0).intValue();
    r1 = map (r1a, 0, 127, 0, 255);
  ;
  }

 
  if (theOscMessage.checkAddrPattern("/g1") == true) {
    g1a = theOscMessage.get(0).intValue();
    g1 = map (g1a, 0, 127, 0, 255);
  }
  
  if (theOscMessage.checkAddrPattern("/b1") == true) {
    b1a = theOscMessage.get(0).intValue();
    b1 = map (b1a, 0, 127, 0, 255);
  }
  
  
    if (theOscMessage.checkAddrPattern("/r2") == true) {
    r2a = theOscMessage.get(0).intValue();
    r2 = map (r2a, 0, 127, 0, 255);
  }

 
  if (theOscMessage.checkAddrPattern("/g2") == true) {
    g2a = theOscMessage.get(0).intValue();
    g2 = map (g2a, 0, 127, 0, 255);
  }
  
  if (theOscMessage.checkAddrPattern("/b2") == true) {
    b2a = theOscMessage.get(0).intValue();
    b2 = map (b2a, 0, 127, 0, 255);
  }
  
    
    if (theOscMessage.checkAddrPattern("/r3") == true) {
    r3a = theOscMessage.get(0).intValue();
    r3 = map (r3a, 0, 127, 0, 255);
  }

 
  if (theOscMessage.checkAddrPattern("/g3") == true) {
    g3a = theOscMessage.get(0).intValue();
    g3 = map (g3a, 0, 127, 0, 255);
  }
  
  if (theOscMessage.checkAddrPattern("/b3") == true) {
    b3a = theOscMessage.get(0).intValue();
    b3 = map (b3a, 0, 127, 0, 255);
  }
  
  
      if (theOscMessage.checkAddrPattern("/r4") == true) {
    r4a = theOscMessage.get(0).intValue();
    r4 = map (r4a, 0, 127, 0, 255);
  }

 
  if (theOscMessage.checkAddrPattern("/g4") == true) {
    g4a = theOscMessage.get(0).intValue();
    g4 = map (g4a, 0, 127, 0, 255);
  }
  
  if (theOscMessage.checkAddrPattern("/b4") == true) {
    b4a = theOscMessage.get(0).intValue();
    b4 = map (b4a, 0, 127, 0, 255);
  }
  
  
      if (theOscMessage.checkAddrPattern("/r5") == true) {
     r5a = theOscMessage.get(0).intValue();
    r5 = map (r5a, 0, 127, 0, 255);
  }

 
  if (theOscMessage.checkAddrPattern("/g5") == true) {
    g5a = theOscMessage.get(0).intValue();
    g5 = map (g5a, 0, 127, 0, 255);
  }
  
  if (theOscMessage.checkAddrPattern("/b5") == true) {
    b5a = theOscMessage.get(0).intValue();
    b5 = map (b5a, 0, 127, 0, 255);
  }
}
