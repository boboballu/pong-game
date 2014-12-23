int butt=0;
float velx=-2;
float vely=-2;
float x=350,y=200;
int s=150;
int score1=0,score2=0;
float speed = 1;
float speed_cont = 0.0001;
void setup(){
  size(700,400);
  smooth();
  background(100,200,100);
}
void draw(){
    stroke(255);
    strokeWeight(15);
    fill(100,100,200);
    rect(175,100,340,100);
    fill(255);
    textSize(38);
    text("CLICK TO PALY",200,160);
    fill(0);
    textSize(30);
    text("Done By BOBO(TARUN GOVIND KESHAV)",50,300);
    textSize(18);
    text("mail: tarun.83581@gmail.com",50,330);
    noStroke();
    if (mousePressed && (mouseButton == LEFT)) {butt=1;}
    if(butt==1){
      background(210);
      textSize(32);
      text("score :", 100,30);
      text(score1,300,30);
      text(":",400,30);
      text(score2,500,30);
      x = x+velx*speed;
      y = y+vely*speed;
      speed = speed +speed_cont; // speed control value
      if(x<=75){x=350;y=200;score2+=1;}
      if((x>=625)){x=350;y=200;score1+=1;}
      if((x<=80)&(y>s)&(y<(s+80))){velx = -velx;}
      if((y>=380)||(y<=20)){vely = -vely;} 
      if((x>=620)&(y>mouseY)&(y<(mouseY+80))){velx = -velx;}
      ball(x,y);
      slider(s);
      slider1(mouseY);
      }
}
void ball(float x,float y){
  fill(0);
  arc(x,y,40,40,0,2*PI);
}
void slider(int y){
  fill(200,100,100);
  rect(20,y,40,80);
}
void keyPressed(){
 if(keyCode == UP){s=s-15;}
  if(keyCode == DOWN){s = s+15;}
}
void slider1(int y){
  fill(200,100,100);
  rect(640,y,40,80);
}
