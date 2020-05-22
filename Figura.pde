class Figura {
  
  
void dibujar (color c1a, color c2a, color c3a, color c4a) {

noStroke();
fill (c1a);
beginShape();
vertex(100, 40);
vertex(120, 40);
vertex(120, 60);
vertex(140, 60);
vertex(140, 80);
vertex(160, 80);
vertex(160, 100);
vertex(180, 100);
vertex(180, 120);
vertex(200, 120);
vertex(200, 200);
vertex(180, 200);
vertex(180, 220);
vertex(160, 220);
vertex(160, 240);
vertex(140, 240);
vertex(140, 260);
vertex(120, 260);
vertex(120, 280);
vertex(100, 280);
vertex(100, 260);
vertex(80, 260);
vertex (80,240);
vertex (60,240);
vertex (60,220);
vertex (40,220);
vertex (40,200);
vertex (20,200);
vertex (20,120);
vertex (40,120);
vertex (40,100);
vertex (60,100);
vertex (60,80);
vertex (80,80);
vertex (80,60);
vertex (100,60);
endShape(CLOSE);

fill (c2a);
beginShape();
vertex (100,80);
vertex (120,80);
vertex (120,100);
vertex (140,100);
vertex (140,120);
vertex (160,120);
vertex (160,140);
vertex (180,140);
vertex (180,180);
vertex (160,180);
vertex (160,200);
vertex (140,200);
vertex (140,220);
vertex (120,220);
vertex (120,240);
vertex (100,240);
vertex (100,220);
vertex (80,220);
vertex (80,200);
vertex (60,200);
vertex (60,180);
vertex (40,180);
vertex (40,140);
vertex (60,140);
vertex (60,120);
vertex (80,120);
vertex (80,100);
vertex (100,100);
endShape(CLOSE);

fill (c3a);
beginShape();
vertex (100,100);
vertex (120,100);
vertex (120,120);
vertex (140,120);
vertex (140,140);
vertex (160,140);
vertex (160,160);
vertex (140,160);
vertex (140,180);
vertex (120,180);
vertex (120,200);
vertex (100,200);
vertex (100,180);
vertex (80,180);
vertex (80,160);
vertex (60,160);
vertex (60,140);
vertex (80,140);
vertex (80,120);
vertex (100,120);
endShape(CLOSE);

fill (c4a);
beginShape();
vertex (100,140);
vertex (120,140);
vertex (120,160);
vertex (100,160);
endShape(CLOSE);


}


}
