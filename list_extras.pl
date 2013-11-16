:- module(list_extras, [print_list/1]).
/* ^^^ Functor export ^^^ */

 /*-----------------------------------------------------------------*\
|
|  Program: Handy list functors
|  Language: Prolog
|  Author: Gene Boggs
|
 \*-----------------------------------------------------------------*/

/* Print a list vertically */
print_list([]).
print_list(List) :-
    [H|T] = List,
    write_ln(H),
    print_list(T).

