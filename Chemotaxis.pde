int x;
int y;
int z;
Bacteria[] bob;
 void setup()   
 {     
   size(800,800);
   background(0);
   bob=new Bacteria[5];  
   for(int i = 0; i < bob.length;i++)
  {
    frameRate(60);
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
     bob[i].show();
     if((bob[0].myX==bob[1].myX)||(bob[1].myX==bob[2].myX)||(bob[1].myX==bob[0].myX)||(bob[0].myX==bob[2].myX)||(bob[1].myX==bob[3].myX)||(bob[0].myX==bob[3].myX)||(bob[2].myX==bob[3].myX)||(bob[3].myX==bob[4].myX)||(bob[0].myX==bob[4].myX)||(bob[1].myX==bob[4].myX)||(bob[2].myX==bob[4].myX))
     {
       bob[i].sizex=bob[i].sizex+20;
       bob[i].sizey=bob[i].sizey+20;
     }
     if(bob[i].sizex==600 && bob[i].sizey==600)
     { 
       background(bob[i].randomR,bob[i].randomG,bob[i].randomB);
       noLoop();
     }
   }
 }  
 class Bacteria    
 {     
   int myX,myY;
   int sizex,sizey;
   int randomR,randomG,randomB;
   Bacteria()
   {
     sizex=sizey=z=20;
     myX=x;
     myY=y;
     randomR=(int)((Math.random()*201)+50);
     randomG=(int)((Math.random()*201)+50);
     randomB=(int)((Math.random()*201)+50);
   }
   void walk()
   {
     myX=myX+(int)((Math.random()*40)-20);
     myY=myY+(int)((Math.random()*40)-20);
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
     ellipse(myX,myY,sizex,sizey);
   }
 }  