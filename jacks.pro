/* Jacks (for plugging-in cords) and their properties.

     Type,     I/O,    Pole,   Size,       Description
     _________________________________________________
*/
jack(power,    in,     mono,   barrel,     ac).
jack(midi,     in,     mono,   normal,     data).
jack(midi,     out,    mono,   normal,     data).
jack(midi,     thru,   mono,   normal,     data).
jack(midi,     in,     mono,   normal,     data).
jack(midi,     out,    mono,   normal,     data).
jack(firewire, in,     bi,     type400,    storage).
jack(firewire, in,     bi,     type800,    storage).
jack(pcmcia,   in,     bi,     typeI,      storage).
jack(rca,      in,     left,   normal,     line).
jack(rca,      out,    left,   normal,     line).
jack(rca,      in,     right,  normal,     line).
jack(rca,      out,    right,  normal,     line).
jack(rca,      out,    mono,   normal,     digital).
jack(trs,      in,     mono,   quarter,    key-sustain).
jack(trs,      in,     mono,   quarter,    prog-change).
jack(trs,      out,    mono,   quarter,    aux-send).
jack(trs,      in,     left,   quarter,    aux-return).
jack(trs,      in,     right,  quarter,    aux-return).
jack(trs,      in,     stereo, quarter,    line).
jack(trs,      in,     stereo, mini,       headphone).
jack(trs,      in,     stereo, quarter,    headphone).
jack(trs,      in,     mono,   quarter,    guitar).
jack(trs,      out,    mono,   quarter,    guitar).
jack(trs,      in,     left,   quarter,    line).
jack(trs,      out,    left,   quarter,    line).
jack(trs,      in,     mono,   quarter,    line).
jack(trs,      out,    mono,   quarter,    line).
jack(trs,      in,     right,  quarter,    line).
jack(trs,      out,    right,  quarter,    line).
jack(trs,      in,     stereo, mini,       line).
jack(trs,      out,    stereo, mini,       line).
jack(usb,      thru,   bi,     normal,     storage).
jack(usb,      thru,   bi,     large,      storage).
jack(usb,      thru,   bi,     mini,       storage).
jack(usb,      thru,   bi,     normal,     storage).
jack(raw,      in,     left,   wire,       line).
jack(raw,      in,     right,  wire,       line).
jack(xlr,      in,     mono,   normal,     line).
jack(xlr,      out,    left,   normal,     line).
jack(xlr,      out,    right,  normal,     line).
