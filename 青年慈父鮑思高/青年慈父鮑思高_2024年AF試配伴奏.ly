% 青年慈父鮑思高
% 
% Anthony Fok <anthony@anthonyfok.org>, anthony.fok@mhocp.ca
% 2024-02-28 in Edmonton

\version "2.24.0"
\include "../definition.ily"
\include "../mass-slides-mhocp.ily"
% \include "articulate.ly"

\header {
  title = \markup {
    \line {
      \larger\override #'(font-name . "Noto Serif CJK TC Black")
      "青年慈父鮑思高"
    }
  }

  % Remove default LilyPond tagline
  tagline = ##f
  copyright = \markup {
    \fill-line {
      ""
      \smaller\smaller\smaller\override #'(font-name . "Noto Serif CJK TC SemiBold") "伴奏編曲：霍東靈 ． 2024-02-28 ． 天主教愛民頓總教區瑪利亞進教之佑堂" }
  }
}


%#(set-global-staff-size 21)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.5\in
  bottom-margin = 0.3\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  %markup-system-spacing.padding = #3
  %system-system-spacing.padding = #2
  %ragged-bottom = ##t
}

global = {
  \key bes \major
  \set Score.tempoHideNote = ##t
  % \tempo "Moderato 中板"
  % \tempo "Moderato"
}

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }

soprano = \relative c' {
  \global
  %\voiceOne

  f8[ d] c d bes2 | d8[ c] bes[ c] d4 r |
  f8[ g] a[ bes] f4 d | c8[ d] c8[ bes] c4 r |
  \break
  bes8[ c] d[ g] f[ bes] f4 | f8[ es] d[ es] f4 r |
  d4 f8 g a4 g8 a | f2 r4 <f es> |
  \break
  bes2 a4 g | f8[ es] d[ es] f4 f8 g |
  a8[ g] a4 g g | f2 r4 f |
  \break
  d'2 c4 bes | a8[ c] bes[ g] f4 f8 g |
  d8[ f] d4 c4 c4 | bes2. r4 |  
  \bar "|."
}

melody = { \autoBeamOff \soprano }

bd = \once \override LyricText.self-alignment-X = #-0.72

verses = \lyricmode {
  %\override LyricText.font-size = #2.5
  %\override LyricText.font-name = #"Century Schoolbook L,DFHKStdKai-B5"
  \override LyricText.font-name = #"Century Schoolbook L,Noto Serif CJK TC SemiBold"

  青 年 慈 父 鮑 思 \bd 高， 建 樹 人 間 好 規 \bd 模，
  榮 主 救 靈 施 救 \bd 育， 含 辛 茹 苦 不 憚 \bd 勞；
  大 海 茫 茫 尋 道 \bd 岸， 明 星 指 引 勝 波 \bd 濤，
  群 羊 今 日 齊 歌 \bd 頌， 望 爾 神 光 照 我 \bd 曹。
}

alto = \relative c' {
  \global
  %\voiceTwo
  bes2~ bes~ | bes2~ bes4 r4 |
  d4 es c bes~ | bes2 a4 r |
  
  bes2 d4 es | bes2 d4 c | bes2 e | a,2 r4 <a c> |
  
  d2 c4 es | d8 c bes c d4 d8 d | c4 f e e | <f a,>2 r4 <f es c a> |
  bes2 a4 g | f8 es d es f4 d8 c | bes4 bes a a | <bes f>2. r4 |
}

tenor = \relative c {
  \global
  d4 es d es | f4 g a g |
  f1~ | f4 e f2 |
  
  d4 f~ f2 | f1 | g2 bes | f2. f4 |
  
  f2 g4 a | bes4 f bes a8 g | f4 a g bes | f2. f4 |
  
  f1 | es8 f g a bes2 | f2 es | d2. r4 |
}

bass = \relative c {
  \global
  %\voiceFour
  bes1~ | bes1 | bes4 c d bes | c2 f8 es d c |
  bes2. c4 | d c bes a | g2 c | f4 c a f |
  bes1~ | bes1 | c1 | f4 c a f |
  bes2 c4 d | es2 d4 es |
  f4 f, f2 | bes4 f bes r |
}

leadSheetPart = \new ChoirStaff {
  \override ChoirStaff.SystemStartBracket.collapse-height = #4
  \override Score.SystemStartBar.collapse-height = #4
  \new Staff \with {
    midiInstrument = "choir aahs"
  } { \melody }
}
\addlyrics { \verses }

organPart = \new PianoStaff \with {
  % instrumentName = "Organ"
  % shortInstrumentName = "Organ"
} <<
  \new Staff = "right" \with {
    midiInstrument = "church organ"
  } << \soprano \\ \alto >>
  \new Staff = "left" \with {
    midiInstrument = "church organ"
  } { \clef bass << \tenor \\ \bass >> }
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
  \midi { \tempo 4 = 108 }
}
