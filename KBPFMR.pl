% Adapted from the book, Knowledge-Based Programming for Music Research by Schaffer & McGee

% Example:
% ?- chord_key(Base, Key, g, maj, Function), not((Base == c, Key == maj)).
% Base = d, Key = maj, Function = subdominant ;
% Base = e, Key = min, Function = mediant ;
% Base = g, Key = maj, Function = tonic ;
% Base = a, Key = min, Function = subtonic ;
% Base = b, Key = min, Function = submediant.
%
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


% Taken directly from the book:

key_member(cmaj, cmaj,  tonic).
key_member(cmaj, cmin,  tonic).
key_member(cmaj, gmaj,  dominant).
key_member(cmaj, fmaj,  subdominant).
key_member(cmaj, fmin,  subdominant).
key_member(cmin, cmin,  tonic).
key_member(cmin, cmaj,  tonic).
key_member(cmin, gmaj,  dominant).
key_member(cmin, fmin,  subdominant).
key_member(cmin, fmaj,  subdominant).
key_member(gmaj, gmaj,  tonic).
key_member(gmaj, dmaj,  dominant).
key_member(gmaj, cmaj,  subdominant).
key_member(fmaj, fmaj,  tonic).
key_member(fmaj, cmaj,  dominant).
key_member(fmaj, bbmaj, subdominant).
key_member(dmaj, dmaj,  tonic).
key_member(dmaj, amaj,  dominant).
key_member(dmaj, gmaj,  subdominant).

pivot_chord(Chord, Key1, Key2) :-
    key_member(Key1, Chord, Function1),
    key_member(Key2, Chord, Function2),
    Function1 \= Function2,
    Key1 \= Key2.


borrowed_chord(Chord, Key1, Key2, Function) :-
    key_member(Key1, Chord, Function),
    key_member(Key2, Chord, Function),
    Key1 \= Key2.

/*
% "What keys have a Dmaj chord as dominant?"
key_member(X,dmaj,dominant).

% "What are the keys that have a Gmaj chord as dominant?"
key_member(X,gmaj,dominant).

% "What keys contain a Gmaj chord?"
key_member(X,gmaj,_).

% "What key can modulate from Cmaj with Gmaj as pivot?"
key_member(X,gmaj,Function), Key \= cmaj.

% "What key can modulate to Cmin through a pivot chord?"
key_member(Key,Chord,_), key_member(cmin,Chord,_), Key \= cmin.

% "What keys have pivot chords that are dominant in the new key?"
key_member(Key1,Chord,_), key_member(Key2,Chord,dominant), Key1 \= Key2.

% "What keys can be modulated to, from Cmaj, using Gmaj as pivot?"
pivot_chord(gmaj,cmaj,Key2).

borrowed_chord(Chord,Key1,Key2,Function).

% "What is the function of Gmaj borrowed between Cmaj & Cmin?
borrowed_chord(gmaj,cmaj,cmin,Function).

*/
