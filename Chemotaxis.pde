int x;
int y;
Bacteria[] bob;
 void setup()   
 {     
   size(500,500);
   background(0);
   bob=new Bacteria[10];  
   for(int i = 0; i < bob.length;i++)
  {
    x=(int)(Math.random()*501);
    y=(int)(Math.random()*501);
    bob[i] = new Bacteria();
  }
 }   
 void draw()   
 {
   for(int i = 0; i < bob.length;i++)
   {
     bob[i].show();
   }
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
     while(myX!=250&&myY!=250)
     {
       myX=myX+(int)((Math.random()*6)-10);
       myY=myY+(int)((Math.random()*6)-10);
     }
   }
   void jump()
   {
     if(mouseX==250&&mouseY==250)
     {
       myX=(int)(Math.random()*401);
       myY=(int)(Math.random()*401);
     }
   }
   void show()
   {
     fill(randomR,randomGB,randomGB);
     ellipse(myX,myY,20,20);
   }
 }  