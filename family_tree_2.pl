male(jenil).
male(bhavik).
male(sanjay).
male(yogesh).
male(vitthal).
male(rushik).
male(chagan).

female(rasila).
female(subhadra).
female(nathi).
female(krupali).

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
parent_of(subhadra,krupali).
parent_of(subhadra,rushik).
parent_of(chagan,rushik).
parent_of(chagan,krupali).

father_of(X,Y):-parent_of(X,Y),male(X).

mother_of(X,Y):-parent_of(X,Y),female(X).

grandparent_of(X,Y):-parent_of(X,Z),parent_of(Z,Y).

grandfather_of(X,Y):-grandparent_of(X,Y),male(X).

grandmother_of(X,Y):-grandparent_of(X,Y),female(X).

sibling_of(X,Y):-father_of(Z,X),father_of(Z,Y),mother_of(U,X),mother_of(U,Y),X\==Y.

sister_of(X,Y):-sibling_of(X,Y),female(X).

brother_of(X,Y):-sibling_of(X,Y),male(X).

aunt_of(X,Y):-parent_of(Z,Y),sister_of(X,Z).

uncle_of(X,Y):-parent_of(Z,Y),brother_of(X,Z).

cousin_of(X,Y):-grandfather_of(Z,X),grandfather_of(Z,Y),grandmother_of(U,X),grandmother_of(U,Y),not(sibling_of(X,Y)),X\==Y.

grandchild_of(X,Y):-grandparent_of(Y,X).

grandson_of(X,Y):-grandchild_of(X,Y),male(X).

granddaughter_of(X,Y):-grandchild_of(X,Y),female(X).

descendent_of(X,Y):-parent_of(U,Y),grandparent_of(U,X).
