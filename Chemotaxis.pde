int x;
int y;
Bacteria[] bob;
 void setup()   
 {     
   size(800,800);
   background(0);
   bob=new Bacteria[5];  
   for(int i = 0; i < bob.length;i++)
  {
    frameRate(30);
    x=(int)(Math.random()*800);
    y=(int)(Math.random()*800);
    bob[i] = new Bacteria();
  }
 }   
 void draw()   
 {
   background(0);
   for(int i = 0; i < bob.length;i++)
   {
     bob[i].walk();
     bob[i].size=bob[i].size+(int)(Math.random()*5);
     bob[i].show();
     if(bob[i].size==600)
     { 
       background(bob[i].randomR,bob[i].randomG,bob[i].randomB);
       noLoop();
     }
   }
 }  
 class Bacteria    
 {     
   int myX,myY;
   int size;
   int randomR,randomG,randomB;
   Bacteria()
   {
     size=20;
     myX=x;
     myY=y;
     randomR=(int)((Math.random()*201)+50);
     randomG=(int)((Math.random()*201)+50);
     randomB=(int)((Math.random()*201)+50);
   }
   void walk()
   {
     myX=myX+(int)((Math.random()*50)-25);
     myY=myY+(int)((Math.random()*50)-25);
     if(myX>800||myX<0)
     {
       myX=(int)(Math.random()*800);
     }
     if(myY>800||myY<0)
     {
       myY=(int)(Math.random()*800);
     }
   }
   void show()
   {
     fill(randomR,randomG,randomB);
     noStroke();
     ellipse(myX,myY,size,size);
   }
 }  