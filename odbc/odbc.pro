 /*-----------------------------------------------------------------*\

|  Program: Handy database functions
|  Language: Prolog
|  Author: Gene Boggs

 \*-----------------------------------------------------------------*/

/* DB connection defined in odbc.ini */
open_db :-
    odbc_connect(myodbc3, _, [ alias(localhost), open(once) ]).

fetch(Results, Sql) :-
    odbc_query(localhost, Sql, Results).

/* Queries:
ensure_loaded('odbc.pro').
open_db.
fetch(R, 'SELECT id,name,modified FROM testers').
*/
