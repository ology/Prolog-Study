:- use_module(list_extras, [print_list/1]).
:- ensure_loaded('ports.pro').
:- ensure_loaded('cables.pro').
/* ^^^ Load dependencies ^^^ */
/********************************************************************\

Program: Music studio device <=> Cable cross-referencer
Language: Prolog
Author: Gene Boggs
Start date: 2013-11-09

\********************************************************************/

/* Facts: The equipment records - device(Name, Ports) */
/* TODO Use DBI to declare these, instead of in-line hardcoding. */
device(maudio-monitors, [
    left-quarter-in, right-quarter-in,
    left-rca-in, right-rca-in,
    left-wire-in, right-wire-in ]).
device(amplifier, [ left-quarter-in ]).
device(macbook-pro, [ stereo-mini-in, stereo-mini-out ]).
device(korg-ms2000r, [
    midi-in, midi-thru, midi-out,
    left-quarter-in, right-quarter-in,
    left-quarter-out, right-quarter-out ]).
device(nord-lead-ii, [
    pcmcia,
    midi-in, midi-thru, midi-out,
    left-quarter-out, right-quarter-out,
    quarter-out3, quarter-out4 ]).
device(roland-gr, [
    midi-in, midi-out, roland-midi-in,
    left-quarter-in, right-quarter-in,
    left-quarter-out, right-quarter-out,
    guitar-quarter-out ]).
device(godin-acs, [ roland-midi-out, guitar-quarter-out ]).
device(yamaha-dtxtreme-iii, [
    midi-in, midi-out,
    stereo-quarter-in,
    left-quarter-out, right-quarter-out,
    quarter-out, quarter-out2,
    quarter-out3, quarter-out4,
    quarter-out5, quarter-out6,
    digital-out ]).
device(maudio-keyboard-interface, [
    midi-in, midi-out,
    stereo-quarter-in,
    quarter-in,
    xlr-in ]).
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
    left-aux-return2, right-aux-return2 ]).
device(digitech-processor, [
    midi-in, midi-out,
    left-quarter-out, right-quarter-out,
    aux-send, aux-send2,
    left-aux-return, right-aux-return ]).

/* Rule: Devices connect their ports with cables
*/
/* device_cable/2 */
device_cable(Device, Cable) :-
    device(Device, Ports),
    device_cable(Device, Cable, Ports).
/* device_cable/3 */
device_cable(_, Cable, [Head|_]) :-
    port(Head, Cable, _, Size),
    full_cable(Cable, male, Size, _).
device_cable(Device, Cable, [_|Tail]) :-
    device_cable(Device, Cable, Tail).

/* Procedure: Show the ports for the given device. */
show_ports(Device) :-
    device(Device, Ports),
    print_list(Ports).

