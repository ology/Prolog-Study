%% Adapted from the book, Knowledge-Based Programming for Music Research by Schaffer & McGee

/**        base, key, note, chord, function */
key_member(c,    maj, c,    maj,   tonic).
key_member(c,    maj, d,    min,   supertonic).
key_member(c,    maj, e,    min,   mediant).
key_member(c,    maj, f,    maj,   subdominant).
key_member(c,    maj, g,    maj,   dominant).
key_member(c,    maj, a,    min,   submediant).
key_member(c,    maj, b,    dim,   leading_tone).
% minor
key_member(c,    min, c,    min,   tonic).
key_member(c,    min, d,    dim,   supertonic).
key_member(c,    min, ef,   maj,   mediant).
key_member(c,    min, f,    min,   subdominant).
key_member(c,    min, g,    min,   dominant).
key_member(c,    min, af,   maj,   submediant).
key_member(c,    min, bf,   maj,   subtonic).

key_member(d,    maj, d,    maj,   tonic).
key_member(d,    maj, e,    min,   supertonic).
key_member(d,    maj, gf,   min,   mediant).
key_member(d,    maj, g,    maj,   subdominant).
key_member(d,    maj, a,    maj,   dominant).
key_member(d,    maj, b,    min,   submediant).
key_member(d,    maj, df,   dim,   leading_tone).
% minor
key_member(d,    min, d,    min,   tonic).
key_member(d,    min, e,    dim,   supertonic).
key_member(d,    min, f,    maj,   mediant).
key_member(d,    min, g,    min,   subdominant).
key_member(d,    min, a,    min,   dominant).
key_member(d,    min, bf,   maj,   submediant).
key_member(d,    min, c,    maj,   subtonic).

key_member(e,    maj, e,    maj,   tonic).
key_member(e,    maj, gf,   min,   supertonic).
key_member(e,    maj, af,   min,   mediant).
key_member(e,    maj, a,    maj,   subdominant).
key_member(e,    maj, b,    maj,   dominant).
key_member(e,    maj, df,   min,   submediant).
key_member(e,    maj, ef,   dim,   leading_tone).
% minor
key_member(e,    min, e,    min,   tonic).
key_member(e,    min, gf,   dim,   supertonic).
key_member(e,    min, g,    maj,   mediant).
key_member(e,    min, a,    min,   subdominant).
key_member(e,    min, b,    min,   dominant).
key_member(e,    min, c,    maj,   submediant).
key_member(e,    min, d,    maj,   subtonic).

key_member(f,    maj, f,    maj,   tonic).
key_member(f,    maj, g,    min,   supertonic).
key_member(f,    maj, a,    min,   mediant).
key_member(f,    maj, bf,   maj,   subdominant).
key_member(f,    maj, c,    maj,   dominant).
key_member(f,    maj, d,    min,   submediant).
key_member(f,    maj, e,    dim,   leading_tone).
% minor
key_member(f,    min, f,    min,   tonic).
key_member(f,    min, g,    dim,   supertonic).
key_member(f,    min, af,   maj,   mediant).
key_member(f,    min, bf,   min,   subdominant).
key_member(f,    min, c,    min,   dominant).
key_member(f,    min, df,   maj,   submediant).
key_member(f,    min, ef,   maj,   subtonic).

key_member(g,    maj, g,    maj,   tonic).
key_member(g,    maj, a,    min,   supertonic).
key_member(g,    maj, b,    min,   mediant).
key_member(g,    maj, c,    maj,   subdominant).
key_member(g,    maj, d,    maj,   dominant).
key_member(g,    maj, e,    min,   submediant).
key_member(g,    maj, gf,   dim,   leading_tone).
% minor
key_member(g,    min, g,    min,   tonic).
key_member(g,    min, a,    dim,   supertonic).
key_member(g,    min, bf,   maj,   mediant).
key_member(g,    min, c,    min,   subdominant).
key_member(g,    min, d,    min,   dominant).
key_member(g,    min, ef,   maj,   submediant).
key_member(g,    min, f,    maj,   subtonic).

key_member(a,    maj, a,    maj,   tonic).
key_member(a,    maj, b,    min,   supertonic).
key_member(a,    maj, df,   min,   mediant).
key_member(a,    maj, d,    maj,   subdominant).
key_member(a,    maj, e,    maj,   dominant).
key_member(a,    maj, gf,   min,   submediant).
key_member(a,    maj, af,   dim,   leading_tone).
% minor
key_member(a,    min, a,    min,   tonic).
key_member(a,    min, b,    dim,   supertonic).
key_member(a,    min, c,    maj,   mediant).
key_member(a,    min, d,    min,   subdominant).
key_member(a,    min, e,    min,   dominant).
key_member(a,    min, f,    maj,   submediant).
key_member(a,    min, g,    maj,   subtonic).

key_member(b,    maj, b,    maj,   tonic).
key_member(b,    maj, df,   min,   supertonic).
key_member(b,    maj, ef,   min,   mediant).
key_member(b,    maj, e,    maj,   subdominant).
key_member(b,    maj, gf,   maj,   dominant).
key_member(b,    maj, af,   min,   submediant).
key_member(b,    maj, bf,   dim,   leading_tone).
% minor
key_member(b,    min, b,    min,   tonic).
key_member(b,    min, df,   dim,   supertonic).
key_member(b,    min, d,    maj,   mediant).
key_member(b,    min, e,    min,   subdominant).
key_member(b,    min, gf,   min,   dominant).
key_member(b,    min, g,    maj,   submediant).
key_member(b,    min, a,    maj,   subtonic).

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

in_dict(X, Key, Tag, [Head|Rest]) :-
    select_dict(Tag{Key:X}, Head, _).
    in_dict(X, Key, Tag, Rest).

get_mode_chord(X, Chord, Note, Key, Mode) :-
    scale(Base, Key, Notes),
    nth0(Idx, Notes, Note),
    mode(Mode, Meta),
    nth0(Idx, Meta, Y),
    in_dict(Chord, chord, meta, Meta),
    X = [Base, Mode, Note, Y].

get_mode(X, Note, Key, Mode) :-
    scale(Base, Key, Notes),
    nth0(Idx, Notes, Note),
    mode(Mode, Meta),
    nth0(Idx, Meta, Y),
    X = [Base, Mode, Note, Y].

scale(c, maj, [ c, d,  e,  f,  g,  a,  b  ]).
scale(c, min, [ c, d,  ef, f,  g,  af, bf ]).
scale(d, maj, [ d, e,  gf, g,  a,  b,  df ]).
scale(d, min, [ d, e,  f,  g,  a,  bf, c  ]).
scale(e, maj, [ e, gf, af, a,  b,  df, ef ]).
scale(e, min, [ e, gf, g,  a,  b,  c,  d  ]).
scale(f, maj, [ f, g,  a,  bf, c,  d,  e  ]).
scale(f, min, [ f, g,  af, bf, c,  df, ef ]).
scale(g, maj, [ g, a,  b,  c,  d,  e,  gf ]).
scale(g, min, [ g, a,  bf, c,  d,  ef, f  ]).
scale(a, maj, [ a, b,  df, d,  e,  gf, af ]).
scale(a, min, [ a, b,  c,  d,  e,  f,  g  ]).
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

