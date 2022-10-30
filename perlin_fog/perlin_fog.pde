
float dxs = 50;
float dys = 10000;
float dyz = 5000;

void setup() {
  size(800, 600);
  background(255);
  

//loadPixels();
//float dx = 50;

//for (int x = 0; x < width; x++) {
//  float dy = 1000;
//  for (int y = 0; y < height; y++) {
//    dy += .01;
//    float bright = map(noise(dx,dy), 0, 1, 0, 255);
//    //pixels[x+y*width] = color(bright, bright, bright);
//    set(x,y,color(bright, bright,0));
//  }
//  dx += .01;
//}
//updatePixels();
}



void draw() {
  dxs += 0.01;
  dys += 0.01;
  dyz += 0.01;
  
  float dx = dxs;
  float dz = dyz;
  for (int x = 0; x < width; x++) {
    float dy = dys;
    for (int y = 0; y < height; y++) {
      dy += .01;
      float bright = map(noise(dx,dy,dz), 0, 1, 0, 255);
      //pixels[x+y*width] = color(bright, bright, bright);
      set(x,y,color(bright, bright, 100));
    }
    dx += .01;
  }
}
