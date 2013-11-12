/* Port (or "ports" for connecting cords) and their properties.
port(Name_as_in_devices,    Type,   IO,    Pole,   Size)
*/

/* MIDI */
port(midi-in,               midi,   in,     female, normal).
port(midi-out,              midi,   out,    female, normal).
port(midi-thru,             midi,   bi,     female, normal).

/* RCA */
port(male-rca-in,           rca,    in,     male,   normal).
port(male-rca-out,          rca,    out,    male,   normal).
port(female-rca-in,         rca,    in,     female, normal).
port(female-rca-out,        rca,    out,    female, normal).
port(digital-out,           rca,    out,    male,   normal).

/* Quarter-inch TRS */
port(left-quarter-in,       trs,    in,     female, quarter).
port(left-quarter-out,      trs,    out,    female, quarter).
port(right-quarter-in,      trs,    in,     female, quarter).
port(right-quarter-out,     trs,    out,    female, quarter).
port(quarter-in,            trs,    in,     female, quarter).
port(quarter-out,           trs,    out,    female, quarter).
port(quarter-in2,           trs,    in,     female, quarter).
port(quarter-out2,          trs,    out,    female, quarter).
port(quarter-in3,           trs,    in,     female, quarter).
port(quarter-out3,          trs,    out,    female, quarter).
port(quarter-in4,           trs,    in,     female, quarter).
port(quarter-out4,          trs,    out,    female, quarter).
port(quarter-out5,          trs,    out,    female, quarter).
port(quarter-out6,          trs,    out,    female, quarter).
port(aux-send,              trs,    out,    female, quarter).
port(aux-send2,             trs,    out,    female, quarter).
port(left-aux-return,       trs,    in,     female, quarter).
port(right-aux-return,      trs,    in,     female, quarter).
port(left-aux-return2,      trs,    in,     female, quarter).
port(right-aux-return2,     trs,    in,     female, quarter).
port(stereo-quarter-in,     trs,    in,     female, quarter).
port(stereo-quarter-out,    trs,    out,    female, quarter).
port(stereo-mini-in,        trs,    in,     female, mini).
port(stereo-mini-out,       trs,    out,    female, mini).
port(program-change,        trs,    in,     female, quarter).
port(keyboard-sustain,      trs,    in,     female, quarter).

/* Raw! */
port(left-wire-in,          raw,    in,     female, wire).
port(right-wire-in,         raw,    in,     female, wire).
port(left-wire-out,         raw,    out,    female, wire).
port(right-wire-out,        raw,    out,    female, wire).

/* XLR */
port(xlr-in,                xlr,    in,     female, normal).
port(xlr-out,               xlr,    out,    female, normal).
port(left-xlr-out,          xlr,    out,    female, normal).
port(right-xlr-out,         xlr,    out,    female, normal).
port(xlr-in2,               xlr,    in,     female, normal).
port(xlr-in3,               xlr,    in,     female, normal).
port(xlr-in4,               xlr,    in,     female, normal).
port(xlr-in5,               xlr,    in,     female, normal).
port(xlr-in6,               xlr,    in,     female, normal).
port(xlr-in7,               xlr,    in,     female, normal).

/* Miscelaneous */
port(power,                 power,  in,     female, barrel).

/* Storage */
port(thumb-drive,           usb,    bi,     female, normal).
port(usb-normal,            usb,    bi,     female, normal).
port(usb-large,             usb,    bi,     female, large).
port(usb-mini,              usb,    bi,     female, mini).
port(firewire400,           fw,     bi,     female, 400).
port(firewire800,           fw,     bi,     female, 800).
port(pcmcia,                pcmcia, bi,     female, i).

