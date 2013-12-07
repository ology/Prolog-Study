/* Directed graph with handy edge rules example:
  a b c d e f g
a   1       1
b     1
c       1 1
d 
e       1
f     1   1   1
g     1
*/
edge(a, b).
edge(a, f).
edge(b, c).
edge(c, d).
edge(c, e).
% edge(d, 0).
% edge(d, d).
edge(e, d).
edge(f, c).
edge(f, e).
edge(f, g).
edge(g, c).

/* */
show_edges(X, Y) :-
    edge(X, Y),
    write(Y), nl,
    fail.

/* */
path(Node1, Node2) :-
    edge(Node1, Node2).
path(Node1, NodeN) :-
    edge(Node1, NodeI),
    path(NodeI, NodeN).
show_paths(X, Y) :-
    path(X, Y),
    write(Y), nl,
    fail.

/* */
chain(X,Y,[X,Y]) :- edge(X,Y).
chain(X,Y,[X|Z]) :- edge(X,I), path(I,Y), chain(I,Y,Z).
chain(X,Y,[]).
/*
 ?- chain(a,d,X).
 X = [a, b, c, d] .
*/
