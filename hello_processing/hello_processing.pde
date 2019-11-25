 //Zoe DeGuzman
 //Hello Processing
 //A circle bounces around the screen and changes color when it hits a wall. 
 //It also prints "hello world" on the console
  double aPos = 150;
  double bPos = 150;
  int cPos = 150;
  int dPos = 150;
  //These are the 4 coordinates of the ellipse; aPos and Bpos are the position, cPos and dPos are the size
  double x = 1;
  double y = 1;
  int direction = 1;
  //Moves forward by one each time
  int ColorA = 0;
  int ColorB = 150;
  int ColorC = 250;
  //These are the starting colors of the ellipse (a shade of blue)
  int A = 50;
  int B = 20;
  int C = 40;
  //These are the variables added to the color each time, so that it changes from blue to red and back again
void setup ()
{
  size (300,300);  
  //The starting size is 300 x 300
}
 
void draw ()
{
    background (255,150,0);
    //Sets the background color (Orange)
    ellipse ((int)aPos, (int)bPos,cPos,dPos);
    //Sets the position of the ellipse
    fill (ColorA,ColorB,ColorC);
    //Colors the ellipse
 
    aPos = aPos + x;
    bPos = bPos + y;
    //Moves the position each time
    if (aPos >= (300-(cPos/2)) 
        || aPos <= (0 + (cPos/2))
        || bPos >= (300-(dPos/2)) 
        || bPos <= (0 + (dPos/2)))
    //If the ellipse gets close to the corner...
    { 
      direction *= -1;
      x = direction * Math.random() * 2;
      y = direction * Math.random() * 2;
      //...switch directions
      ColorA = ColorA + A;
      ColorB = ColorB - B;
      ColorC = ColorC - C;
      //Changes the colors
      if (ColorA >= 255 || ColorA <= 0)
      //If the ellipse is fully red or blue...
      {
        A = -A;
        B = -B;
        C = -C;
        //...switch directions towards the other color
      }
 
    }
 
    fill (ColorA,ColorB,ColorC);
    //prints on console
    println ("hello world");
 
}
