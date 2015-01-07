% 聖母軍連貫經文 Catena Legionis
% 原譜由 Andy and Grace Ho 交給 Anthony Fok 用 LilyPond 植譜
% 2015-01-06 in Edmonton

% References:
%   http://lsr.di.unimi.it/LSR/Snippet?id=357

\version "2.18.2"
\include "definition.ily"
\include "articulate.ly"

\header {
  title = \markup {
    \column {
      \line {
        \fontsize #8
        \override #'(font-name . "DFKai-SB")
        "誰來像日出"
      }
      \line { " " }
    }
  }
  composer = "曲：吳天福 (Feb 1997, Oakland)"
  poet = \markup {
    "聖母軍連貫經文"
    \italic { Catena Legionis }
  }
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
  top-margin = 0.3\in
  bottom-margin = 0.35\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  markup-system-spacing.padding = #6.5
}

global = {
  \key g \major
  \time 4/4
  \partial 2
  \set Score.tempoHideNote = ##t
  \tempo "Moderato"
}

soprano = \relative c' {
  \global
  \autoBeamOff
  r2 | R1*4 | \break
  
  \tempo "Maestoso" 4 = 48
  r2
  \tempo 4 = 88
  d4. d8 | g4 b8[ d] d2 | c8.[ d16] b4 b a8[ g] | a2. r4 |
  d4. b8 g8[ fis] e[ g] | d2. r4 | e4 fis8[ g] fis4 b8[ a] | g2. r4 |
  d'4 d b8.[ c16] b4 | a4. g8 d[ e fis g] | e2. r4 | \break
  
  d4.( d'8) d4. b8 | e8[ d c b] a2 | d,8[ g b d] d4. c8 | b4( a) g2 |
  
  d'4. c8 b[ a] g4 | e4 fis g8.[ e16] d4 |
  d4 d b'8.[ a16] g4 | e4 fis8[ g] a4( b) | g2. r4 |
  
  d'4. c8 b[ a] g4 | e4 fis g8.[ e16] d4 |
  d4 d b'8.[ a16] g4 | e4 fis8[ g] a4( b) | g2. r4 |
  \bar "||"
  
  \tempo 4 = 60
  e4( g) \tempo 4 = 48 g2 ~ | g2
  \bar "|."
}

alto = \relative c' {
  \global
  \autoBeamOff
  r2 | R1*4 |
  
  r2 d4. d8 | d4 g8[ a] b2 | fis4 fis g fis8[ e] | d2. r4 |
  b'4. g8 e4 ~ e8[ c] | b2. r4 | e4. e8 d4 dis | e2. r4 |
  fis4 fis g8.[ a16] g4 | fis4. g8 d4( c) | b2. r4 |
  
  d4.( g8) b4. g8 | c8[ b a g] fis2 | d4.( g8) b4. a8 | g4( d) b2 |
  
  b'4. a8 g[ fis] e4 | c4 d e8.[ c16] b4 |
  d4 d d8.[ c16] b4 | c4 d8[ e] d4( c) | b2. r4 |
  
  b'4. a8 g[ fis] e4 | c4 d e8.[ c16] b4 |
  d4 d d8.[ c16] b4 | c4 d8[ e] d4( c) | b2. r4 |
  \bar "||"
  
  c4( e) b2 ~ | b2
  \bar "|."
}

tenor = \relative c' {
  \global
  \autoBeamOff
  r2 | R1*4 |
  s1*25 |
  \bar "||"
  \voiceOne
  g2 g ~ | g2
  \bar "|."
}

bass = \relative c {
  \global
  \autoBeamOff
  r2 | R1*4 |
  \oneVoice
  r2 d4. c8 | b4 d g2 | d4 dis e4. e8 | fis2. r4 |
  g4 b, c8[ d] e[ d] | g2. r4 | e4 d8[ cis] d4 b' | c2. r4 |
  b4 b e, e | b4. g'8 fis4( d) | e2. r4 |
  
  d8([ c] b4) g4. d'8 | a8[ b c cis] d2 | d8[ c b a] g4. a8 | b8[ g b d] e2 |
  
  g,4 a b c | d4 d c g | d'4 d g8.[ fis16] g4 | c,4 a d2 | g,2. r4 |
  g4  a b c | d4 d c g | d'4 d g8.[ fis16] g4 | c,4 a d2 | g,2. r4 |
  \bar "||"
  
  \voiceTwo
  c2 g ~ | g2
  \bar "|."
}

