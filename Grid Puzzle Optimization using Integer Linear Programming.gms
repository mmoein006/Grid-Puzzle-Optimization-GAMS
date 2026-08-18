sets
    u / 0*6 /
    v / 0*6 /
    i(u) / 1*5 /
    j(v) / 1*5 /
    k / 1*3 /
;

table a(u,v)
         0       1       2       3       4       5       6
0        0       0       0       0       0       0       0
1        0       0       0       1       0       0       0
2        0       0       0       1       1       0       0
3        0       0       0       0       1       0       0
4        0       0       0       0       1       1       0
5        0       0       0       0       0       1       0
6        0       0       0       0       0       0       0
;

variable z;
binary variable x(u,v);
binary variable y(i,j,k);

equation
    obj
    c1(i,j)
    c2(i,j);

obj .. z =e= sum((i,j), x(i,j));

c1(i,j) ..
    2*y(i,j,'1') + 4*y(i,j,'2') + 6*y(i,j,'3')
    =e=
    a(i,j) + x(i,j) + x(i+1,j) + x(i-1,j) + x(i,j+1) + x(i,j-1);

c2(i,j) ..
    sum(k, y(i,j,k)) =l= 1;

model kashinafarman / all /;
solve kashinafarman using MIP minimizing z;

display x.l, z.l, y.l;
