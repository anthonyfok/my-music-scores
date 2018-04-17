% 2016-01-16 in Edmonton


\version "2.18.2"
\include "definition.ily"
%\include "articulate.ly"

\header {
  % Remove default LilyPond tagline
  tagline = ##f
}


#(set-global-staff-size 21.5)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.25\in
  bottom-margin = 0.25\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  %markup-system-spacing.padding = #6.5
  print-all-headers = ##t
}

global = {
  \key a \major
  \time 2/4
  % \set Score.tempoHideNote = ##t
  % \tempo "Moderato"
}

soprano = \relative c' {
  \global
  \autoBeamOff
  cis4 cis8[ d] e4 cis'8 b | a2 ~ a |
  fis4 fis8[ gis] a4 fis8 cis | d2 ~ d | \break
  
  cis4 cis8[ d] e8 fis4 e8 | e2 cis'4( b) | a4. fis8
  e4 e8[ a] gis4.( a8) | a2 ~ a | \break
  
  fis4 fis8[ gis] a8( b4) a8 | gis8( a4) a8 | d2 |
  a4 e8 cis' cis4.( b8) | a2 ~ a |
  a4 e8 cis' cis4.( b8) | a2 ~ a |
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

bd = \once \override LyricText #'self-alignment-X = #-0.72

verse = \lyricmode {
  願 上 主 祝 福 \bd 你，
  願 上 主 保 護 \bd 你；
  願 上 主 的 慈 顏 光 照 並 仁 慈 待 \bd 你。
  願 上 主 轉 面 垂 \bd 顧， 賜 平 安 給 \bd 你，
  賜 平 安 給 \bd 你。
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
  \new Dynamics = "DynamicsOrgan_pf" \dynamicsOrgan
  \new Staff = "left" \with {
    midiInstrument = "church organ"
  } { \clef bass << \leftOne \\ \leftTwo >> }
>>

oneScore = \score {
  \header {
    title = \markup {
      \line {
        \override #'(font-name . "DFKai-SB")
        "願上主祝福你"
      }
    }
    composer = "戶 6:24–26"
    poet = "禮樂集"
  }
  <<
    \include "願上主祝福你_jianpu.ily"

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
      #'((basic-distance . 4.3)
         (minimum-distance . 0)
         (padding . 0)
         (stretchability . 0))
    }
  }
  \midi { \tempo 4 = 80 }
}

\oneScore
%\oneScore
