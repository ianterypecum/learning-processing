// Draws a horizon behind a skyline
//

size(1000, 800);
background(255);

//Horizon definitions
colorMode(HSB,360,100,100);
int skybasecollor = 253; 
int skymiddlecollor = 250;
int skytopcollor = 248;
int horizondivisions = 40;
int horizondivsize = round(800/horizondivisions); //considereing height as 800px

//Horizon sketch
//From top to bottom
noStroke();
for(int k = 0; k<horizondivisions; k++){
  if (k<(horizondivisions/3)){
    fill(skytopcollor, (100-(1*k)), 100-(1*k));
    rect(0,k*horizondivsize,1000,horizondivsize);
  }
  if ((k<(2*horizondivisions/3))&&(k>=(horizondivisions/3)) ){
    fill(skymiddlecollor, (100-(1*k)), 100-(1*k));
    rect(0,k*horizondivsize,1000,horizondivsize);
  }
  if ((k>=(2*horizondivisions/3)) ){
    fill(skybasecollor, (100-(1*k)), 100-(1*k));
    rect(0,k*horizondivsize,1000,horizondivsize);
  }

}
//Skyline 
int backcollor = 210;
int intercollor = 50;
int frontcollor = 10;
//Back line
noStroke(); // I know it's redundant... It's just a matter of mindset
fill(backcollor);
rect(210, 650, 60, 150);
rect(700, 680, 60, 120);
//Tower
fill(backcollor-40);
rect(540, 400, 140, 400);
fill(backcollor-30); //top
rect(560, 380, 100, 20); //top
//Intermediate line
fill(intercollor);
rect(40, 635, 60, 165);
rect(330, 580, 60, 220);
rect(400, 620, 60, 180);
rect(540, 755, 140, 45);
rect(740, 750, 60, 50);
//Front line
fill(frontcollor);
rect(0, 750, 60, 50);
rect(120, 710, 60, 90);
fill(frontcollor+10); //top
rect(130, 705, 40, 5); //top
fill(frontcollor);
rect(180, 720, 60, 80);
rect(300, 740, 220, 60);
rect(525, 710, 60, 90);
rect(670, 700, 60, 100);
//Base line
fill(0);
rect(0, 790, 1000, 10);
for(int i = 0; i<15; i++){
  rect(round(random(999)), 780, 20, 20);
}
