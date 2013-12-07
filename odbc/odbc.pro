 /*-----------------------------------------------------------------*\

   Program: Handy database functions
   Language: Prolog
   Author: Gene Boggs

 \*-----------------------------------------------------------------*/

/* Open DB connection as defined in odbc.ini */
open_db :-
    odbc_connect(myodbc3, _, [ alias(localhost), open(once) ]).

/* Get SQL results. */
fetch(Result, Sql) :-
    odbc_query(localhost, Sql, Result).

/* Assert results. */
fetch_facts(Result, Sql) :-
    odbc_query(localhost, Sql, Result),
    assertz(Result),
    fail.

/* Queries:
ensure_loaded('odbc.pro').  open_db.
%fetch(R, 'SELECT * FROM testers').
fetch_facts(R, 'SELECT id, name FROM testers').
listing.
*/