dynamicsMain = {
  s2\mp | s1*3 | s1\mf | s1*3 | s1\f | s1*2 |
  s1\mp | s1 | s1\mf | s1*2 | s4\cresc s2. | s2. s4 | s1\f | s1 |
  s1\mp | s4\cresc s2. | s2. s4 | s1\f | s1 |
  s1\mp | s2
}

dynamicsChoir = {
  \override DynamicTextSpanner.style = #'none
  \override DynamicText.self-alignment-X = #RIGHT
  s2 | s1*4 | s2 \dynamicsMain
}

dynamicsOrgan = {
  \override DynamicTextSpanner.style = #'none
  %\override DynamicText.self-alignment-X = #RIGHT
  s4\mp s | s2. s4\cresc | s1*3 | s2\mf \dynamicsMain
}

fpa = \once \override LyricText #'self-alignment-X = #-0.72

verse = \lyricmode {
  誰 來 像 日 \fpa 出？ 美 麗 像 晧 \fpa 月？
  燦 爛 似 太 \fpa 陽？ 勇 敢 像 軍 \fpa 旅？
  衝 鋒 陷 \fpa 陣、 所 向 無 \fpa 敵？
  萬 福 瑪 利 \fpa 亞， 萬 福 瑪 利 \fpa 亞。
  中 國 聖 \fpa 母， 爲 我 轉 \fpa 求； 仁 慈 之 \fpa 母， 爲 我 等 \fpa 祈。
  天 主 之 \fpa 母， 爲 我 轉 \fpa 求； 和 平 之 \fpa 后， 爲 我 等 \fpa 祈。
  A -- men.
}

rightOne = \relative c' {
  \global
  % Music follows here.
  d4. d8 | g4 b d b8. d16 | e8. d16 d4 c8. b16 b4 |
  e8 d g e d4. c8 | b2 a | g2\fermata
  
  d4. d8 | g4 b d2 | c8. d16 b2 e8 d | a4 b c cis |
  d4. b8 e d e d | d4. c8 b2 | e4 d8 cis d4 dis | e2 g,8 fis f e |
  fis8 d'4 ais8 b2 | a4. g8 b2 ~ | b1 |
  
  d,4. d'8 d2 | e8 d c b a2 | d8 c b a b4. c8 | b4 a g b8 c |
  
  d4 c b8 a g4 | e4 fis g d | b4 c g'8. a16 b4 | e,4 fis8[ g] a4 b | g1 |
  d'4 c b8 a g4 | e4 fis g d | b4 c g'8. a16 b4 | e,4 fis8[ g] a4 b | g1 |
  \bar "||"
  
  e4 g g2 ~ | g2
  \bar "|."
}

rightTwo = \relative c' {
  \global
  % Music follows here.
  d4. d8 | d4 g b g8. b16 | g8. fis16 fis4 fis8. e16 e4 |
  g2 f4. e8 | d8 e g d fis e d4 | d2
  d4. d8 | d4 g ~ g8 fis e4 | fis2 g4 fis8 e | fis4 g a ais |
  b4. g8 g fis g fis | g4. a8 g2 | g2 fis | e2 g8 fis f e |
  d4 fis g2 | dis4. e8 d e fis g | e8 fis g a g2 |
  
  d4. g8 b2 | c8 b a g fis2 | b8 a g fis g4. a8 | g4 fis e g8 a |
  
  b4 a g8 fis e4 | c4 d e d | g,4 a b8. c16 d4 | c4 d8[ e] c4 d | b4 c b2 |
  b'4 a g8 fis e4 | c4 d e d | g,4 a b8. c16 d4 | c4 d8[ e] c4 d | b4 c b2 |
  \bar "||"
  
  c2 b ~ | b2
  \bar "|."
}

