int total=0;
void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  background(100);
  for(int x=10; x<=400; x+=50)
   { 
    for(int y=10; y<=400; y+=50)
     { 
      Die bob = new Die(x,y);
      bob.roll();
      bob.show();
      total=total+bob.roll;    
     } 
   }
  text(total,250,490);
}
void mousePressed()
{
  redraw();
  total=0;
}
class Die //models one single dice cube
{
  //variable declarations here
  int myX,myY,roll;
  Die(int x, int y) //constructor
  {
    myX=x;
    myY=y;
    //variable initializations here
  }
  void roll()
  {
    if(Math.random()<.16)
      roll=1;
    else if(Math.random()<.32)
      roll=2;
    else if(Math.random()<.48)
       roll=3;
    else if(Math.random()<.64)
        roll=4;
     else if(Math.random()<.8)
         roll=5;
      else if(Math.random()<.98)
          roll=6;
  }
  void show()
  {
    rect(myX,myY,50,50);
    {
      if(roll==1)
        ellipse(myX+25,myY+25,5,5); //middle
      else if(roll==2)
        {
          ellipse(myX+15,myY+35,5,5); //bottom left
          ellipse(myX+35,myY+15,5,5); //top right
        }   
       else if(roll==3)
         {
           ellipse(myX+15,myY+35,5,5);
           ellipse(myX+35,myY+15,5,5);
           ellipse(myX+25,myY+25,5,5);
         } 
         else if(roll==4)
           {
             ellipse(myX+15,myY+35,5,5);
             ellipse(myX+35,myY+15,5,5);
             ellipse(myX+15,myY+15,5,5); //top left
             ellipse(myX+35,myY+35,5,5); //bottom right
           }
          else if(roll==5)
            {
               ellipse(myX+15,myY+35,5,5);
               ellipse(myX+35,myY+15,5,5);
               ellipse(myX+15,myY+15,5,5); 
               ellipse(myX+35,myY+35,5,5);
               ellipse(myX+25,myY+25,5,5);
            }
           else if(roll==6)
             {
               ellipse(myX+15,myY+35,5,5);
               ellipse(myX+35,myY+15,5,5);
               ellipse(myX+15,myY+15,5,5); 
               ellipse(myX+35,myY+35,5,5); 
               ellipse(myX+15,myY+25,5,5); //middle left
               ellipse(myX+35,myY+25,5,5); //middle right
             }
  }
  }
}