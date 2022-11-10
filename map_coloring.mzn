int: nc = 3;      % max number of colors allowed

var 1..nc: a;     % define color variable for node a ...
var 1..nc: b;    
var 1..nc: c;    
var 1..nc: d;   
var 1..nc: e;   
var 1..nc: f;   
var 1..nc: g;   
var 1..nc: h;   
var 1..nc: i;   
var 1..nc: j;   
var 1..nc: k;   
var 1..nc: l;   
var 1..nc: m;   
var 1..nc: n;   
var 1..nc: o;   
var 1..nc: p;   

constraint a != b;
constraint a != c;
constraint a != e;
constraint b != e;
constraint c != h;
constraint d != e;
constraint e != f;
constraint e != i;
constraint e != j;
constraint e != k;
constraint f != h;
constraint f != k;
constraint f != l;
constraint g != h;
constraint h != l;
constraint i != j;
constraint i != m;
constraint j != k;
constraint j != m;
constraint j != o;
constraint j != p;
constraint k != l;
constraint k != p;
constraint m != n;
constraint m != o;
constraint o != p;


solve satisfy;                  % solve model for satisfyability

output ["a=\(a)\t b=\(b)\t c=\(c)\n",       % plot results of variables
        "d=\(d)\t e=\(e)\t f=\(f)\n",
        "g=\(g)\t h=\(h)\t i=\(i)\n",
        "j=\(j)\t k=\(k)\t l=\(l)\t",
        "m=\(m)\t n=\(n)\t o=\(o)\t",
        "p=\(p)\n"];
