/* Declaration of the cable record:
cable(EndA, GenderA, SizeA, EndB, GenderB, SizeB)
*/

/* MIDI */
half_cable(midi, male, normal).

/* RCA */
half_cable(rca, male,   normal).
half_cable(rca, female, normal).

/* TRS */
half_cable(trs, quarter, male).
half_cable(trs, quarter, female).
half_cable(trs, mini,    male).
half_cable(trs, mini,    female).

/* Raw! */
half_cable(raw, male).

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

/* A full-cable is two halves.
cable(Type) :-
    half_cable(Type, _, _), half_cable(Type, _, _).

/* A Y-cable is three halves (usually a small adapter).
cable(Type) :-
    half_cable(Type, _, _), half_cable(Type, _, _),
    half_cable(Type, _, _).

/* An X-cable is four halves (usually a stereo pair in audio).
cable(Type) :-
    half_cable(Type, _, _), half_cable(Type, _, _),
    half_cable(Type, _, _), half_cable(Type, _, _).

