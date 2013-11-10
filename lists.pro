/* */
append([],List,List).
append([H|Tail],X,[H|NewTail]) :- append(Tail,X,NewTail).

/* */
chain(X,Y,[X,Y]) :- edge(X,Y).
chain(X,Y,[X|Z]) :- edge(X,I), path(I,Y), chain(I,Y,Z).
chain(X,Y,[]).

/* Reversing an empty list is the empty list. */
reverse([],[]).
/* To reverse a non-empty list, first reverse the tail, append the result to the list [H]. */
reverse([H|Tail],Result) :-
    reverse(Tail,Tailreversed),
    append(Tailreversed,[H],Result).
