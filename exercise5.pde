//Name: Cole Bennett
//Date: October 24
//Rules: Up arrow scales up, Down arrow scales down, r is red tint, g is green tint, b is blue tint, and c is crazy tint
//Control to reset everyting
PImage image;
int x;
int y;
int r;

void setup(){
  size(800,600);
  image = loadImage("1000px-Processing_Logo_Clipped.jpg");
}

void draw(){
  if(keyPressed && key==CODED){
    if(keyCode == UP){
      y++;
      x++;
    }else if (keyCode == DOWN){
      y--;
      x--;
    }
    if(keyCode == RIGHT){
      r++;
    }else if (keyCode == LEFT){
      r--;
    }
    if(keyCode == CONTROL){
      x=0;
      y=0;
      r=0;
      noTint();
    }
  }
  if(keyPressed && key== 'r'){
    tint(255/2,0,0,255);
  }
  if(keyPressed && key== 'g'){
    tint(0,255/2,0,255);
  }
  if(keyPressed && key== 'b'){
    tint(0,0,255/2,255);
  }
  if(keyPressed && key== 'c'){
    tint(random(0,255),random(0,255),random(0,255),255);
  }
    
  background(0);
  imageMode(CENTER);
  pushMatrix();
  translate(width/2,height/2);
  rotate(radians(r));
  image(image, 0,0,150+x,150+y);
  popMatrix();
}