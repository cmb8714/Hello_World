//Cole Bennett
//October 17, 2016

PFont font;
PFont font2;

void setup() {

size(640,240);

font = loadFont("Calibri-48.vlw");
font2 = loadFont("ComicSansMS-BoldItalic-24.vlw");



}

void draw() {

background(255/2);
textFont(font);
fill(0);
text("Cole Bennett Cole Bennett", 45, 90);
textFont(font2);
fill(255);
text("Cole Bennett Cole Bennett", 45, 180);


}