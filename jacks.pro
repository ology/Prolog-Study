/* Jacks (for plugging-in cords) and their properties. */

          Type,     I/O,    Pole,   Size,       Description
          _________________________________________________
*/
jack_type(power,    in,     mono,   barrel,     ac).
jack_type(midi,     in,     mono,   normal,     data).
jack_type(midi,     out,    mono,   normal,     data).
jack_type(midi,     thru,   mono,   normal,     data).
jack_type(midi,     in,     mono,   normal,     d).
jack_type(midi,     out,    mono,   normal,     d).
jack_type(firewire, in,     bi,     type400,    storage).
jack_type(firewire, in,     bi,     type800,    storage).
jack_type(pcmcia,   in,     bi,     typeI,      storage).
jack_type(rca,      in,     left,   normal,     line).
jack_type(rca,      out,    left,   normal,     line).
jack_type(rca,      in,     right,  normal,     line).
jack_type(rca,      out,    right,  normal,     line).
jack_type(rca,      out,    mono,   normal,     digital).
jack_type(trs,      in,     mono,   quarter,    key-sustain).
jack_type(trs,      in,     mono,   quarter,    prog-change).
jack_type(trs,      out,    mono,   quarter,    aux-send).
jack_type(trs,      in,     left,   quarter,    aux-return).
jack_type(trs,      in,     right,  quarter,    aux-return).
jack_type(trs,      in,     stereo, quarter,    line).
jack_type(trs,      in,     stereo, mini,       headphone).
jack_type(trs,      in,     stereo, quarter,    headphone).
jack_type(trs,      in,     mono,   quarter,    guitar).
jack_type(trs,      out,    mono,   quarter,    guitar).
jack_type(trs,      in,     left,   quarter,    line).
jack_type(trs,      out,    left,   quarter,    line).
jack_type(trs,      in,     mono,   quarter,    line).
jack_type(trs,      out,    mono,   quarter,    line).
jack_type(trs,      in,     right,  quarter,    line).
jack_type(trs,      out,    right,  quarter,    line).
jack_type(trs,      in,     stereo, mini,       line).
jack_type(trs,      out,    stereo, mini,       line).
jack_type(usb,      thru,   bi,     normal,     storage).
jack_type(usb,      thru,   bi,     large,      storage).
jack_type(usb,      thru,   bi,     mini,       storage).
jack_type(usb,      thru,   bi,     normal,     storage).
jack_type(raw,      in,     left,   wire,       line).
jack_type(raw,      in,     right,  wire,       line).
jack_type(xlr,      in,     mono,   normal,     line).
jack_type(xlr,      out,    left,   normal,     line).
jack_type(xlr,      out,    right,  normal,     line).
