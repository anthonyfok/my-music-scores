% Anthony Fok
% 2020-01-30 to 2020-02-01 in Edmonton

\version "2.18.2"
\include "../definition.ily"
\include "../mass-slides-mhocp.ily"
%\include "articulate.ly"

\header {
  title = \markup {
    \line {
      \larger\yankai
      "啟示異邦的光明 (西默盎讚歌)"
      \smaller
      " Canticle of Simeon"
    }
  }
  %composer = "路 2:29–32"

  % Remove default LilyPond tagline
  tagline = ##f
  copyright = \markup {
    \fill-line {
      ""
      \smaller\kai "Lumen ad revelationem gentium 啟示異邦的光明 ． 詞：路加福音第二章29–32節（思高中文聖經） ． 2020年獻主節" }
  }
}


%#(set-global-staff-size 21)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.5\in
  bottom-margin = 0.25\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  markup-system-spacing.padding = #3
  system-system-spacing.padding = #3.2
  ragged-bottom = ##t
}

global = {
  \key es \major
  \time 4/4 \partial 4
  \set Score.tempoHideNote = ##t
  % \tempo "Moderato 中板"
}

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }

refrainSoprano = \relative c'' {
  % 「這是」啟示異邦的光明
  as8 f | bes4 g g8[( as]) bes8 bes | c4 es,2 f4 |
  g4 g as8 bes g bes | bes,4( c8[ d]) es2\fermata |
}

refrainSopranoAlt = \relative c'' {
  % 「為作」啟示異邦的光明
  g8 as | bes4 g g8[( as]) bes8 bes | c4 es,2 f4 |
  g4 g as8 bes g bes | bes,4( c8[ d]) es2\fermata
}

soprano = \relative c'' {
  \global
  \voiceOne
  
  \refrainSoprano \bar "||"
  
  % 1
  bes4( c) bes2
  g4 g8[( as]) bes as as bes f2
  as4 as8 bes g f4 bes,8 f'4 es8[( d]) es2.
  \bar "||"
  \break
  
  \refrainSoprano \bar "||"
  \break
  
  %2
  bes'4 g8 as bes4 as | as4 as8 as as8 bes as8[( g]) |
  \time 2/4 
  f4. bes8 |
  \time 4/4
  as4 g  g8 f bes f | bes4 bes8[( c]) g8[( as]) bes[( c]) | bes2.
  \bar "||"
  \break
  
  % Final refrain 為作
  \refrainSopranoAlt
  \bar "|."
  \break
  
  % Gloria Patri 願光榮歸於父 (optional)
  g4 c f, bes8 bes | g4 g8[( as]) bes4 g8 as |
  \time 2/4
  es2
  \break
  \time 4/4
  f4 g c, c | g'4 es f8[( g]) f4 | g4 as as8[( bes]) as4 |
  g8[( f]) es2\fermata
  \bar "||"
  \break
  
  % Final Refrain if Gloria Patri is sung
  \refrainSoprano
  \bar "|."
}

bd = \once \override LyricText #'self-alignment-X = #-0.72

verses = \lyricmode {
  \override LyricText.font-size = #2.5
  \override LyricText.font-name = #"Century Schoolbook L,DFHKStdKai-B5"
  %\override StanzaNumber.font-name = #"Century Schoolbook L,HanWangLiSuMedium"
  %\override StanzaNumber.font-name = #"Century Schoolbook L"
  %\override StanzaNumber.font
  
  \set stanza = #"(對經)"
  這 是 啟 示 異 邦 的 光 \bd 明， 祢 百 姓 以 色 列 的 榮 \bd 耀。
  
  \set stanza = #" 1."
  主 \bd 啊！ 現 在 可 照 祢 的 \bd 話， 放 祢 的 僕 人 平 安 去 \bd 了！
  
  \set stanza = #"(對經)"
  這 是 啟 示 異 邦 的 光 \bd 明， 祢 百 姓 以 色 列 的 榮 \bd 耀。
  
  \set stanza = #" 2."
  因 為 我 親 眼 看 見 了 祢 的 救 \bd 援，
  即 祢 在 萬 民 之 前 早 準 備 好 \bd 的：
  %因 為 我 親 眼 看 見 \bd 了，
  %祢 在 萬 民 前 準 備 好 的 救 \bd 援：
  
  \set stanza = #"(對經)"
  為 作 啟 示 異 邦 的 光 \bd 明， 祢 百 姓 以 色 列 的 榮 \bd 耀。
  
  \set stanza = #"3."
  願 光 榮 歸 於 父 及 子 及 聖 \bd 神。
  起 初 如 何 今 日 亦 \bd 然， 直 到 永 \bd 遠。
  亞 \bd 孟。
  
  \set stanza = #"(對經)"
  這 是 啟 示 異 邦 的 光 \bd 明， 祢 百 姓 以 色 列 的 榮 \bd 耀。
}

