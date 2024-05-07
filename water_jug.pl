/*Defining basic strucure of clause and also how the state is represented*/
fill(x,y).

/*Defining Final Condition or goal state*/
fill(2,0):-nl, write('Goal state Achieved').

/*Defining clause for production of filling Both jugs respectively*/
fill(X,Y):-X=0,Y=<1,nl,write('Fill the 4-Gallon Jug:(4,'),write(Y),write(')'),fill(4,Y).
fill(X,Y):-Y=0,X=3,nl,write('Fill the 3-Gallon Jug:'),write(X),write(',3)'),fill(X,3).

/*Defining clause for production of transfering water from one jug to another until the other jug is not full*/
fill(X,Y):-X+Y>=4,Y=3,X=3,Y1 is Y-(4-X), nl,write('Pour water from 3-Gallon jug to 4 Gallon Jug until it is full:(4,'),write(Y1),write(')'),fill(4,Y1).
fill(X,Y):-X+Y>=3,X=4,Y=<1,X1 is X-(3-Y), nl,write('Pour water from 4-Gallon jug to 3 Gallon Jug until it is full:'),write(X1),write('3)'),fill(X1,3).

/*Defining clause for production of transfering water from one jug to another until given jug is not empty*/
fill(X,Y):-X+Y=<4,X=0,Y>1,X1 is X+Y,nl,write('Pour all water from 3-Gallon jug to 4Gallon:('),write(X1),write(',0)'),fill(X1,0).
fill(X,Y):-X+Y<3,Y=0,Y>1,Y1 is X+Y, nl,write('Pour all water from 4-Gallon jug to 3 Gallon: (0,'),write(Y1),write(')'),fill(0,Y1).

/*Defining clause for production of emptying jugs on ground*/
fill(X,Y):-Y=2,X=4,nl,write('Empty 4-Gallon jug on ground: (0,'),write(Y),write(')'),fill(0,Y).
fill(X,Y):-Y=3,X>=1,nl,write('Empty 3-Gallon jug on ground: (,'),write(X),write(',0)'),fill(X,0).

/*Defining clause for production of all the overflow conditions*/
fill(X,Y):- X>4,Y<3,write('4-gallon Jug overflowed'),nl.
fill(X,Y):- X<4,Y>3,write('3-gallon Jug overflowed'),nl.
fill(X,Y):- X>4,Y>3,write('Both 3-gallon & 4-gallon Jug overflowed'),nl.