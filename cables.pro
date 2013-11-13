/* Declaration of the cable record: half_cable(End, Gender, Size) */

/* MIDI */
half_cable(midi, male, normal).

/* RCA */
half_cable(rca, male,   normal).
half_cable(rca, female, normal).

/* TRS */
half_cable(trs, male,   quarter).
half_cable(trs, female, quarter).
half_cable(trs, male,   mini).
half_cable(trs, female, mini).

/* Raw! */
half_cable(raw, male, wire).

/* XLR */
half_cable(xlr, male,   normal).
half_cable(xlr, female, normal).

/* Miscelaneous */
half_cable(power, male, barrel).

/* Storage */
half_cable(usb,   male, mini).
half_cable(usb,   male, normal).
half_cable(usb,   male, large).
half_cable(fw,    male, 400).
half_cable(fw,    male, 800).
half_cable(flash, male, typei).

/* Restrict bogus cables like rca<=>usb etc. with fail. */
full_cable(midi, X)  :- \+( X == midi ),  !, fail.
full_cable(X, midi)  :- \+( X == midi ),  !, fail.
full_cable(raw, X)   :- \+( X == raw ),   !, fail.
full_cable(X, raw)   :- \+( X == raw ),   !, fail.
full_cable(power, X) :- \+( X == power ), !, fail.
full_cable(X, power) :- \+( X == power ), !, fail.
full_cable(usb, X)   :- \+( X == usb ),   !, fail.
full_cable(X, usb)   :- \+( X == usb ),   !, fail.
full_cable(fw, X)    :- \+( X == fw ),    !, fail.
full_cable(X, fw)    :- \+( X == fw ),    !, fail.
full_cable(flash, X) :- \+( X == flash ), !, fail.
full_cable(X, flash) :- \+( X == flash ), !, fail.

/* A full-cable is two halves. */
full_cable(EndA, EndB) :-
    half_cable(EndA, _, _), half_cable(EndB, _, _).

/* A cable end pair */
cable_pair(EndA, male, male) :-
    half_cable(EndA, male, _), half_cable(EndA, male, _).
cable_pair(EndA, male, female) :-
    half_cable(EndA, male, _), half_cable(EndA, female, _).
cable_pair(EndA, female, female) :-
    half_cable(EndA, female, _), half_cable(EndA, female, _).

/* A Y-cable is three halves (usually a small adapter). */
y_cable(EndA, EndB) :-
    cable_pair(EndA, male, male),
    half_cable(EndB, male, _).
y_cable(EndA, EndB) :-
    cable_pair(EndA, male, male),
    half_cable(EndB, female, _).
y_cable(EndA, EndB) :-
    cable_pair(EndA, female, female),
    half_cable(EndB, female, _).
y_cable(EndA, EndB) :-
    cable_pair(EndA, female, female),
    half_cable(EndB, male, _).

/* An X-cable is four halves (usually a stereo pair). */
x_cable(EndA, EndB) :-
    cable_pair(EndA, male, male),
    cable_pair(EndB, male, male).
x_cable(EndA, EndB) :-
    cable_pair(EndA, male, male),
    cable_pair(EndB, female, female).
x_cable(EndA, EndB) :-
    cable_pair(EndA, female, female),
    cable_pair(EndB, female, female).

/* Example queries:
?- set_prolog_flag(toplevel_print_options, [quoted(true)]).
?- findall(X0, half_cable(X0, male, _), X).
X = [midi,rca,trs,trs,raw,xlr,power,usb,usb,usb,fw,fw,flash].
*/
