/* Port (or "ports" for connecting cords) and their properties.
port(Name_as_in_devices,    Type,   I/O,    Pole,   Size)
*/

/* MIDI connector */
port(midi-in,               midi,   in,     mono,   normal).
port(midi-out,              midi,   out,    mono,   normal).
port(midi-thru,             midi,   thru,   mono,   normal).

/* RCA connector */
port(left-rca-in,           rca,    in,     left,   normal).
port(left-rca-out,          rca,    out,    left,   normal).
port(right-rca-in,          rca,    in,     right,  normal).
port(right-rca-out,         rca,    out,    right,  normal).
port(digital-out,           rca,    out,    mono,   normal).

/* Quarter inch TRS */
port(quarter-in,            trs,    in,     mono,   quarter).
port(quarter-in2,           trs,    in,     mono,   quarter).
port(quarter-in3,           trs,    in,     mono,   quarter).
port(quarter-in4,           trs,    in,     mono,   quarter).
port(quarter-out,           trs,    out,    mono,   quarter).
port(left-quarter-in,       trs,    in,     left,   quarter).
port(right-quarter-in,      trs,    in,     right   quarter).
port(left-quarter-out,      trs,    out,    left,   quarter).
port(right-quarter-out,     trs,    out,    right,  quarter).
port(quarter-out2,          trs,    out,    mono,   quarter).
port(quarter-out3,          trs,    out,    mono,   quarter).
port(quarter-out4,          trs,    out,    mono,   quarter).
port(quarter-out5,          trs,    out,    mono,   quarter).
port(quarter-out6,          trs,    out,    mono,   quarter).
port(aux-send1,             trs,    out,    mono,   quarter).
port(aux-send2,             trs,    out,    mono,   quarter).
port(left-aux-return,       trs,    in,     left,   quarter).
port(right-aux-return,      trs,    in,     right,  quarter).
port(left-aux-return2,      trs,    in,     left,   quarter).
port(right-aux-return2,     trs,    in,     right,  quarter).
port(stereo-quarter-in,     trs,    in,     stereo, quarter).
port(stereo-quarter-out,    trs,    out,    stereo, quarter).
port(stereo-mini-in,        trs,    in,     stereo, quarter).
port(stereo-mini-out,       trs,    out,    stereo, quarter).
port(program-change-switch, trs,    in,     mono,   quarter).
port(keyboard-sustain,      trs,    in,     mono,   quarter).

/* Raw! */
port(left-raw-wire-in,      raw,    in,     left,   wire).
port(right-raw-wire-in,     raw,    in,     right,  wire).
port(left-raw-wire-out,     raw,    out,    left,   wire).
port(right-raw-wire-out,    raw,    out,    right,  wire).

/* XLR */
port(xlr-in,                xlr,    in,     mono,   normal).
port(xlr-out,               xlr,    out,    mono,   normal).
port(left-xlr-out,          xlr,    out,    left,   normal).
port(right-xlr-out,         xlr,    out,    right,  normal).
port(xlr-in2,               xlr,    in,     mono,   normal).
port(xlr-in3,               xlr,    in,     mono,   normal).
port(xlr-in4,               xlr,    in,     mono,   normal).
port(xlr-in5,               xlr,    in,     mono,   normal).
port(xlr-in6,               xlr,    in,     mono,   normal).
port(xlr-in7,               xlr,    in,     mono,   normal).

/* Miscelaneous */
port(power,                 power,  in,     ac,     barrel).

/* Storage */
port(thumb-drive,           usb,    thru,   bi,     normal).
port(usb-normal,            usb,    thru,   bi,     normal).
port(usb-large,             usb,    thru,   bi,     large).
port(usb-mini,              usb,    thru,   bi,     mini).
port(firewire400,           fw,     in,     bi,     400).
port(firewire800,           fw,     in,     bi,     800).
port(pcmcia,                pcmcia, in,     bi,     i).

