/* */
append([],List,List).
append([H|Tail],X,[H|NewTail]) :- append(Tail,X,NewTail).

/* Reversing an empty list is the empty list. */
% reverse([],[]).
/* To reverse a non-empty list, first reverse the tail, append the result to the list [H]. */
% reverse([H|Tail],Result) :-
%    reverse(Tail,Tailreversed),
%    append(Tailreversed,[H],Result).
