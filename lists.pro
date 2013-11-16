/* Print a list vertically */
print_list([]).
print_list(List) :-
    [H|T] = List,
    write_ln(H),
    print_list(T).

/* Grow a list */
append([], List, List).
append([H|Tail], X, [H|NewTail]) :-
    append(Tail, X, NewTail).

/* Reversing an empty list is the empty list. */
reverse([],[]).
/* To reverse a non-empty list, 1st reverse the tail, append the result to [H]. */
reverse([H|Tail], Result) :-
    reverse(Tail, Reversed),
    append(Reversed, [H], Result).

