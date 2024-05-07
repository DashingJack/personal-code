father(a,b).
father(a,c).
father(b,d).
father(b,e).
father(c,f).

cousin(X,Y):-grandparent(U,X),grandparent(U,Y),not((father(V,X),father(V,Y))).
grandson(X,Y):-father(Y,U),father(U,X).
grandparent(X,Y):-grandson(Y,X).
descendent(X,Y):-grandson(X,U),father(U,Y).