leftOne = \relative c {
  \global
  % Music follows here.
  d4 c | g'2 g | g8. d'16 d4 a8. g16 g4 | c2 b4. g8 | g2 a4. c8 | b2
  r2 | b8 c d c b2 | a4 b2 a8 b | d2 es |
  d2 c | b4. a8 d2 | e4 b2 a4 | g2 r |
  b1 | b4. b8 a2 | g8[ a b c] b2 |
  
  d,8 e d4 s2 | a'1 | g8 a b4 g4. fis8 | g4 b8 d b2 |
  s1*4 | d,4 es d2 |
  s1*4 | d4 es d2 |
  \bar "||"
  g4 e d2 ~ | d2
  \bar "|."
}

leftTwo = \relative c {
  \global
  d4 c | b4 d g,2 | c8. d16 d4 e2 | c8 d e c g'4. c,8 | d2 <d d,> | g,2\fermata
  r2 | g'2 g | d4 dis e fis8 g | a4 g fis2 |
  g2 c, | d4. fis8 g2 | e2 b | c2 e8 dis d c |
  b4 d e2 | b4. e8 fis4 d | e1 |
  
  d8 c b4 g'8 d c b | a8 b c cis d2 | b8 c d4 g,4. d'8 | g4 d e2 |
  \oneVoice
  r8 e, a4 r8 b c4 | d4 d, g8 a b4 |
  r4 d \once \stemDown <g g,>2 | c,8 b a g fis e d4 | \voiceTwo g4 c g2 |
  \oneVoice
  r8 e a4 r8 b c4 | d4 d, g8 a b4 |
  r4 d \once \stemDown <g g,>2 | c,8 b a g fis e d4 | \voiceTwo g4 c g2 |
  \bar "||"
  c2 g ~ | g2
  \bar "|."
}

choirPart = \new ChoirStaff <<
  \new Dynamics = "DynamicsChoir_pf" \with {
    \override VerticalAxisGroup #'staff-affinity = #DOWN
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
    #'((basic-distance . 3))
  } \dynamicsChoir
  \new Staff \with {
    midiInstrument = "choir aahs"
  } <<
    \new Voice = "soprano" { \voiceOne \soprano }
    \new Voice = "alto" { \voiceTwo \alto }
  >>
  \new Lyrics \with {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
  } \lyricsto "soprano" \verse
  \new Staff \with {
    midiInstrument = "choir aahs"
  } <<
    \clef bass
    \new Voice = "tenor" { \voiceOne \tenor }
    \new Voice = "bass" { \voiceTwo \bass }
  >>
>>

organPart = \new PianoStaff <<
  \new Staff = "right" \with {
    midiInstrument = "church organ"
  } << \rightOne \\ \rightTwo >>
  \new Dynamics = "DynamicsOrgan_pf" \dynamicsOrgan
  \new Staff = "left" \with {
    midiInstrument = "church organ"
  } { \clef bass << \leftOne \\ \leftTwo >> }
>>

\score {
  <<
    \choirPart
    \organPart
  >>
  \layout {
    indent = #0
    \context {
      \Staff
      \consists #merge-rests-engraver
      \consists #merge-mmrests-engraver
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
}

\score {
  \unfoldRepeats \articulate <<
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
      } <<  
        \new Voice = "soprano" << { \voiceOne \soprano } \dynamicsChoir >>
        \new Voice = "alto" << { \voiceTwo \alto } \dynamicsChoir >>
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \verse
      \new Staff \with {
        midiInstrument = "choir aahs"
      } <<
        \clef bass
        \new Voice = "tenor" << { \voiceOne \tenor } \dynamicsChoir >>
        \new Voice = "bass" << { \voiceTwo \bass } \dynamicsChoir >>
      >>
    >>
    \new PianoStaff <<
      \new Staff = "right" \with {
        midiInstrument = "church organ"
      } << \rightOne \dynamicsOrgan \\ \rightTwo \dynamicsOrgan >>
      \new Staff = "left" \with {
        midiInstrument = "church organ"
      } { \clef bass << \leftOne \dynamicsOrgan \\ \leftTwo \dynamicsOrgan >> }
    >>
  >>
  \midi {
    \tempo 4 = 96
  }
}
