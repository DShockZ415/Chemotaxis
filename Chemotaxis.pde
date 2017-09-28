int x;
int y;
Bacteria[] bob;
Bacteria notbob;
 void setup()   
 {     
   size(500,500);
   background(0);
   notbob=new Bacteria();
   bob=new Bacteria[5];  
   for(int i = 0; i < bob.length;i++)
  {
    x=(int)(Math.random()*500);
    y=(int)(Math.random()*500);
    bob[i] = new Bacteria();
  }
 }   
 void draw()   
 {
   for(int i = 0; i < bob.length;i++)
   {
     bob[i].jump();
     bob[i].show();
   }
   notbob.show2();
 }  
 class Bacteria    
 {     
   int myX,myY;
   int randomR;
   int randomGB;
   Bacteria()
   {
     myX=x;
     myY=y;
     randomR=(int)((Math.random()*173)+78);
     randomGB=(int)(Math.random()*251);
   }
   void walk()
   {
     myX=250;
     myY=250;
     myX=(int)((Math.random()*10)-5);
     myY=(int)((Math.random()*10)-5);
   }
   void jump()
   {
     myX=(int)(Math.random()*500);
     myY=(int)(Math.random()*500);
   }
   void show()
   {
     fill(randomR,randomGB,randomGB);
     ellipse(myX,myY,20,20);
   }
   void show2()
   {
     fill(0);
     ellipse(250,250,110,110);
   }
 }  
void mouseClicked()
{
  background(0);
  redraw();
}