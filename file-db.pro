:- module(key_value,
    [   db_connect/1,   % +File
        current_rec/2,  % +Key, +Value
        add_rec/2,      % "
        update_rec/2    % "
        delete_rec/1    % +Key
    ]).
:- use_module(library(persistency)).

/*  */
:- persistent
    rec(name:atom, role:oneof([foo, bar, baz])).

/*  */
db_connect(File) :- db_attach(File, []).

/*  */
%current_rec(+Key, -Value) is semidet.
current_rec(Key, Value) :-
    with_mutex(key_value, rec(Key, Value)).

/*  */
add_rec(Key, Value) :-
    assert_rec(Key, Value).

/*  */
update_rec(Key, Value) :- rec(Key, Value), !.
update_rec(Key, Value) :-
    with_mutex(key_value, (retractall_rec(Key, _), assert_rec(Key, Value))).

delete_rec(Key) :-
    with_mutex(key_value, (retractall_rec(Key, _))).

/* Usage:

ensure_loaded('db.pro').
db_connect('pairs.db').
add_rec('3.14',foo).
add_rec('2.71',bar).
add_rec('sqrt(-1)',baz).
%update_rec('2.71',barf).   % XXX Adds a retract() ?
% ERROR: Type error: `oneof([foo,bar,baz])' expected, found `barf'
update_rec('666',baz).      % XXX Adds another assert, does not remove line.
delete_rec('666').          % XXX Retracts last assert & reverts to 2.71

*/
