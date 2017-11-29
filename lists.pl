parent(adam, john).
parent(eve, john).
parent(eve, lisa).
parent(john, anne).
parent(john, pat).
parent(pat, jacob).
parent(carol, jacob).

ancestor(X, Z) :- parent(X, Z).
ancestor(X, Z) :- parent(X, Y), ancestor(Y, Z).

head([Head | Tail], Head). /*Warn Definition*/
tail([Head | Tail], Tail).

head([Head | _], Head). /*Warnfreie Definition*/
tail([_ | Tail], Tail).

isMember(X, [X | _]).                        
isMember(X, [_ | Tail]) :- isMember(X, Tail).

concatenate([], L, L).
concatenate([H|T], L, [H|ExtendedTail]) :- concatenate(T, L, ExtendedTail).

/*Aufgabe 1*/
prepend([],X,[X]).
prepend([H|T], X, [X|ExtendedTail]) :- prepend(T, H, ExtendedTail).
/*Aufgabe 2
	BSP: addElement([a,b], d, X). Ergebnis: X = [a,b,d]
*/
 
 addElement([],X,[X]).
 addElement([H|T],X,[H|ExtendedTail]):-addElement(T, X, ExtendedTail).
 
/*
	BSP: hasLength([1,2,3,4,5],X) liefert X = 5
*/

hasLength([], 0).
hasLength([H|T],Length) :- hasLength(T,X),Length is 1 + X.

/*
	BSP: remove([5,4,3,6],4,X) liefert X = [5,3,6]
*/
 remove([X|T],X,T).
 remove([H|T],X,[H|RemTail]):-remove(T,X,RemTail).







