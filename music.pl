%% Adapted from the book, Knowledge-Based Programming for Music Research by Schaffer & McGee
% tonic_rule(Base, Key, Note, Chord, tonic) :-
%    Base =:= Note.

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

/**          key, chord, roman, function */
key_function(maj, maj,   r_I,   tonic).
key_function(maj, min,   r_ii,  supertonic).
key_function(maj, min,   r_iii, mediant).
key_function(maj, maj,   r_IV,  subdominant).
key_function(maj, maj,   r_V,   dominant).
key_function(maj, min,   r_vi,  submediant).
key_function(maj, dim,   r_vii, leading_tone).
% minor
key_function(min, min,   r_i,   tonic).
key_function(min, dim,   r_ii,  supertonic).
key_function(min, maj,   r_III, mediant).
key_function(min, min,   r_iv,  subdominant).
key_function(min, min,   r_v,   dominant).
key_function(min, maj,   r_VI,  submediant).
key_function(min, maj,   r_VII, subtonic).

scale(c, maj, [c, d,  e,  f,  g,  a,  b]).
scale(c, min, [c, d,  ef, f,  g,  af, bf]).
scale(d, maj, [d, e,  gf, g,  a,  b,  df]).
scale(d, min, [d, e,  f,  g,  a,  bf, c]).
scale(e, maj, [e, gf, af, a,  b,  df, ef]).
scale(e, min, [e, gf, g,  a,  b,  c,  d]).
scale(f, maj, [f, g,  a,  bf, c,  d,  e]).
scale(f, min, [f, g,  af, bf, c,  df, ef]).
scale(g, maj, [g, a,  b,  c,  d,  e,  gf]).
scale(g, min, [g, a,  bf, c,  d,  ef, f]).
scale(a, maj, [a, b,  df, d,  e,  gf, af]).
scale(a, min, [a, b,  c,  d,  e,  f,  g]).
scale(b, maj, [b, df, ef, e,  gf, af, bf]).
scale(b, min, [b, df, d,  e,  gf, g,  a]).

in_scale(X, N, K) :-
    scale(N, K, L),
    member(X, L).

print_scale(N, K) :-
    scale(N, K, L),
    show_records(L).

show_records([]).
show_records([A|B]) :-
    format('Note = ~w~n', A),
    show_records(B).


