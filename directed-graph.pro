% http://classes.soe.ucsc.edu/cmps112/Spring03/languages/prolog/PrologIntro.pdf

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
all_edges(X, Y) :-
    edge(X, Y),
    write(Y),nl,
    fail.

path(Node1, Node2) :-
    edge(Node1, Node2).
path(Node1, NodeN) :-
    edge(Node1, NodeI),
    path(NodeI, NodeN).
all_paths(X, Y) :-
    path(X, Y),
    write(Y),nl,
    fail.
