 /*-----------------------------------------------------------------*\
|
|  Program: Handy database functions
|  Language: Prolog
|  Author: Gene Boggs
|
 \*-----------------------------------------------------------------*/

/* DB connection defined in odbc.ini */
open_db :-
    odbc_connect(myodbc3, _, [ alias(localhost), open(once) ]).

result_set(Result) :-
    odbc_query(localhost, 'SELECT name FROM testers', Result).

/* Queries:
  ensure_loaded('odbc.pro').
  open_db.
  result_set(Rs)
*/
