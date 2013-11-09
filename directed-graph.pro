/* Directed graph inspection */

/* Directed graph with handy edge rules example: */
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
show_edges(X, Y) :-
    edge(X, Y),
    write(Y), nl,
    fail.
path(Node1, Node2) :-
    edge(Node1, Node2).
path(Node1, NodeN) :-
    edge(Node1, NodeI),
    path(NodeI, NodeN).
show_paths(X, Y) :-
    path(X, Y),
    write(Y), nl,
    fail.
