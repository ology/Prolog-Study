/* Jacks (for plugging-in cords) and their properties.

     Type, I/O, Pole, Size
     _________________________________________________
*/
jack(power,    in,     normal).
jack(midi,     in,     mono,   normal).
jack(midi,     out,    mono,   normal).
jack(midi,     thru,   mono,   normal).
jack(midi,     in,     mono,   normal).
jack(midi,     out,    mono,   normal).
jack(firewire, in,     bi,     type400).
jack(firewire, in,     bi,     type800).
jack(pcmcia,   in,     bi,     typeI).
jack(rca,      in,     left,   normal).
jack(rca,      out,    left,   normal).
jack(rca,      in,     right,  normal).
jack(rca,      out,    right,  normal).
jack(rca,      out,    mono,   normal).
jack(trs,      in,     mono,   quarter).
jack(trs,      in,     mono,   quarter).
jack(trs,      out,    mono,   quarter).
jack(trs,      in,     left,   quarter).
jack(trs,      in,     right,  quarter).
jack(trs,      in,     stereo, quarter).
jack(trs,      in,     stereo, mini).
jack(trs,      in,     stereo, quarter).
jack(trs,      in,     mono,   quarter).
jack(trs,      out,    mono,   quarter).
jack(trs,      in,     left,   quarter).
jack(trs,      out,    left,   quarter).
jack(trs,      in,     mono,   quarter).
jack(trs,      out,    mono,   quarter).
jack(trs,      in,     right,  quarter).
jack(trs,      out,    right,  quarter).
jack(trs,      in,     stereo, mini).
jack(trs,      out,    stereo, mini).
jack(usb,      thru,   bi,     normal).
jack(usb,      thru,   bi,     large).
jack(usb,      thru,   bi,     mini).
jack(usb,      thru,   bi,     normal).
jack(raw,      in,     left,   wire).
jack(raw,      in,     right,  wire).
jack(xlr,      in,     mono,   normal).
jack(xlr,      out,    left,   normal).
jack(xlr,      out,    right,  normal).
