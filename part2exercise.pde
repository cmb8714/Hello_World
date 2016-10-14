size(600,600);

int x = 600;
int y = 600;

strokeWeight(0);
fill(0);
ellipseMode(CENTER);
ellipse(x/2,y/2-y/12, x/2, y/2);
fill(23, 175, 198);
triangle(x/2+100,y/3-50, x/2+100,y/3-20, x/2+35,y/3);
triangle(x/2-100,y/3-50, x/2-100,y/3-20, x/2-35,y/3);
fill(121, 210, 224);
triangle(x/2,y/2-50, x/2+50,y/2, x/2-50,y/2);
fill(255);
ellipse(x/2-135/2, y/3+15, 30,30);
ellipse(x/2+135/2, y/3+15, 30,30);
fill(0);
ellipse(x/2-135/2, y/3+15, 10,10);
ellipse(x/2+135/2, y/3+15, 10,10);