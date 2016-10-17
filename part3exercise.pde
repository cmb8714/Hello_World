
void setup() {

size(600, 600);

}

int x = 600;
int y = 600;

int up;
int down;
int left;
int right;

void draw() {
fill(255);
rect(0,0,width,height);
if( keyPressed && (key == CODED)){
    if(keyCode == LEFT){
      left++;
      right--;
    }
    else if (keyCode == RIGHT){
      right++;
      left--;
    }
    else if (keyCode == UP){
      up++;
      down--;
    }
    else if (keyCode == DOWN){
      down++;
      up--;
    }
}
strokeWeight(0);
fill(right*up);
ellipseMode(CENTER);
ellipse(x/2-left,y/2-y/12-up, x/2, y/2);
fill(23, 175, 198);
triangle(x/2+100-left,y/3-50-up, x/2+100-left,y/3-20-up, x/2+35-left,y/3-up);
triangle(x/2-100-left,y/3-50-up, x/2-100-left,y/3-20-up, x/2-35-left,y/3-up);
fill(121, 210, 224);
triangle(x/2-left,y/2-50-up, x/2+50-left,y/2-up, x/2-50-left,y/2-up);
fill(255);
ellipse(x/2-135/2-left, y/3+15-up, 30,30);
ellipse(x/2+135/2-left, y/3+15-up, 30,30);
fill(left*up);
float angle=0;
angle = atan2( mouseY - height/2, mouseX - width/2 );
pushMatrix();
translate(x/2-135/2-left, y/3+15-up);
rotate(angle);
triangle(-left, up-5, -left+5, up+5, -left-5, up+5);
popMatrix();

pushMatrix();
translate(x/2+135/2-left, y/3+15-up);
rotate(angle);
triangle(left, up-5, left+5, up+5, left-5, up+5);
popMatrix();

//System.out.println(angle);





}