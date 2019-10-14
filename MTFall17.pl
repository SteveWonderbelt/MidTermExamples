student(adam).
student(bob).
student(carla).
student(diane).
student(quincy).
student(zane).
student(s1).
student(s2).

class(biol101).
class(csce101).
class(csce102).
class(csce145).
class(csce798).
class(csce899).
class(c1).
class(c2).
class(c3).

enroll(student,class,section).
enroll(adam,csce145,001).
enroll(diane,csce146,002).
enroll(bob,csce102,007).
enroll(bob,biol101,003).
enroll(diane,biol101,003).
enroll(quincy,csce899,021).
enroll(s1,c1,1).
enroll(s1,c2,1).
enroll(s1,c3,1).
enroll(s2,c1,1).
enroll(s2,c2,4).
enroll(s2,c3,1).

% Lets check to see if bob and diane have and class wof same section
% together
% Does anyone take three of the same courses as anyone else (ignoring
% section)?


planet(mercury,1).
planet(venus,2).
planet(earth,3).
planet(mars,4).
planet(jupiter,5).
planet(saturn,6).
planet(uranus,7).
planet(neptune,8).

moon(the_moon,earth).
moon(titan,saturn).
moon(europa,jupiter).
moon(ganymede,jupiter).

outer_planet(P):-planet(P,D),D>4.
mOrP(P,D):- planet(P,D).
mOrP(M,D):- moon(M,P), planet(P,D).

% To see if an item is a moon or planet, check if it exists as a moon.
% If so it must have a planet. The base case is planet, induction case
% is moon.
closer_to_sun(C,F):-mOrP(C,DC),mOrP(F,DF),DC < DF.
% If C is closer to the sun than F, then we need to account for if the
% object is a moon or planet. Planet is easy but if moon we then need
% its planets position, which mOrP handles.
color(yellow). color(blue). color(green).

colorAU(S,W,N,Q,NSW,V):-W=yellow,
    color(S), \+S=W,
    color(N), \+S=N, \+N=W,
    color(Q), \+S=Q, \+Q=N,
    color(NSW), \+S=NSW, \+NSW=Q,
    color(V), \+S=V, \+V=NSW.


