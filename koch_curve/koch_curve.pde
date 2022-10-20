ArrayList<KochLine> lines;
 
void setup() {
  size(2000, 1300);
  background(255);
  lines = new ArrayList<KochLine>();
  PVector start = new PVector(0, 1000);
  PVector end   = new PVector(width, 1000);
  lines.add(new KochLine(start, end));
}

void draw() {
  
}

void display() {
  for (KochLine l : lines) {
    l.display();
  }
}

void mouseClicked() {
  background(255);
  generate();
  display();
}

void generate() {
  ArrayList next = new ArrayList<KochLine>();
  for (KochLine l : lines) {
    PVector a = l.kochA();
    PVector b = l.kochB();
    PVector c = l.kochC();
    PVector d = l.kochD();
    PVector e = l.kochE();
 
    next.add(new KochLine(a, b));
    next.add(new KochLine(b, c));
    next.add(new KochLine(c, d));
    next.add(new KochLine(d, e));
  }
  lines = next;
}




class KochLine {
  PVector start;
  PVector end;
  
  KochLine(PVector a, PVector b) {
    start = a.get();
    end = b.get();
  }
 
  void display() {
    stroke(0);
    line(start.x, start.y, end.x, end.y);
  }

  PVector kochA() {
    return start.get();
  }
 
  PVector kochE() {
    return end.get();
  }

  PVector kochB() {
    PVector v = PVector.sub(end, start);

    v.div(3);
    v.add(start);
    return v;
  }
 
  PVector kochD() {
    PVector v = PVector.sub(end, start);

    v.mult(2/3.0);
    v.add(start);
    return v;
  }
  
  

  PVector kochC() {
    PVector a = start.get();
    PVector v = PVector.sub(end, start);

    v.div(3);
    a.add(v);
    v.rotate(-radians(60));
    a.add(v);
    return a;
  }


}
