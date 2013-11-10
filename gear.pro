/* Music studio device <=> cable cross-referencer */

/* Declaration of the equipment record:
/* TODO Use DBI to declare this, instead of in-line hardcoding. */
device(maudio-monitors, [
    left-quarter-trs-in, right-quarter-trs-in,
    left-rca-in, right-rca-in,
    left-raw-wire-in, right-raw-wire-in,
    mini-headphone, power
]).
device(amplifier, [ left-quarter-trs-in, power ]).
device(sennheiser-headphones, [ stereo-quarter-trs-in ]).
device(macbook-pro, [
    thumb-drive, pcmcia, usb-normal, firewire,
    stereo-mini-trs-in, stereo-mini-trs-out,
    power]).
device(external-drive, [ firewire ]).
device(external-drive, [ usb-mini, firewire, power ]).
device(korg-ms2000r, [
    midi-in, midi-thru, midi-out,
    left-quarter-trs-in, right-quarter-trs-in,
    left-quarter-trs-out, right-quarter-trs-out,
    program-change-switch, keyboard-sustain,
    quarter-trs-headphone, power]).
device(nord-lead-ii, [
    pcmcia,
    midi-in, midi-thru, midi-out,
    left-quarter-trs-out, right-quarter-trs-out,
    quarter-trs-out-C, quarter-trs-out-D,
    program-change-switch, keyboard-sustain,
    quarter-headphone, power]).
device(roland-gr, [
    midi-in, midi-out, roland-midi-in,
    left-quarter-trs-in, right-quarter-trs-in,
    left-quarter-trs-out, right-quarter-trs-out,
    guitar-quarter-trs-out,
    power]).
device(godin-acs, [ roland-midi-out, guitar-quarter-trs-out ]).
device(yamaha-dtxtreme-iii, [
    thumb-drive, usb-normal,
    midi-in, midi-out,
    stereo-quarter-trs-in,
    left-quarter-trs-out, right-quarter-trs-out,
    quarter-trs-out1, quarter-trs-out2,
    quarter-trs-out3, quarter-trs-out4,
    quarter-trs-out5, quarter-trs-out6,
    digital-out,
    quarter-headphone, power
]).
device(maudio-keybaord-interface, [
    midi-in, midi-out, usb-large,
    stereo-quarter-trs-in,
    quarter-trs-in,
    xlr-in,
    power
]).
device(behringer-mixer, [
    left-quarter-trs-out, right-quarter-trs-out,
    quarter-trs-out3, quarter-trs-out4,
    left-xlr-out, right-xlr-out,
    xlr-in1, xlr-in2, xlr-in3, xlr-in4,
    xlr-in4, xlr-in5, xlr-in6, xlr-in7,
    quarter-trs-in1, quarter-trs-in2, quarter-trs-in3, quarter-trs-in4,
    left-rca-in, right-rca-in,
    left-rca-out, right-rca-out,
    aux-send1, aux-send2,
    left-aux-return1, right-aux-return1,
    left-aux-return2, right-aux-return2,
    quarter-headphone, power
]).
device(digitech-processor, {
    midi-in, midi-out,
    left-quarter-trs-out, right-quarter-trs-out,
    aux-send1, aux-send2,
    left-aux-return1, right-aux-return1,
    program-change-switch,
    quarter-headphone, power
]).

/* Declaration of the cable record:
 cord(enda, enda-type, endb, endb-type, y-split, number, length).
*/
/* TODO Use DBI to declare this, instead of in-line hardcoding. */
cord(midi, male, midi, male, 0, 2, 1).
cord(usb-large, female, usb-normal, female, 0, 4, 0.5).
cord(quarter-trs, male, quarter-trs, male, 0, 2, 2).
cord(quarter-trs, male, quarter-trs, male, 0, 2, 3).
cord(quarter-trs, male, quarter-trs, female, 0, 1, 0.3).
cord(quarter-trs, female, quarter-trs, female, 0, 1, 0).
cord(mini-trs, male, mini-trs, male, 0, 1, 0.5).
cord(mini-trs, male, mini-trs, female, 1, 1, 0.5).

