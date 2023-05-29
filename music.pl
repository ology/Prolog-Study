% Example: chord_in_mode(C, R, F, min, meta{...}).
chord_in_mode(C, R, F, Value, Dict) :-
    select_dict(meta{chord:C, roman:R, function:F}, Dict, _), % match the dict
    C == Value. % only true if the chord matches

% Example: 
get_mode_chord(Result, Note, Chord, Scale, Mode) :-
    scale(Base, Scale, Notes), % get the scale
    nth0(Idx, Notes, Note),    % get the index of the note
    mode(Mode, Meta),          % get the meta dicts
    nth0(Idx, Meta, Dict),     % get the indexed dict member
    chord_in_mode(C, R, F, Chord, Dict), % get the c,r,f of the dict
    Result = result{base:Base, mode:Mode, note:Note, chord:C, roman:R, function:F}.

% Example: 
get_mode(Result, Note, Scale, Mode) :-
    scale(Base, Scale, Notes), % get the scale
    nth0(Idx, Notes, Note),    % get the index of the note
    mode(Mode, Meta),          % get the meta dicts
    nth0(Idx, Meta, Dict),     % get the indexed dict member
    Result = [Base, Mode, Note, Dict].

% Example: in_scale(c, c, maj).
in_scale(X, Note, Scale) :-
    scale(Note, Scale, Notes), % get the scale
    member(X, Notes).          % is X a member?

% Example: print_scale(a, min).
print_scale(Note, Scale) :-
    scale(Note, Scale, Notes), % get the scale
    show_records(Notes).       % print each member

% Example: show_records([c, d, e, f, g, a, b]).
show_records([]).
show_records([Head|Tail]) :-
    format('Note = ~w~n', Head), % print the head
    show_records(Tail).          % recurse...

% Example: mode(maj, Dicts).
mode(ionian, [
    meta{ chord:maj, roman:r_I,   function:tonic },
    meta{ chord:min, roman:r_ii,  function:supertonic },
    meta{ chord:min, roman:r_iii, function:mediant },
    meta{ chord:maj, roman:r_IV,  function:subdominant },
    meta{ chord:maj, roman:r_V,   function:dominant },
    meta{ chord:min, roman:r_vi,  function:submediant },
    meta{ chord:dim, roman:r_vii, function:leading_tone }
]).
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
mode(aeolean, [
    meta{ chord:min, roman:r_i,   function:tonic },
    meta{ chord:dim, roman:r_ii,  function:supertonic },
    meta{ chord:maj, roman:r_III, function:mediant },
    meta{ chord:min, roman:r_iv,  function:subdominant },
    meta{ chord:min, roman:r_v,   function:dominant },
    meta{ chord:maj, roman:r_VI,  function:submediant },
    meta{ chord:maj, roman:r_VII, function:subtonic }
]).
mode(locrian, [
    meta{ chord:dim, roman:r_i,   function:tonic },
    meta{ chord:maj, roman:r_II,  function:supertonic },
    meta{ chord:min, roman:r_iii, function:mediant },
    meta{ chord:min, roman:r_iv,  function:subdominant },
    meta{ chord:maj, roman:r_V,   function:dominant },
    meta{ chord:maj, roman:r_VI,  function:submediant },
    meta{ chord:min, roman:r_vii, function:subtonic }
]).

