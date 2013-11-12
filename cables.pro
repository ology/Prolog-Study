/* Declaration of the cable record:
half_cable(End, Gender, Size)
*/

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

/* A full-cable is two halves.
full_cable(EndA, EndB) :-
    half_cable(EndA, _, _), half_cable(EndB, _, _).

/* A Y-cable is three halves (usually a small adapter).
y_cable(EndA, EndB) :-
    half_cable(EndA, _, _), half_cable(EndA, _, _),
    half_cable(EndB, _, _).

/* An X-cable is four halves (usually a stereo pair in audio).
x_cable(EndA, EndB) :-
    half_cable(EndA, _, _), half_cable(EndA, _, _),
    half_cable(EndB, _, _), half_cable(EndB, _, _).

