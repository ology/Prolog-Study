/* Music studio device <=> cable cross-referencer */
/* TODO Use DBI to declare this, instead of in-line hardcoding. */

/* Declaration of the equipment record: */
device(maudio-monitors, [
    left-quarter-in, right-quarter-in,
    left-rca-in, right-rca-in,
    left-wire-in, right-wire-in,
    mini-headphone, power
]).
device(amplifier, [ left-quarter-in, power ]).
device(sennheiser-headphones, [ stereo-quarter-in ]).
device(macbook-pro, [
    thumb-drive, pcmcia, usb-normal, firewire800,
    stereo-mini-in, stereo-mini-out,
    power]).
device(external-drive, [ firewire400 ]).
device(external-drive, [ usb-mini, firewire800, power ]).
device(korg-ms2000r, [
    midi-in, midi-thru, midi-out,
    left-quarter-in, right-quarter-in,
    left-quarter-out, right-quarter-out,
    program-change, keyboard-sustain,
    quarter-headphone, power]).
device(nord-lead-ii, [
    pcmcia,
    midi-in, midi-thru, midi-out,
    left-quarter-out, right-quarter-out,
    quarter-out3, quarter-out4,
    program-change, keyboard-sustain,
    quarter-headphone, power]).
device(roland-gr, [
    midi-in, midi-out, roland-midi-in,
    left-quarter-in, right-quarter-in,
    left-quarter-out, right-quarter-out,
    guitar-quarter-out,
    power]).
device(godin-acs, [ roland-midi-out, guitar-quarter-out ]).
device(yamaha-dtxtreme-iii, [
    thumb-drive, usb-normal,
    midi-in, midi-out,
    stereo-quarter-in,
    left-quarter-out, right-quarter-out,
    quarter-out, quarter-out2,
    quarter-out3, quarter-out4,
    quarter-out5, quarter-out6,
    digital-out,
    quarter-headphone, power
]).
device(maudio-keyboard-interface, [
    midi-in, midi-out, usb-large,
    stereo-quarter-in,
    quarter-in,
    xlr-in,
    power
]).
device(behringer-mixer, [
    left-quarter-out, right-quarter-out,
    quarter-out3, quarter-out4,
    left-xlr-out, right-xlr-out,
    xlr-in, xlr-in2, xlr-in3, xlr-in4,
    xlr-in4, xlr-in5, xlr-in6, xlr-in7,
    quarter-in, quarter-in2, quarter-in3, quarter-in4,
    left-rca-in, right-rca-in,
    left-rca-out, right-rca-out,
    aux-send, aux-send2,
    left-aux-return, right-aux-return,
    left-aux-return2, right-aux-return2,
    quarter-headphone, power
]).
device(digitech-processor, [
    midi-in, midi-out,
    left-quarter-out, right-quarter-out,
    aux-send, aux-send2,
    left-aux-return, right-aux-return,
    program-change,
    quarter-headphone, power
]).

