% Adapted from the book, Knowledge-Based Programming for Music Research by Schaffer & McGee

/**        base, key, note, chord, function */
my_key_member(c,    maj, c,    maj,   tonic).
my_key_member(c,    maj, d,    min,   supertonic).
my_key_member(c,    maj, e,    min,   mediant).
my_key_member(c,    maj, f,    maj,   subdominant).
my_key_member(c,    maj, g,    maj,   dominant).
my_key_member(c,    maj, a,    min,   submediant).
my_key_member(c,    maj, b,    dim,   leading_tone).
% minor
my_key_member(c,    min, c,    min,   tonic).
my_key_member(c,    min, d,    dim,   supertonic).
my_key_member(c,    min, ef,   maj,   mediant).
my_key_member(c,    min, f,    min,   subdominant).
my_key_member(c,    min, g,    min,   dominant).
my_key_member(c,    min, af,   maj,   submediant).
my_key_member(c,    min, bf,   maj,   subtonic).

my_key_member(d,    maj, d,    maj,   tonic).
my_key_member(d,    maj, e,    min,   supertonic).
my_key_member(d,    maj, gf,   min,   mediant).
my_key_member(d,    maj, g,    maj,   subdominant).
my_key_member(d,    maj, a,    maj,   dominant).
my_key_member(d,    maj, b,    min,   submediant).
my_key_member(d,    maj, df,   dim,   leading_tone).
% minor
my_key_member(d,    min, d,    min,   tonic).
my_key_member(d,    min, e,    dim,   supertonic).
my_key_member(d,    min, f,    maj,   mediant).
my_key_member(d,    min, g,    min,   subdominant).
my_key_member(d,    min, a,    min,   dominant).
my_key_member(d,    min, bf,   maj,   submediant).
my_key_member(d,    min, c,    maj,   subtonic).

my_key_member(e,    maj, e,    maj,   tonic).
my_key_member(e,    maj, gf,   min,   supertonic).
my_key_member(e,    maj, af,   min,   mediant).
my_key_member(e,    maj, a,    maj,   subdominant).
my_key_member(e,    maj, b,    maj,   dominant).
my_key_member(e,    maj, df,   min,   submediant).
my_key_member(e,    maj, ef,   dim,   leading_tone).
% minor
my_key_member(e,    min, e,    min,   tonic).
my_key_member(e,    min, gf,   dim,   supertonic).
my_key_member(e,    min, g,    maj,   mediant).
my_key_member(e,    min, a,    min,   subdominant).
my_key_member(e,    min, b,    min,   dominant).
my_key_member(e,    min, c,    maj,   submediant).
my_key_member(e,    min, d,    maj,   subtonic).

my_key_member(f,    maj, f,    maj,   tonic).
my_key_member(f,    maj, g,    min,   supertonic).
my_key_member(f,    maj, a,    min,   mediant).
my_key_member(f,    maj, bf,   maj,   subdominant).
my_key_member(f,    maj, c,    maj,   dominant).
my_key_member(f,    maj, d,    min,   submediant).
my_key_member(f,    maj, e,    dim,   leading_tone).
% minor
my_key_member(f,    min, f,    min,   tonic).
my_key_member(f,    min, g,    dim,   supertonic).
my_key_member(f,    min, af,   maj,   mediant).
my_key_member(f,    min, bf,   min,   subdominant).
my_key_member(f,    min, c,    min,   dominant).
my_key_member(f,    min, df,   maj,   submediant).
my_key_member(f,    min, ef,   maj,   subtonic).

my_key_member(g,    maj, g,    maj,   tonic).
my_key_member(g,    maj, a,    min,   supertonic).
my_key_member(g,    maj, b,    min,   mediant).
my_key_member(g,    maj, c,    maj,   subdominant).
my_key_member(g,    maj, d,    maj,   dominant).
my_key_member(g,    maj, e,    min,   submediant).
my_key_member(g,    maj, gf,   dim,   leading_tone).
% minor
my_key_member(g,    min, g,    min,   tonic).
my_key_member(g,    min, a,    dim,   supertonic).
my_key_member(g,    min, bf,   maj,   mediant).
my_key_member(g,    min, c,    min,   subdominant).
my_key_member(g,    min, d,    min,   dominant).
my_key_member(g,    min, ef,   maj,   submediant).
my_key_member(g,    min, f,    maj,   subtonic).

my_key_member(a,    maj, a,    maj,   tonic).
my_key_member(a,    maj, b,    min,   supertonic).
my_key_member(a,    maj, df,   min,   mediant).
my_key_member(a,    maj, d,    maj,   subdominant).
my_key_member(a,    maj, e,    maj,   dominant).
my_key_member(a,    maj, gf,   min,   submediant).
my_key_member(a,    maj, af,   dim,   leading_tone).
% minor
my_key_member(a,    min, a,    min,   tonic).
my_key_member(a,    min, b,    dim,   supertonic).
my_key_member(a,    min, c,    maj,   mediant).
my_key_member(a,    min, d,    min,   subdominant).
my_key_member(a,    min, e,    min,   dominant).
my_key_member(a,    min, f,    maj,   submediant).
my_key_member(a,    min, g,    maj,   subtonic).

my_key_member(b,    maj, b,    maj,   tonic).
my_key_member(b,    maj, df,   min,   supertonic).
my_key_member(b,    maj, ef,   min,   mediant).
my_key_member(b,    maj, e,    maj,   subdominant).
my_key_member(b,    maj, gf,   maj,   dominant).
my_key_member(b,    maj, af,   min,   submediant).
my_key_member(b,    maj, bf,   dim,   leading_tone).
% minor
my_key_member(b,    min, b,    min,   tonic).
my_key_member(b,    min, df,   dim,   supertonic).
my_key_member(b,    min, d,    maj,   mediant).
my_key_member(b,    min, e,    min,   subdominant).
my_key_member(b,    min, gf,   min,   dominant).
my_key_member(b,    min, g,    maj,   submediant).
my_key_member(b,    min, a,    maj,   subtonic).


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
