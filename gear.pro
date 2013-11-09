/* Music studio gear <=> cable cross-referencer */

/* Declaration of the equipment record:
 gear(name,
    midi-in, midi-thru, midi-out, usb,
    stereo-quarter-trs-in, stereo-quarter-trs-out,
    left-quarter-trs-in, right-quarter-trs-in,
    left-quarter-trs-out, right-quarter-trs-out,
    stereo-mini-trs-in, stereo-mini-trs-out,
    left-mini-trs-in, right-mini-trs-in,
    left-mini-trs-out, right-mini-trs-out,
    left-rca-in, right-rca-in,
    left-rca-out, right-rca-out,
    xlr-in, xlr-out, digital-out,
    left-raw-wire, right-raw-wire,
    power,
    program-change-switch, keyboard-sustain,
    quarter-headphone, mini-headphone).
*/

/* TODO Use DBI to declare this, instead of in-line hardcoding. */
gear(korg-ms2000r,
    1, 1, 1, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0).
gear(nord-lead-ii,
    1, 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0).
gear(roland-gr,
    1, 0, 1, 0, 0, 0, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0).
gear(godin-acs,
    0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0).
gear(yamaha-dtxtreme-iii,
    1, 0, 1, 1, 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0, 0, 1, 0).
gear(behringer-mixer,
    0, 0, 0, 1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 0).
gear(maudio-monitors,
    0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1, 1).
gear(macbook-pro,
    0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1).
gear(sennheiser-headphones,
    0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0).
gear(amplifier,
    0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0).

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

