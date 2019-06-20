global = {
  \key c \major
  \cadenzaOn
  % http://comments.gmane.org/gmane.comp.gnu.lilypond.general/86734
}

bb = { | \bar "'" }
bl = { | \bar "|" }
bll = { | \bar "||" }
bllb = { | \bar "||" \break }

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }


zhBjMelody = \transpose c a, \relative c' {
  %\tempo "Recitativo legato"
  \global
  \autoBeamOff
  
  % 1, 2
  e8 g a g c b a g4 \bl
  a8 b g e f e d[ e] g4 \bl
  a8 b a g f g g4 \bllb
  % 3, 4
  b8 g a g d' c b[ a g a] b4 \bl
  b8 a c g e f e d4 \bl
  a'8 b a g f g g4 \bll
  \slideBreak
  % 5
  g8 d' e c d b[ a] c d4 \bl
  d8 c b a c d d g,4 \bl
  a8 b a g f g g4 \bll
  % 6
  g8 f e d c g' a g f g g4 \bl
  g8 f e[ d] c g' a g f g g4 \bl
  c8 b a g f g g4 \bllb
  % 7 (= 5)
  g8 d' e c d b[ a] c d4 \bl
  d8 c b a c d d g,4 \bl
  a8 b a g f g g4 \bll
  % 8 (= 6 for Chinese because we need to fit more text; Latin is shorter)
  g8 f e[ d] c g'[ a] f g4 \bl
  g8 f e[ d] c g'[ a] f g4 \bl
  c8 b a g f g g4 \bllb
  % 9, 10
  d'8 c d d[ e] g f e d4 \bl
  g8 f e c d e d g,4 \bl
  a8 b a g f g g4 \bll
  % 11, 12
  d'8 c d c f e d c4 \bl
  c8 d f e d c d d4 \bl
  d8 b c a[ g] f g g4 \bllb
  \slideBreak
  % 13, 14
  d'8 c b[ c] \sd a[ g] \ss b c d[ e] d4 \bl
  c8 d f e d c b a4 \bl
  c8 d g, a b a g4 \bll
  % 15, 16
  d'8 d[ e] g d g f e d4 \bl
  e8 f g f e d d b4 \bl
  d8 b c \sd a[ g] \ss f g g4 \bllb
  \slideBreak
  % 17, 18
  g8 d' d c d f e[ d c] d4 \bl
  d8 e c a c d c b4 \bl
  g8 a g a f g g4 \bllb
  \slideBreak
  % 19, 20
  c8 b a g a f g g4 \bl
  g8 b d d e c d d4 \bl
  d8 d e c d e d b4 \bl
  d8 b c a[ g] f g g4 \bllb
  % 21, 22
  d'8 c d b c a f g4 \bl
  g8 b d d e c d d4 \bl
  e8 f g f e[ d] c d d4 \bl
  d8 b c a[ g] f g g4 \bllb
  \slideBreak
  % 23, 24
  g8 g a g b c d[ e] d4 \bl
  e8 f e d e b[ a] c d4 \bl
  g,8 b d d e c d d4 \bl
  d8 e c a c b a g4 \bl
  f8 a c[ d] g, a g g4 \bllb
  
  % Amen. Alleluia.
  g8[ a g] f4[ g4] \bb  a8 f a[ g] g4 | \bar "|."
}

