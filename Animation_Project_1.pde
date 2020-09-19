//Emma Dong
//Block 1-1B
//September 18th
 
////     Variables     ////
int bg1, bg2, bg3;             //Background hill variables
int bny;                       //Bunny variable
int r1,r2,r3,r4,r5;            //Rock Variables
int s,s1;                      //Sun Variable
int bnys;                      //Bunny Shadow Variable
int cl1,cl2,cl3,cl4,cl5,cl6;                       //Clouds Variables

////       Setup       ////
void setup(){ 
  size(1000,750);
  
  bg1 = 0;                      // Hill Variables
  bg2 = 500; 
  bg3 = 1000; 
  bny = 100;                    // Bunny Variable
  r1 = -150;                    //Rock Variable
  r2 = 0;
  r3 = 400;
  r4 = 250;
  r5 = 650;
  s = 500;                      //Sun Variable
  s1 = 1300;
  bnys = 100;                   //Bunny Shadow Variable
  cl1 = 50;                     //Clouds Variable
  cl2 = 170;
  cl3 = 650;
  cl4 = 850;
  cl5 = 1200;
  cl6 = 900;
}

////       DRAW       ////

void draw(){
  background(197,175,255);      //SKY
  stroke(197,175,255);  
  fill(203,179,255);
  rect(0,80,1000,670);
  stroke(213,179,255);
  fill(215,179,255);
  rect(0,160,1000,670);
  stroke(215,179,255);
  fill(220,184,245);
  rect(0,240,1000,670);
  stroke(220,184,245);
  fill(236,184,220);
  rect(0,320,1000,670);
  stroke(236,184,220);
  fill(247,179,246);
  rect(0,400,1000,670);
  
  stroke(255,248,106);          //SUN
  fill(255,247,77);
  ellipse(500,s,600,600);
  ellipse(500,s1,600,600);
  fill(255,247,77,50);
  stroke(255,248,106,20);
  ellipse(500,s,900,900);
  ellipse(500,s1,900,900);
  s = s + 1;                    //SUN MOVEMENT
  s1 = s1 - 1;
  if (s > 1300) s = 500;        //SUN RESTRICTIONS
  if (s1 < 500) s1 = 1300;
   
  fill(255,214,214);            //CLOUDS
  stroke(255,214,210);
  ellipse(cl1,100,400,30);
  ellipse(cl2,130,500,30);
  ellipse(cl3,275,600,40);
  ellipse(cl4,240,800,50);
  ellipse(cl5,60,400,20);
  ellipse(cl6,40,300,20);
  cl1 = cl1 + 2;                //CLOUDS MOVEMENT
  cl2 = cl2 + 2;
  cl3 = cl3 + 3;
  cl4 = cl4 + 3;
  cl5 = cl5 + 1;
  cl6 = cl6 + 2;
  if (cl1 > 1400) cl1 = -400;  //CLOUDS REQUIREMENT
  if (cl2 > 1400) cl2 = -400;
  if (cl3 > 1400) cl3 = -400;
  if (cl4 > 1400) cl4 = -400;
  if (cl5 > 1400) cl5 = -400;
  if (cl6 > 1400) cl6 = -400;
   
  fill(0,178,60);               //HILLS
  stroke(0,178,40);
  ellipse(bg1,500,500,500);
  ellipse(bg2,500,500,500);
  ellipse(bg3,500,500,500);
  bg1 = bg1 + 3;                //HILL MOVEMENT     
  bg2 = bg2 + 3;
  bg3 = bg3 + 3;
  if (bg1 > 1250) bg1 = -250;   //HILL RESTRICTIONS
  if (bg2 > 1250) bg2 = -250;
  if (bg3 > 1250) bg3 = -250;
  
  fill(203);                    //ROCKS
  stroke(190);
  ellipse(r1,520,200,100);
  ellipse(r2,500,150,200);
  ellipse(r3,495,300,50);
  ellipse(r4,510,300,100);
  ellipse(r5,510,100,50);
  r1 = r1 + 4;                  //ROCK MOVEMENT
  r2 = r2 + 4;
  r3 = r3 + 4;
  r4 = r4 + 4;
  r5 = r5 + 4;
  if (r1 > 1100) r1 = -100;     //ROCK RESTRICTIONS  
  if (r2 > 1100) r2 = -75;
  if (r3 > 1100) r3 = -150;
  if (r4 > 1100) r4 = -150;
  if (r5 > 1100) r5 = -50;
  
  fill(211,186,69);             //GROUND
  stroke(201,170,32);
  rect(0,500,1000,300); 
  stroke(211,186,41);
  fill(211,186,41); 
  rect(0,510,1000,300);
  
  fill(213,184,75);             //BUNNY SHADOW
  stroke(213,184,75);
  ellipse(bnys,660,300,150);
  fill(203,167,0);              
  stroke(203,167,100);
  ellipse(bnys,660,150,75);
  bnys = bnys + 5;
  if (bnys > 1100) bnys = -100;
  
  fill(250);                    //BUNNY
  // Ears //
  stroke(255);
  strokeWeight(2);
  ellipse(bny+50,450,50,150);
  ellipse(bny-50,450,50,150);
  // Pink Ear Centers //
  strokeWeight(2);
  stroke(255,152,224);
  fill(255,173,230); 
  ellipse(bny-46,450,20,80);
  ellipse(bny+46,450,20,80);
  // Main Head //
  stroke(255);
  strokeWeight(1);
  fill(250);
  ellipse(bny,550,200,200);
  // Eyes //
  fill(0);
  ellipse(bny-40,530,25,50);
  ellipse(bny+40,530,25,50);
  ellipse(bny-60,545,5,5);
  ellipse(bny+60,545,5,5);
  fill(255);
  ellipse(bny-40,535,5,20);
  ellipse(bny+40,535,5,20);
  fill(178,248,255);
  stroke(185,249,255);
  ellipse(bny-46,553,8,4);
  ellipse(bny+46,553,8,4);
  // Mouth //
  stroke(255);
  fill(255);
  rect(bny-13,590,10,25);
  rect(bny+3,590,10,25);
  fill(240);
  stroke(235);
  strokeWeight(2);
  ellipse(bny-15,585,35,35);
  ellipse(bny+15,585,35,35);
  // Paws //
  stroke(240);
  fill(245);
  ellipse(bny-35,650,50,35);
  ellipse(bny+35,650,50,35);
  bny = bny + 5;                //BUNNY MOVEMENT
  if (bny > 1100) bny = -100;   //BUNY RESTRICTIONS
}
