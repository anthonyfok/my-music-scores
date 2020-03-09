% Anthony Fok
% 2020-01-30 to 2020-01-31 in Edmonton

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
      "   Canticle of Simeon"
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
  top-margin = 0.15\in
  bottom-margin = 0.25\in
  left-margin = 0.5\in
  right-margin = 0.5\in
  %markup-system-spacing.padding = #6.5
  %markup-system-spacing.padding = #1.0
  %system-system-spacing.padding = #1
  system-system-spacing.padding = #0
}

global = {
  \key es \major
  \time 4/4 \partial 4
  % \set Score.tempoHideNote = ##t
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
  \autoBeamOff
  
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

verse = \lyricmode {
  \override LyricText.font-size = #4.0
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

rightOne = \relative c' {
  \global
}

rightTwo = \relative c' {
  \global
}

leftOne = \relative c {
  \global
}

leftTwo = \relative c {
  \global
}

organPart = \new PianoStaff <<
  \new Staff = "right" \with {
    midiInstrument = "church organ"
  } << \rightOne \\ \rightTwo >>
  %\new Dynamics = "DynamicsOrgan_pf" \dynamicsOrgan
  \new Staff = "left" \with {
    midiInstrument = "church organ"
  } { \clef bass << \leftOne \\ \leftTwo >> }
>>


\score {
  <<
    \include "西默盎讚歌.jianpu.ily"

    \new ChoirStaff \with {
      % midiInstrument = "choir aahs"
      %midiInstrument = "flute"
      midiInstrument = "clarinet"
    } {
      \new Voice = "soprano" { \soprano }
    }
  
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
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