refrainAlto = \relative c' {
  d4 | es1 ~ | es2 c2 | es1 | bes4 as bes2 |
}

alto = \relative c' {
  \global
  \voiceTwo
  \refrainAlto
  g'4 fis g2 | es1 | d2 f | %c4 d8 bes d4 c8 bes | bes2.
  c4 d8 bes as4 g8 f | g2.
  \refrainAlto
  g'4 es e2 | f2 ~ f4 ~ f8 es |
  \time 2/4 es4 d |
  \time 4/4 es2 d | g4 f es2~ | es4 c d
  \refrainAlto
  es2. d4 |
  es4 es2 d4 |
  \time 2/4 c2
  \time 4/4
  d2 g, | c2 es4 d | es1 | d4 \tempo 4 = 53 es2 \tempo 4 = 80
  
  \refrainAlto
}

refrainTenor = \relative c' {
  as4 | g4 bes2 des4 | c2 f,2 | g2 as4 bes | f2 g2 |
}

refrainTenorAlt = \relative c' {
  g8 f | g4 bes2 des4 | c2 f,2 | g2 as4 bes | f2 g2 |
}

tenor = \relative c' {
  \global
  %\autoBeamOn
  \voiceThree
  \refrainTenor
  s1 | c2. bes4 | as2 bes | as2 s2 | s2.% f4 g8 as | g2.  
  \refrainTenor
  bes2 g | c2 bes |
  \time 2/4 f2 |
  \time 4/4 as2 bes ~ | bes2. as4~ | as2 bes8[ as]
  \refrainTenorAlt
  s1 | bes2 as4 g |
  \time 2/4 es2
  \time 4/4 as2 es~ | es4 f4~ f2 | bes2. c4 | bes8 as g2
  \refrainTenor
}

refrainBass = \relative c {
  bes4 | es2 ~ es8 f g4 | as2 a, |
  bes2 c |
  d4 bes \tempo 4 = 40 es,2 \tempo 4 = 80 |
}

bass = \relative c {
  \global
  \voiceFour
  
  \refrainBass
  es'2 es,4 es'8 d
  c4 bes as g | f4 es d es | bes2 es4 bes | es,2.
  
  \refrainBass
  es'4. des8 c2 | f4 es d es |
  \time 2/4 bes2 |
  \time 4/4 c2 d | es2 c | bes2. ~

  \refrainBass
  c'4 as bes bes8 as |
  g4 d c bes |
  \time 2/4 as2
  \time 4/4
  bes4 b c4. bes8 |
  as4 a bes2 |
  es4 f g as |
  bes,4 es2
  
  \refrainBass
}

\score {
  \new PianoStaff
  <<
    \new Staff = "upperStaff" {
      \set Staff.midiInstrument = #"string ensemble 1"
      %\set Staff.midiInstrument = #"flute"
      <<
        \new Voice = "soprano" { \soprano }
        \new Voice = "alto" { \alto }
      >>
    }
    \new Lyrics \with { alignAboveContext = "upperStaff" } {
      \lyricsto "soprano" { \verses }
    }
    \new Staff {
      \set Staff.midiInstrument = #"string ensemble 1"
      %\set Staff.midiInstrument = #"recorder"
      \clef bass
      <<
        \new Voice = "tenor" { \tenor }
        \new Voice = "bass" { \bass }
      >>
      
    }
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
    \context {
      \RhythmicStaff
      \remove "Time_signature_engraver"
      \override VerticalAxisGroup.
      default-staff-staff-spacing =
      #'((basic-distance . 1)
         (minimum-distance . 0)
         (padding . 0)
         (stretchability . 0))
      fontSize = #1.3
    }
  }
  \midi { \tempo 4 = 80 }
}
