int score;
float XSpeed=1;
float YSpeed=1;
float baseSpeed=1.5;
float time;
float ballX;
float ballY;
int Xdirection = 1;
int Ydirection = 1;

void setup(){
  size (640,480);
}

void draw(){
  background(255/2); //draw the background
  rectMode(0);
  rect(0,0,25,height);//draw the backboard
  time = millis();//create time
  
  
  text("Timer: " + time/1000, width/2, height-5);//draw time
  text("Score: " + score, width/2, 15); //draw score
 
  //System.out.println(time);
  
  //create the speed
  if(millis()%1 == 0){
    XSpeed += baseSpeed*Xdirection;
    YSpeed += (baseSpeed/10)*Ydirection;
  }
  //end create the speed
  
  //stay in bounds
  
  if((ballX-(25/2)-1 <= 25)){
    Xdirection = -1*Xdirection;
    XSpeed += 25/2+1;
  }
  if((ballY+(25/2)+1>=height)){
    Ydirection = -1*Ydirection;
    YSpeed -= 2;
  }
  if((ballY-(25/2)-1 <= 0 )){
    Ydirection = -1*Ydirection;
    YSpeed += 2;
  }
  //end stay in bounds
  
  //change position of the ball
  ballX = (width/2+XSpeed);
  ballY = (height/2+YSpeed);
  //end change position of the ball
  
  //hit the paddle
       if((ballX+(25/2)+1>= width-75)){ //this works
        //System.out.println("true");
         if((ballY>= mouseY-height/12) && (ballY<= mouseY+height/12)){
          System.out.println("Good Save!");
      Xdirection = -1*Xdirection;
      XSpeed -= 2;
      score += 1;
      baseSpeed +=1;
  }}
  //end hit the paddle
  
  ellipse(ballX,ballY, 25,25); //draw the ball
  
  //draw paddle
  rectMode(CENTER);
  rect(width-75, mouseY, 25, height/6);
  //end draw paddle
   if((ballX+(25/2)+1>= width)){
    noLoop();
    rectMode(CORNER);
    fill(0);
    rect(0,0,width,height);
    fill(255);
    textSize(48);
    text("You Lose!", width/2, height/2);
  }
  if(score == 12){
    noLoop();
    rectMode(CORNER);
    fill(0);
    rect(0,0,width,height);
    fill(255);
    textSize(48);
    text("You Win!", width/2, height/2);
  } 
  
}
