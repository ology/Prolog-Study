% Adapted from the book, Knowledge-Based Programming for Music Research by Schaffer & McGee

%   Args: base, key, note, chord, function
chord_key(c,    maj, c,    maj,   tonic).
chord_key(c,    maj, d,    min,   supertonic).
chord_key(c,    maj, e,    min,   mediant).
chord_key(c,    maj, f,    maj,   subdominant).
chord_key(c,    maj, g,    maj,   dominant).
chord_key(c,    maj, a,    min,   submediant).
chord_key(c,    maj, b,    dim,   leading_tone).
% minor
chord_key(c,    min, c,    min,   tonic).
chord_key(c,    min, d,    dim,   supertonic).
chord_key(c,    min, ef,   maj,   mediant).
chord_key(c,    min, f,    min,   subdominant).
chord_key(c,    min, g,    min,   dominant).
chord_key(c,    min, af,   maj,   submediant).
chord_key(c,    min, bf,   maj,   subtonic).

chord_key(d,    maj, d,    maj,   tonic).
chord_key(d,    maj, e,    min,   supertonic).
chord_key(d,    maj, gf,   min,   mediant).
chord_key(d,    maj, g,    maj,   subdominant).
chord_key(d,    maj, a,    maj,   dominant).
chord_key(d,    maj, b,    min,   submediant).
chord_key(d,    maj, df,   dim,   leading_tone).
% minor
chord_key(d,    min, d,    min,   tonic).
chord_key(d,    min, e,    dim,   supertonic).
chord_key(d,    min, f,    maj,   mediant).
chord_key(d,    min, g,    min,   subdominant).
chord_key(d,    min, a,    min,   dominant).
chord_key(d,    min, bf,   maj,   submediant).
chord_key(d,    min, c,    maj,   subtonic).

chord_key(e,    maj, e,    maj,   tonic).
chord_key(e,    maj, gf,   min,   supertonic).
chord_key(e,    maj, af,   min,   mediant).
chord_key(e,    maj, a,    maj,   subdominant).
chord_key(e,    maj, b,    maj,   dominant).
chord_key(e,    maj, df,   min,   submediant).
chord_key(e,    maj, ef,   dim,   leading_tone).
% minor
chord_key(e,    min, e,    min,   tonic).
chord_key(e,    min, gf,   dim,   supertonic).
chord_key(e,    min, g,    maj,   mediant).
chord_key(e,    min, a,    min,   subdominant).
chord_key(e,    min, b,    min,   dominant).
chord_key(e,    min, c,    maj,   submediant).
chord_key(e,    min, d,    maj,   subtonic).

chord_key(f,    maj, f,    maj,   tonic).
chord_key(f,    maj, g,    min,   supertonic).
chord_key(f,    maj, a,    min,   mediant).
chord_key(f,    maj, bf,   maj,   subdominant).
chord_key(f,    maj, c,    maj,   dominant).
chord_key(f,    maj, d,    min,   submediant).
chord_key(f,    maj, e,    dim,   leading_tone).
% minor
chord_key(f,    min, f,    min,   tonic).
chord_key(f,    min, g,    dim,   supertonic).
chord_key(f,    min, af,   maj,   mediant).
chord_key(f,    min, bf,   min,   subdominant).
chord_key(f,    min, c,    min,   dominant).
chord_key(f,    min, df,   maj,   submediant).
chord_key(f,    min, ef,   maj,   subtonic).

chord_key(g,    maj, g,    maj,   tonic).
chord_key(g,    maj, a,    min,   supertonic).
chord_key(g,    maj, b,    min,   mediant).
chord_key(g,    maj, c,    maj,   subdominant).
chord_key(g,    maj, d,    maj,   dominant).
chord_key(g,    maj, e,    min,   submediant).
chord_key(g,    maj, gf,   dim,   leading_tone).
% minor
chord_key(g,    min, g,    min,   tonic).
chord_key(g,    min, a,    dim,   supertonic).
chord_key(g,    min, bf,   maj,   mediant).
chord_key(g,    min, c,    min,   subdominant).
chord_key(g,    min, d,    min,   dominant).
chord_key(g,    min, ef,   maj,   submediant).
chord_key(g,    min, f,    maj,   subtonic).

chord_key(a,    maj, a,    maj,   tonic).
chord_key(a,    maj, b,    min,   supertonic).
chord_key(a,    maj, df,   min,   mediant).
chord_key(a,    maj, d,    maj,   subdominant).
chord_key(a,    maj, e,    maj,   dominant).
chord_key(a,    maj, gf,   min,   submediant).
chord_key(a,    maj, af,   dim,   leading_tone).
% minor
chord_key(a,    min, a,    min,   tonic).
chord_key(a,    min, b,    dim,   supertonic).
chord_key(a,    min, c,    maj,   mediant).
chord_key(a,    min, d,    min,   subdominant).
chord_key(a,    min, e,    min,   dominant).
chord_key(a,    min, f,    maj,   submediant).
chord_key(a,    min, g,    maj,   subtonic).

chord_key(b,    maj, b,    maj,   tonic).
chord_key(b,    maj, df,   min,   supertonic).
chord_key(b,    maj, ef,   min,   mediant).
chord_key(b,    maj, e,    maj,   subdominant).
chord_key(b,    maj, gf,   maj,   dominant).
chord_key(b,    maj, af,   min,   submediant).
chord_key(b,    maj, bf,   dim,   leading_tone).
% minor
chord_key(b,    min, b,    min,   tonic).
chord_key(b,    min, df,   dim,   supertonic).
chord_key(b,    min, d,    maj,   mediant).
chord_key(b,    min, e,    min,   subdominant).
chord_key(b,    min, gf,   min,   dominant).
chord_key(b,    min, g,    maj,   submediant).
chord_key(b,    min, a,    maj,   subtonic).

% Can a chord in one key function in a second?
pivot_chord_keys(ChordNote, Chord, Key1Note, Key1, Key1Function, Key2Note, Key2, Key2Function) :-
    % bind the chord to the function of the first key
    chord_key(Key1Note, Key1, ChordNote, Chord, Key1Function),
    % bind the chord to the function of the second key
    chord_key(Key2Note, Key2, ChordNote, Chord, Key2Function),
    % the functions cannot be the same
    Key1Function \= Key2Function,
    % nor can the keys
    not((Key1Note \= Key2Note, Key1 \= Key2)).

/*
% What keys have a Dmaj chord as dominant?
?- chord_key(d, maj, KeyNote, Key, dominant).

% What keys contain a Gmaj chord?
?- chord_key(g, maj, KeyNote, Key, _).

% What key can modulate from Cmaj with Gmaj as pivot?
?- pivot_chord_keys(g, maj, c, maj, Key1Function, Key2Note, Key2, Key2Function).

% What key can modulate to Cmin through a pivot chord?
?- pivot_chord_keys(ChordNote, Chord, Key1Note, Key1, Key1Function, c, min, Key2Function).

% What keys have pivot chords that are dominant in the new key?
?- pivot_chord_keys(ChordNote, Chord, Key1Note, Key1, Key1Function, Key2Note, Key2, dominant).

% What keys can be modulated to, from Cmaj, using Gmaj as pivot?
?- pivot_chord_keys(g, maj, c, Key1, maj, Key2Note, Key2, Key2Function).

% What is the function of Gmaj borrowed between Cmaj & Cmin?
?- pivot_chord_keys(g, maj, c, maj, Key1Function, c, min, Key2Function).
false.
*/
