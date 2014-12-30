% Arrangement by Anthony Fok

\version "2.18.0"

\header {
  title = "常年期第二十一主日(甲年)答唱句"
  composer = "曲：蘇柏羲"
  arranger = "編：AF (2014-08-23 初稿#3)"
  % Remove default LilyPond tagline
  %tagline = ##f
  copyright = \markup\column\tiny {
    \line {
      Original Copyright © MMX Catholic Diocese of Hong Kong 天主教香港教區,
      from 《主日感恩祭答唱句 (甲年)》 published by 公教真理學會
    }
    \line {
      Lyrics revised by Isabella Lui
      to match the text in the old Chinese missal.
    }
    \line {
      For Mary Help of Christians Chinese Catholic Parish 瑪利亞進教之佑華人天主堂,
      Edmonton, Canada
    }
  }
}

#(set-global-staff-size 26)

\paper {
  #(set-paper-size "letter" 'landscape)
  top-margin = 1\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  bottom-margin = 0.5\in
}

global = {
  \key e \minor
  \time 4/4
  \tempo "Andante"
}

melody = \relative c' {
  \global
  % Music follows here.
  \autoBeamOff
  e4( g8)  \override Slur.positions = #'(3.5 . 0) a( b2) |
  g4 a8[ b] e,4 e | g8 g fis[ e] d4. d8 |
  g4. b8 a4. a8 | a2 c4 d8 c | b4 a b2 |
}

fpa = \once \override LyricText #'self-alignment-X = #-0.72
verse = \lyricmode {
  % Lyrics follow here.
  上 主！ 祢 的 慈 愛 永 世 無 \fpa 窮，
  不 要 捨 棄 祢 親 手 創 造 的 傑 \fpa 作。
}

rightOne = \relative c' {
  \global
  % Music follows here.
  e4 g8 a b2 |
  g4 a8 b e,2 | g8 g fis e d4. d8 |
  g4. b8 a4. a8 | a2 c4 d8 c | b4 a b2 |
}

rightTwo = \relative c' {
  \global
  % Music follows here.
  e2 fis | d2 c | c2 a |
  d2 e~ | e2 fis | e4 d d2 \bar "|."
}

leftOne = \relative c' {
  \global
  % Music follows here.
  b2 d8 c b a | g1 | a4. g8 fis2 |
  g1 | a1 | g4 fis g2 \bar "|."
}

leftTwo = \relative c {
  \global
  % Music follows here.
  e2 d | b2 c | d2 d4 c |
  b2 c~ | c2 d~ | d2 g, |
  
}

leadSheetPart = \new Staff { \melody }
\addlyrics { \verse }
#(set-global-staff-size 24)

organPart = \new PianoStaff <<
  \new Staff = "right" \with {
    midiInstrument = "church organ"
  } << \rightOne \\ \rightTwo >>
  \new Staff = "left" \with {
    midiInstrument = "church organ"
  } { \clef bass << \leftOne \\ \leftTwo >> }
>>

\score {
  <<
    \leadSheetPart
    \organPart
  >>
  \layout {
    indent = #0
  }
  \midi {
    \tempo 4=76
  }
}
