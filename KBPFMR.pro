key_member(cmaj,cmaj,tonic).
key_member(cmaj,cmin,tonic).
key_member(cmaj,gmaj,dominant).
key_member(cmaj,fmaj,subdominant).
key_member(cmaj,fmin,subdominant).
key_member(cmin,cmin,tonic).
key_member(cmin,cmaj,tonic).
key_member(cmin,gmaj,dominant).
key_member(cmin,fmin,subdominant).
key_member(cmin,fmaj,subdominant).
key_member(gmaj,gmaj,tonic).
key_member(gmaj,dmaj,dominant).
key_member(gmaj,cmaj,subdominant).
key_member(fmaj,fmaj,tonic).
key_member(fmaj,cmaj,dominant).
key_member(fmaj,bbmaj,subdominant).
key_member(dmaj,dmaj,tonic).
key_member(dmaj,amaj,dominant).
key_member(dmaj,gmaj,subdominant).

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

