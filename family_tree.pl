male(jenil).
male(bhavik).
male(sanjay).
male(yogesh).
male(vitthal).

female(rasila).
female(subhadra).
female(nathi).

parent_of(sanjay,jenil).
parent_of(sanjay,bhavik).
parent_of(rasila,jenil).
parent_of(rasila,bhavik).
parent_of(nathi,sanjay).
parent_of(nathi,yogesh).
parent_of(nathi,subhadra).
parent_of(vitthal,sanjay).
parent_of(vitthal,yogesh).
parent_of(vitthal,subhadra).

father_of(X,Y):-parent_of(X,Y),male(X).

mother_of(X,Y):-parent_of(X,Y),female(X).

grandfather_of(X,Y):-parent_of(Z,Y),father_of(X,Z).

grandmother_of(X,Y):-parent_of(Z,Y),mother_of(X,Z).

sister_of(X,Y):-father_of(Z,X),father_of(Z,Y),mother_of(U,X),mother_of(U,Y),female(X),not(X=Y).

brother_of(X,Y):-father_of(Z,X),father_of(Z,Y),mother_of(U,X),mother_of(U,Y),male(X),not(X=Y).

aunt_of(X,Y):-parent_of(Z,Y),sister_of(X,Z).

uncle_of(X,Y):-parent_of(Z,Y),brother_of(X,Z).
