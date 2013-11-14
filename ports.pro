/* Ports (for connecting cords) and their properties.
    port(Name_on_devices, Type, IO, Size)
*/

/* Load our cable dependencies.
['cables.pro'].
*/

/* MIDI */
port(midi-in,   midi, in,  normal).
port(midi-out,  midi, out, normal).
port(midi-thru, midi, bi,  normal).

/* RCA */
port(female-rca-in,  rca, in,  normal).
port(female-rca-out, rca, out, normal).
port(digital-out,    rca, out, normal).

/* Quarter-inch TRS */
port(left-quarter-in,    trs, in,  quarter).
port(left-quarter-out,   trs, out, quarter).
port(right-quarter-in,   trs, in,  quarter).
port(right-quarter-out,  trs, out, quarter).
port(quarter-in,         trs, in,  quarter).
port(quarter-out,        trs, out, quarter).
port(quarter-in2,        trs, in,  quarter).
port(quarter-out2,       trs, out, quarter).
port(quarter-in3,        trs, in,  quarter).
port(quarter-out3,       trs, out, quarter).
port(quarter-in4,        trs, in,  quarter).
port(quarter-out4,       trs, out, quarter).
port(quarter-out5,       trs, out, quarter).
port(quarter-out6,       trs, out, quarter).
port(aux-send,           trs, out, quarter).
port(aux-send2,          trs, out, quarter).
port(left-aux-return,    trs, in,  quarter).
port(right-aux-return,   trs, in,  quarter).
port(left-aux-return2,   trs, in,  quarter).
port(right-aux-return2,  trs, in,  quarter).
port(stereo-quarter-in,  trs, in,  quarter).
port(stereo-quarter-out, trs, out, quarter).
port(stereo-mini-in,     trs, in,  eighth).
port(stereo-mini-out,    trs, out, eighth).
port(program-change,     trs, in,  quarter).
port(keyboard-sustain,   trs, in,  quarter).

/* Raw! */
port(left-wire-in,   raw, in,  wire).
port(right-wire-in,  raw, in,  wire).
port(left-wire-out,  raw, out, wire).
port(right-wire-out, raw, out, wire).

/* XLR */
port(xlr-in,        xlr, in,  normal).
port(xlr-out,       xlr, out, normal).
port(left-xlr-out,  xlr, out, normal).
port(right-xlr-out, xlr, out, normal).
port(xlr-in2,       xlr, in,  normal).
port(xlr-in3,       xlr, in,  normal).
port(xlr-in4,       xlr, in,  normal).
port(xlr-in5,       xlr, in,  normal).
port(xlr-in6,       xlr, in,  normal).
port(xlr-in7,       xlr, in,  normal).

/* Logic! */
connects(Port, EndA, EndB) :-
    port(Port, EndA, male, Size),
    half_cable(EndA, _, Size),
    half_cable(EndB, _, _).

