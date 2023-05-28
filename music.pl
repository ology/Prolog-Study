mode(maj, [
    meta{ chord:maj, roman:r_I,   function:tonic },
    meta{ chord:min, roman:r_ii,  function:supertonic },
    meta{ chord:min, roman:r_iii, function:mediant },
    meta{ chord:maj, roman:r_IV,  function:subdominant },
    meta{ chord:maj, roman:r_V,   function:dominant },
    meta{ chord:min, roman:r_vi,  function:submediant },
    meta{ chord:dim, roman:r_vii, function:leading_tone }
]).
mode(ionian, Meta) :- mode(maj, Meta).
mode(dorian, [
    meta{ chord:min, roman:r_i,   function:tonic },
    meta{ chord:min, roman:r_ii,  function:supertonic },
    meta{ chord:maj, roman:r_III, function:mediant },
    meta{ chord:maj, roman:r_IV,  function:subdominant },
    meta{ chord:min, roman:r_v,   function:dominant },
    meta{ chord:dim, roman:r_vi,  function:submediant },
    meta{ chord:maj, roman:r_VII, function:subtonic }
]).
mode(phrygian, [
    meta{ chord:min, roman:r_i,   function:tonic },
    meta{ chord:maj, roman:r_II,  function:supertonic },
    meta{ chord:maj, roman:r_III, function:mediant },
    meta{ chord:min, roman:r_iv,  function:subdominant },
    meta{ chord:dim, roman:r_v,   function:dominant },
    meta{ chord:maj, roman:r_VI,  function:submediant },
    meta{ chord:min, roman:r_vii, function:subtonic }
]).
mode(lydian, [
    meta{ chord:maj, roman:r_I,   function:tonic },
    meta{ chord:maj, roman:r_II,  function:supertonic },
    meta{ chord:min, roman:r_iii, function:mediant },
    meta{ chord:dim, roman:r_iv,  function:subdominant },
    meta{ chord:maj, roman:r_V,   function:dominant },
    meta{ chord:min, roman:r_vi,  function:submediant },
    meta{ chord:min, roman:r_vii, function:leading_tone }
]).
mode(mixolydian, [
    meta{ chord:maj, roman:r_I,   function:tonic },
    meta{ chord:min, roman:r_ii,  function:supertonic },
    meta{ chord:dim, roman:r_iii, function:mediant },
    meta{ chord:maj, roman:r_IV,  function:subdominant },
    meta{ chord:min, roman:r_v,   function:dominant },
    meta{ chord:min, roman:r_vi,  function:submediant },
    meta{ chord:maj, roman:r_VII, function:subtonic }
]).
mode(min, [
    meta{ chord:min, roman:r_i,   function:tonic },
    meta{ chord:dim, roman:r_ii,  function:supertonic },
    meta{ chord:maj, roman:r_III, function:mediant },
    meta{ chord:min, roman:r_iv,  function:subdominant },
    meta{ chord:min, roman:r_v,   function:dominant },
    meta{ chord:maj, roman:r_VI,  function:submediant },
    meta{ chord:maj, roman:r_VII, function:subtonic }
]).
mode(aeolean, Meta) :- mode(min, Meta).
mode(locrian, [
    meta{ chord:dim, roman:r_i,   function:tonic },
    meta{ chord:maj, roman:r_II,  function:supertonic },
    meta{ chord:min, roman:r_iii, function:mediant },
    meta{ chord:min, roman:r_iv,  function:subdominant },
    meta{ chord:maj, roman:r_V,   function:dominant },
    meta{ chord:maj, roman:r_VI,  function:submediant },
    meta{ chord:min, roman:r_vii, function:subtonic }
]).

chord_in_mode(C, R, F, Value, Dict) :-
    select_dict(meta{chord:C, roman:R, function:F}, Dict, _),
    C == Value.

get_mode_chord(Result, Note, Chord, Key, Mode) :-
    scale(Base, Key, Notes),
    nth0(Idx, Notes, Note),
    mode(Mode, Meta),
    nth0(Idx, Meta, Dict),
    chord_in_mode(C, R, F, Chord, Dict),
    Result = result{base:Base, mode:Mode, note:Note, chord:C, roman:R, function:F}.

get_mode(Result, Note, Key, Mode) :-
    scale(Base, Key, Notes),
    nth0(Idx, Notes, Note),
    mode(Mode, Meta),
    nth0(Idx, Meta, Dict),
    Result = [Base, Mode, Note, Dict].

% C
scale(c, maj,        [ c, d,  e,  f,  g,  a,  b  ]).
scale(c, ionian,     [ c, d,  e,  f,  g,  a,  b  ]).
scale(c, dorian,     [ c, d,  ef, f,  g,  a,  bf ]).
scale(c, phrygian,   [ c, df, ef, f,  g,  af, bf ]).
scale(c, lydian,     [ c, d,  e,  gf, g,  a,  b  ]).
scale(c, mixolydian, [ c, d,  e,  f,  g,  a,  bf ]).
scale(c, min,        [ c, d,  ef, f,  g,  af, bf ]).
scale(c, aeolean,    [ c, d,  ef, f,  g,  af, bf ]).
scale(c, locrian,    [ c, df, ef, f,  gf, af, bf ]).
% D
scale(d, maj,        [ d, e,  gf, g,  a,  b,  df ]).
scale(d, ionian,     [ d, e,  gf, g,  a,  b,  df ]).
scale(d, lydian,     [ d, e,  gf, g,  a,  b,  df ]).
scale(d, min, [ d, e,  f,  g,  a,  bf, c  ]).
% D
scale(e, maj, [ e, gf, af, a,  b,  df, ef ]).
scale(e, min, [ e, gf, g,  a,  b,  c,  d  ]).
% D
scale(f, maj, [ f, g,  a,  bf, c,  d,  e  ]).
scale(f, min, [ f, g,  af, bf, c,  df, ef ]).
% D
scale(g, maj, [ g, a,  b,  c,  d,  e,  gf ]).
scale(g, min, [ g, a,  bf, c,  d,  ef, f  ]).
% D
scale(a, maj, [ a, b,  df, d,  e,  gf, af ]).
scale(a, min, [ a, b,  c,  d,  e,  f,  g  ]).
% D
scale(b, maj, [ b, df, ef, e,  gf, af, bf ]).
scale(b, min, [ b, df, d,  e,  gf, g,  a  ]).

in_scale(X, Note, Key) :-
    scale(Note, Key, Notes),
    member(X, Notes).

print_scale(Note, Key) :-
    scale(Note, Key, Notes),
    show_records(Notes).

show_records([]).
show_records([A|B]) :-
    format('Note = ~w~n', A),
    show_records(B).

