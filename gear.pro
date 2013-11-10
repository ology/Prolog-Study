/* Music studio gear <=> cable cross-referencer */

/* Declaration of the equipment record:
 gear(name,
    thumb-drive, pcmcia, usb-normal, usb-large, firewire,
    midi-in, midi-thru, midi-out,
    stereo-quarter-trs-in, stereo-quarter-trs-out,
    left-quarter-trs-in, right-quarter-trs-in,
    left-quarter-trs-out, right-quarter-trs-out,
    stereo-mini-trs-in, stereo-mini-trs-out,
    left-mini-trs-in, right-mini-trs-in,
    left-mini-trs-out, right-mini-trs-out,
    left-rca-in, right-rca-in, left-rca-out, right-rca-out,
    xlr-in, xlr-out, digital-out, optical-out,
    left-raw-wire, right-raw-wire,
    program-change-switch, keyboard-sustain,
    quarter-trs-headphone, mini-headphone, power
).
*/

/* TODO Use DBI to declare this, instead of in-line hardcoding. */
gear(maudio-monitors, [
    left-quarter-trs-in, right-quarter-trs-in,
    left-rca-in, right-rca-in,
    left-raw-wire-in, right-raw-wire-in,
    mini-headphone, power
]).
gear(amplifier, [ left-quarter-trs-in, power ]).
gear(sennheiser-headphones, [ stereo-quarter-trs-in ]).
gear(macbook-pro, [
    thumb-drive, pcmcia, usb-normal, firewire,
    stereo-mini-trs-in, stereo-mini-trs-out,
    power]).
gear(external-drive, [ firewire ]).
gear(external-drive, [ usb-mini, firewire, power ]).
gear(korg-ms2000r, [
    midi-in, midi-thru, midi-out,
    left-quarter-trs-in, right-quarter-trs-in,
    left-quarter-trs-out, right-quarter-trs-out,
    program-change-switch, keyboard-sustain,
    quarter-trs-headphone, power]).
gear(nord-lead-ii, [
    pcmcia,
    midi-in, midi-thru, midi-out,
    left-quarter-trs-out, right-quarter-trs-out,
    quarter-trs-out-C, quarter-trs-out-D,
    program-change-switch, keyboard-sustain,
    quarter-headphone, power]).
gear(roland-gr, [
    midi-in, midi-out, roland-midi-in,
    left-quarter-trs-in, right-quarter-trs-in,
    left-quarter-trs-out, right-quarter-trs-out,
    guitar-quarter-trs-out,
    power]).
gear(godin-acs, [ roland-midi-out, guitar-quarter-trs-out ]).
%%% gear(yamaha-dtxtreme-iii, [...]).
%%% gear(behringer-mixer, [...]).

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

/* Example Queries:
distance([godin, roland-gr, amplifier]).
needed(Chords, [godin, amplifier]).
*/

