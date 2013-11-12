/* Jacks (for connecting cords) and their properties.
jack(Name_as_in_devices,    Type,   I/O,    Pole,   Size)
*/

/* MIDI connector */
jack(midi-in,               midi,   in,     mono,   normal).
jack(midi-out,              midi,   out,    mono,   normal).
jack(midi-thru,             midi,   thru,   mono,   normal).

/* RCA connector */
jack(left-rca-in,           rca,    in,     left,   normal).
jack(left-rca-out,          rca,    out,    left,   normal).
jack(right-rca-in,          rca,    in,     right,  normal).
jack(right-rca-out,         rca,    out,    right,  normal).
jack(digital-out,           rca,    out,    mono,   normal).

/* Quarter inch TRS */
jack(quarter-in,            trs,    in,     mono,   quarter).
jack(quarter-in2,           trs,    in,     mono,   quarter).
jack(quarter-in3,           trs,    in,     mono,   quarter).
jack(quarter-in4,           trs,    in,     mono,   quarter).
jack(quarter-out,           trs,    out,    mono,   quarter).
jack(left-quarter-in,       trs,    in,     left,   quarter).
jack(right-quarter-in,      trs,    in,     right   quarter).
jack(left-quarter-out,      trs,    out,    left,   quarter).
jack(right-quarter-out,     trs,    out,    right,  quarter).
jack(quarter-out2,          trs,    out,    mono,   quarter).
jack(quarter-out3,          trs,    out,    mono,   quarter).
jack(quarter-out4,          trs,    out,    mono,   quarter).
jack(quarter-out5,          trs,    out,    mono,   quarter).
jack(quarter-out6,          trs,    out,    mono,   quarter).
jack(aux-send1,             trs,    out,    mono,   quarter).
jack(aux-send2,             trs,    out,    mono,   quarter).
jack(left-aux-return,       trs,    in,     left,   quarter).
jack(right-aux-return,      trs,    in,     right,  quarter).
jack(left-aux-return2,      trs,    in,     left,   quarter).
jack(right-aux-return2,     trs,    in,     right,  quarter).
jack(stereo-quarter-in,     trs,    in,     stereo, quarter).
jack(stereo-quarter-out,    trs,    out,    stereo, quarter).
jack(stereo-mini-in,        trs,    in,     stereo, quarter).
jack(stereo-mini-out,       trs,    out,    stereo, quarter).
jack(program-change-switch, trs,    in,     mono,   quarter).
jack(keyboard-sustain,      trs,    in,     mono,   quarter).

/* Raw! */
jack(left-raw-wire-in,      raw,    in,     left,   wire).
jack(right-raw-wire-in,     raw,    in,     right,  wire).
jack(left-raw-wire-out,     raw,    out,    left,   wire).
jack(right-raw-wire-out,    raw,    out,    right,  wire).

/* XLR */
jack(xlr-in,                xlr,    in,     mono,   normal).
jack(xlr-out,               xlr,    out,    mono,   normal).
jack(left-xlr-out,          xlr,    out,    left,   normal).
jack(right-xlr-out,         xlr,    out,    right,  normal).
jack(xlr-in2,               xlr,    in,     mono,   normal).
jack(xlr-in3,               xlr,    in,     mono,   normal).
jack(xlr-in4,               xlr,    in,     mono,   normal).
jack(xlr-in5,               xlr,    in,     mono,   normal).
jack(xlr-in6,               xlr,    in,     mono,   normal).
jack(xlr-in7,               xlr,    in,     mono,   normal).

/* Miscelaneous */
jack(power,                 power,  in,     ac,     barrel).

/* Storage */
jack(thumb-drive,           usb,    thru,   bi,     normal).
jack(usb-normal,            usb,    thru,   bi,     normal).
jack(usb-large,             usb,    thru,   bi,     large).
jack(usb-mini,              usb,    thru,   bi,     mini).
jack(firewire400,           fw,     in,     bi,     400).
jack(firewire800,           fw,     in,     bi,     800).
jack(pcmcia,                pcmcia, in,     bi,     i).

