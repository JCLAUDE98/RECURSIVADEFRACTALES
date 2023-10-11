float angulo=PI/4;
int m=(int)random(0,200);

class arbol{
int x;
arbol(int a){
x=a;}

void dibujaArbol(){
FractalLineaCentral(x);
}}

arbol Arbol1;
arbol Arbol2;
arbol Arbol3;

void setup(){
size(640,480);
Arbol1 = new arbol((int)random(0,200));
Arbol2 = new arbol((int)random(0,200));
Arbol3 = new arbol((int)random(0,200));
}

void draw(){
background(0);
translate(m,height);
angulo=map(mouseX,0,640,-PI,PI);
stroke(255);
Arbol1.dibujaArbol();
Arbol2.dibujaArbol();
Arbol3.dibujaArbol();
}

void FractalLineaCentral(int x){
pushMatrix();
line(0,0,0,-x);
translate(0,-x);
x=2*x/3;
if (x>1){
pushMatrix();
rotate(angulo);
line(0,0,0,-x);
FractalLineaCentral(x);
popMatrix();
pushMatrix();
rotate(-angulo);
line(0,0,0,-x);
FractalLineaCentral(x);
popMatrix();
}
popMatrix();
translate(m,0);
}
