// First sketch exercise. Linear falling of a comet on stary sky.

int x, y = 0;
int stars_total = 150; //define number of stars
int [] starx = new int[stars_total]; //define array for x
int [] stary = new int[stars_total]; //define array for y

void setup(){
size(800,800);
// Define the stars
int i = 0;
    for(i=0; i<stars_total; i++){
    starx[i]=round(random(799));
    stary[i]=round(random(799));
    }
}

void draw() {
  //sparkling dark dawn
  background(50+round(random(4))); //204 é o cinza claro default. Números de 0 (preto) a 255 (branco)
    noStroke();
    //Draw the blinking stars
    //Blinking comes out of changing the size
    fill(255);
    for(int k=0; k<stars_total; k++){
        ellipse(starx[k],stary[k],round(random(4)),round(random(4)));
    }
    
    //comet head
    fill(100+round(random(50)));
    ellipse(x,y,10+ round(random(10)),10+round(random(10)));
    //comet tail
    fill(150);
    triangle(x+round(random(20)),y+round(random(30)),x-round(random(50)),y-round(random(50)), x-round(random(700)), y-round(random(700)));
    fill(50);
    triangle(x+round(random(30)),y+round(random(20)),x-round(random(50)),y-round(random(50)), x-round(random(700)), y-round(random(700)));
    fill(50+round(random(205)));
    triangle(x,y,x-round(random(50)),y-round(random(50)), x-round(random(700)), y-round(random(700)));
    fill(round(random(255)));
    triangle(x+round(random(30)),y+round(random(30)),x-round(random(50)),y-round(random(50)), x-round(random(700)), y-round(random(700)));
    x=x+5;
    y=y+5;
    
    if (x>800){
      x=0;
      y=0;
    }
}
