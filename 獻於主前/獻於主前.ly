% 獻於主前
% 詞：佚名？ 曲：佚名？
% 伴奏：霍東靈
% Anthony Fok <anthony@anthonyfok.org>, anthony.fok@mhocp.ca
% 2025-12-26 to 2025-12-27 in Edmonton, Alberta, Canada

\version "2.24.0"
\include "../definition.ily"
\include "../mass-slides-mhocp.ily"
\include "../jianpu10a.ly"
% \include "articulate.ly"

\header {
  title = \markup {
    \line {
      \larger\override #'(font-name . "Noto Serif CJK TC Black")
      "獻於主前"
    }
  }
  subtitle = "信友禱文回應"

  % Remove default LilyPond tagline
  tagline = ##f

  copyright = \markup {
    \column {
      \line {
        \smaller
        \override #'(font-name . "Noto Serif CJK TC SemiBold") {
          "詞：佚名？(待查證)　曲：佚名？(待查證)　編：霍東靈 (2025月12月27日於愛民頓)"
        }
      }
      \line {
        { 
          \smaller\smaller
          \override #'(font-name . "Noto Serif CJK TC SemiBold") {
            "參考 Vincent Chung 弟兄 2024年6月2日的彈奏示範"
            \with-url #"https://www.instagram.com/reel/C7tuJA2vSst" {
              https://www.instagram.com/reel/C7tuJA2vSst
            }
          }
        }
      }
      \line {
        { 
          \smaller\smaller
          \override #'(font-name . "Noto Serif CJK TC SemiBold") {
            "以及劉贊願執事提供的天主教香港教區沙田聖本篤堂主日感恩祭信友禱文回應的現場錄像，萬分感謝！"
          }
        }
      }
    }
  }
}


#(set-global-staff-size 22)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.8\in
  bottom-margin = 0.75\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  markup-system-spacing.padding = #6
  system-system-spacing.padding = #6
  %ragged-bottom = ##t
}

global = {
  \key f \major
  \time 4/4
  \set Score.tempoHideNote = ##t
  \tempo "Moderato 中板"
  % \tempo "Moderato"
}

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }

melody = \relative c' {
  \global
  f4. f8 f4 e8 f | g4 g8 a g4 g8 a |
  bes4 bes8 bes c4 bes | g1 |
  % d'4 d g, a8 bes | c4 c f,4 g8 a |
  d'4 d g, g8 bes | c4 c f,4 g8 a |
  bes4 a g a | f1 |
  \bar "|."
}

soprano = {
  \melody
}

bd = \once \override LyricText.self-alignment-X = #-0.72

verses = \lyricmode {
  %\override LyricText.font-size = #2.5
  %\override LyricText.font-name = #"Century Schoolbook L,DFHKStdKai-B5"
  \override LyricText.font-name = #"Century Schoolbook L,Noto Serif CJK TC SemiBold"

  %\set stanza = #"1 "
  閉 上 眼 共 祢 訴 說 一 \bd 切，
  無 論 快 慰 與 失 意 \bd 時，
  % 將 禱 詞 盡 獻 於 主 \bd 前，
  將 禱 詞 全 獻 於 主 \bd 前，
  成 就 這 於 祢 旨 \bd 意。
}

alto = \relative c' {
  \global
  a4 bes c2 | d2 e | f4 d c d~ | %{ <f d>2 <e c> %} d2 e |
  g2 e2 | g2 d4 e8 f | d4 c d c | bes2 a |
  \bar "|."
}

tenor = \relative c {
  \global
  \clef bass
  f1 | f2 g | bes2 f | g1 |
  e'2 c | e2 a, | g4 f f e | d2 c |
  \bar "|."
}

bass = \relative c, {
  \global
  \clef bass
  f4 g a2 | bes4 b c2 | d4 bes a g | c1 |
  bes'2 c4 bes | a2 d, | g,4 a bes c | f,1 |
  \bar "|."
}

chordNames = \chordmode {
  % f1 | c | bes | c |
  % bes2 c | f1 | bes2 c | f1 |
  f4 g:m7   f2/a | bes4 g:7/b c2 | bes2 f4/a g:m7  | c2:sus2 c |
  e2:m7.5-/bes c4 c:7/bes | a2:m7 d:m | g4:m f/a bes:6 a:m/c | bes2/f f |
}

%leadSheetPart = \new ChoirStaff {
leadSheetPart = {
  %\override ChoirStaff.SystemStartBracket.collapse-height = #4
  %\override Score.SystemStartBar.collapse-height = #4
  %\include "獻於主前.jianpu.ily"
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #0.75
    } \chordNames
    \new JianpuStaff \with {
      \override VerticalAxisGroup.default-staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 0)
         (padding . 0.5))
      fontSize = #-1
      \override StaffSymbol.staff-space = #(magstep -1)
    } { \jianpuMusic { \melody } }
    \new Staff \with {
      midiInstrument = "choir aahs"
    } { \melody }
    \addlyrics { \verses }
  >>
}

organPart = \new PianoStaff \with {
  % instrumentName = "Organ"
  % shortInstrumentName = "Organ"
} <<
  \new Staff = "right" \with {
    midiInstrument = "church organ"
    fontSize = #-0.5
    \override StaffSymbol.staff-space = #(magstep -0.5)
  } << \soprano \\ \alto >>
  \new Staff = "left" \with {
    midiInstrument = "church organ"
    fontSize = #-0.5
    \override StaffSymbol.staff-space = #(magstep -0.5)
  } << \tenor \\ \bass >>
>>

\score {
  <<
    \leadSheetPart
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
}

\score {
  <<
    \new Staff \with {
      midiInstrument = "choir aahs"
    } { \melody }
    \addlyrics { \verses }
    \organPart
  >>
  \midi { \tempo 4 = 86 }
}