% Example: scale(c, ionian, Scale).
scale(c,  ionian,     [ c,  d,  e,  f,  g,  a,  b  ]).
scale(c,  dorian,     [ c,  d,  ef, f,  g,  a,  bf ]).
scale(c,  phrygian,   [ c,  df, ef, f,  g,  af, bf ]).
scale(c,  lydian,     [ c,  d,  e,  fs, g,  a,  b  ]).
scale(c,  mixolydian, [ c,  d,  e,  f,  g,  a,  bf ]).
scale(c,  aeolian,    [ c,  d,  ef, f,  g,  af, bf ]).
scale(c,  locrian,    [ c,  df, ef, f,  gf, af, bf ]).
scale(cs, ionian,     [ cs, ds, f,  fs, gs, as, c  ]).
scale(cs, dorian,     [ cs, d,  ef, f,  g,  a,  bf ]).
scale(cs, phrygian,   [ cs, df, ef, f,  g,  af, bf ]).
scale(cs, lydian,     [ cs, d,  e,  fs, g,  a,  b  ]).
scale(cs, mixolydian, [ cs, d,  e,  f,  g,  a,  bf ]).
scale(cs, aeolian,    [ cs, d,  ef, f,  g,  af, bf ]).
scale(cs, locrian,    [ cs, df, ef, f,  gf, af, bf ]).
scale(d,  ionian,     [ d,  e,  fs, g,  a,  b,  cs ]).
scale(d,  dorian,     [ d,  e,  f,  g,  a,  b,  c  ]).
scale(d,  phrygian,   [ d,  ef, f,  g,  a,  bf, c  ]).
scale(d,  lydian,     [ d,  e,  fs, gs, a,  b,  cs ]).
scale(d,  mixolydian, [ d,  e,  fs, g,  a,  b,  c  ]).
scale(d,  aeolian,    [ d,  e,  f,  g,  a,  bf, c  ]).
scale(d,  locrian,    [ d,  ef, f,  g,  af, bf, c  ]).
scale(ds, ionian,     [ ds, f,  g,  gs, as, c,  d  ]).
scale(ds, dorian,     [ ds, e,  f,  g,  a,  b,  c  ]).
scale(ds, phrygian,   [ ds, ef, f,  g,  a,  bf, c  ]).
scale(ds, lydian,     [ ds, e,  fs, gs, a,  b,  cs ]).
scale(ds, mixolydian, [ ds, e,  fs, g,  a,  b,  c  ]).
scale(ds, aeolian,    [ ds, e,  f,  g,  a,  bf, c  ]).
scale(ds, locrian,    [ ds, ef, f,  g,  af, bf, c  ]).
scale(e,  ionian,     [ e,  fs, gs, a,  b,  cs, ds ]).
scale(e,  dorian,     [ e,  fs, g,  a,  b,  cs, d  ]).
scale(e,  phrygian,   [ e,  f,  g,  a,  b,  c,  d  ]).
scale(e,  lydian,     [ e,  fs, gs, as, b,  cs, ds ]).
scale(e,  mixolydian, [ e,  fs, gs, a,  b,  cs, d  ]).
scale(e,  aeolian,    [ e,  fs, g,  a,  b,  c,  d  ]).
scale(e,  locrian,    [ e,  f,  g,  a,  bf, c,  d  ]).
scale(f,  ionian,     [ f,  g,  a,  bf, c,  d,  e  ]).
scale(f,  dorian,     [ f,  g,  af, bf, c,  d,  ef ]).
scale(f,  phrygian,   [ f,  gf, af, bf, c,  df, ef ]).
scale(f,  lydian,     [ f,  g,  a,  b,  c,  d,  e  ]).
scale(f,  mixolydian, [ f,  g,  a,  bf, c,  d,  ef ]).
scale(f,  aeolian,    [ f,  g,  af, bf, c,  df, ef ]).
scale(f,  locrian,    [ f,  gf, af, bf, b,  df, ef ]).
scale(fs, ionian,     [ fs, gs, as, b,  cs, ds, f  ]).
scale(fs, dorian,     [ fs, g,  af, bf, c,  d,  ef ]).
scale(fs, phrygian,   [ fs, gf, af, bf, c,  df, ef ]).
scale(fs, lydian,     [ fs, g,  a,  b,  c,  d,  e  ]).
scale(fs, mixolydian, [ fs, g,  a,  bf, c,  d,  ef ]).
scale(fs, aeolian,    [ fs, g,  af, bf, c,  df, ef ]).
scale(fs, locrian,    [ fs, gf, af, bf, b,  df, ef ]).
scale(g,  ionian,     [ g,  a,  b,  c,  d,  e,  fs ]).
scale(g,  dorian,     [ g,  a,  bf, c,  d,  e,  f  ]).
scale(g,  phrygian,   [ g,  af, bf, c,  d,  ef, f  ]).
scale(g,  lydian,     [ g,  a,  b,  cs, d,  e,  fs ]).
scale(g,  mixolydian, [ g,  a,  b,  c,  d,  e,  f  ]).
scale(g,  aeolian,    [ g,  a,  bf, c,  d,  ef, f  ]).
scale(g,  locrian,    [ g,  af, bf, c,  df, ef, f  ]).
scale(gs, ionian,     [ gs, as, c,  cs, ds, f,  g  ]).
scale(gs, dorian,     [ gs, a,  bf, c,  d,  e,  f  ]).
scale(gs, phrygian,   [ gs, af, bf, c,  d,  ef, f  ]).
scale(gs, lydian,     [ gs, a,  b,  cs, d,  e,  fs ]).
scale(gs, mixolydian, [ gs, a,  b,  c,  d,  e,  f  ]).
scale(gs, aeolian,    [ gs, a,  bf, c,  d,  ef, f  ]).
scale(gs, locrian,    [ gs, af, bf, c,  df, ef, f  ]).
scale(a,  ionian,     [ a,  b,  cs, d,  e,  fs, gs ]).
scale(a,  dorian,     [ a,  b,  c,  d,  e,  fs, g  ]).
scale(a,  phrygian,   [ a,  bf, c,  d,  e,  f,  g  ]).
scale(a,  lydian,     [ a,  b,  cs, ds, e,  fs, gs ]).
scale(a,  mixolydian, [ a,  b,  cs, d,  e,  fs, g  ]).
scale(a,  aeolian,    [ a,  b,  c,  d,  e,  f,  g  ]).
scale(a,  locrian,    [ a,  bf, c,  d,  ef, f,  g  ]).
scale(as, ionian,     [ as, c,  d,  ds, f,  g,  a  ]).
scale(as, dorian,     [ as, b,  c,  d,  e,  fs, g  ]).
scale(as, phrygian,   [ as, bf, c,  d,  e,  f,  g  ]).
scale(as, lydian,     [ as, b,  cs, ds, e,  fs, gs ]).
scale(as, mixolydian, [ as, b,  cs, d,  e,  fs, g  ]).
scale(as, aeolian,    [ as, b,  c,  d,  e,  f,  g  ]).
scale(as, locrian,    [ as, bf, c,  d,  ef, f,  g  ]).
scale(b,  ionian,     [ b,  cs, ds, e,  fs, gs, as ]).
scale(b,  dorian,     [ b,  cs, d,  e,  fs, gs, a  ]).
scale(b,  phrygian,   [ b,  c,  d,  e,  fs, g,  a  ]).
scale(b,  lydian,     [ b,  cs, ds, f,  fs, gs, as ]).
scale(b,  mixolydian, [ b,  cs, ds, e,  fs, gs, a  ]).
scale(b,  aeolian,    [ b,  cs, d,  e,  fs, g,  a  ]).
scale(b,  locrian,    [ b,  c,  d,  e,  f,  g,  a  ]).
