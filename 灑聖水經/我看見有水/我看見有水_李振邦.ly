% 希伯來的兒童_劉志明_幻燈
% Engraved by Anthony Fok on 2018-09-22
% in Edmonton, Alberta, Canada
%
% Lyrics copied from https://www.youtube.com/watch?v=EcVprXCXYAE

\version "2.18.2"
\include "../definition.ily"
\include "../mass-slides-mhocp.ily"

title = 我看見有水

\header {
  title = \markup {
    \larger\larger
    %\override #'(font-name . "HanWangLiSuMedium")
    \kai
    \title
  }

  composer = \markup {
    \kai\larger 曲：李振邦
  }
  poet = \markup {
    \concat { \kai\larger "詞：" "Vidi Aquam" \kai\larger （復活期灑聖水歌） }
  }
  
  copyright = \markup {
     \fill-line {
       ""
       \smaller\concat { \kai 伴奏： "af, 2019" }
     }
  }

  % Remove default LilyPond tagline
  tagline = ##f
}

#(set-global-staff-size 22)

\paper {
  #(set-paper-size "letter")
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.5\in
  bottom-margin = 0.38\in

  ragged-bottom = ##f

  markup-system-spacing.padding = #4
  system-system-spacing.padding = #4.3
}

global = {
  \key bes \major
  \cadenzaOn
}

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }

refrain = {
  f8 g bes bes[ c] bes4 | \bar "|"
  bes8\< bes bes bes g\! bes[\f c] c4 \breathe | \bar "|"
  f,8\> a g[ f] f2\! | \bar "|"
  \break
  
  f8\mf f f g es4 | \bar "|"
  es8 f4 f8 g4 | \bar "|"
  bes8 bes a[ g] f4 | \bar "|"
  es8\> g f4 f2\! | \bar "|"
  \break
  
  f8\< g bes bes\! c[ d] c4 | \bar "|"
  bes8\f c c[ d] bes4 | \bar "|"
  g8 bes c[ bes] bes2 | \bar "|."
  \break
}

melody = \relative c' {
  \global
  \autoBeamOff
  \voiceOne
  
  \refrain
  %\pageTurn
  
  f\breve g8 bes4 bes2 | \bar "|"
  bes\breve g8 bes a[ g] f2 | \bar "|"
  
  f\breve g8 bes4 bes2 | \bar "|"
  bes\breve bes g8 bes a[ g] f2 | \bar "||"
}

alto = \relative c' {
  \voiceTwo
  es4.~ es4 d4 |
  f4.~ f2 a4 |
  a,4 bes a2 |
  
  bes2~ bes4~ |
  bes2~ bes4 |
  es2 bes4 |
  c4 bes a2 |
  
  d2 f4 a |
  d,2~ d4 |
  es2 d |
  
  
  d\breve~ d8~ d4~ d2 |
  es\breve d2 c |
  
  d\breve~ d8~ d4~ d2 |
  es\breve f bes,4 c a2 |
}

tenor = \relative c' {
  \global
}

left = \relative c {
  \global
  \clef bass
  f4.~ f4 bes,4 |
  d4.~ d4 es f |
  f4 c f,2 |
  
  d'2 g4~ |
  g8 f4. es4 |
  c2 d4 |
  es4 f f,2 |
  
  bes2 d4 f |
  g2 f4 |
  << { bes4 c f,2 } \\ { es2 bes } >>
  
  
  bes'\breve~ bes8 g4~ g2 |
  c\breve bes2 a |
  
  bes,\breve~ bes8 g4~ g2 |
  c\breve d es2 f |
}

bd = \once \override LyricText.self-alignment-X = #-0.72
al = \once \override LyricText.self-alignment-X = #-0.95

refrainText = \lyricmode {
  \set stanza = #"(重唱) "
  我 看 見 有 \bd 水， 從 聖 殿 右 邊 流 \bd 出。 阿 肋 路 \bd 亞。
  所 有 被 這 水 洗 潔 的 \bd 人， 都 已 得 \bd 救。 阿 肋 路 \bd 亞。
  他 們 齊 聲 高 \bd 唱， 阿 肋 路 \bd 亞， 阿 肋 路 \bd 亞。
}

verses = \lyricmode {
  \refrainText 
  
  \set stanza = #"1. "
  \al 請你們稱謝上主，因為祂美 善 寬 \bd 仁，
  \al 祂的仁慈 永 遠 常 \bd 存。
  
  \set stanza = #"2. "
  \al 願光榮歸於父、及子 及 聖 \bd 神，
  \al 起初如何 \al 今日亦然，直到 永 \bd 遠。 阿 \bd 們。
  
  \refrainText
}

verseone = \lyricmode {
}

versetwo = \lyricmode {
}

\score {
  
  \include "我看見有水_李振邦_幻燈.jianpu.ily"
  \new PianoStaff
  <<
    \new Staff = "upperStaff" {
      \set Staff.midiInstrument = #"church organ"
      <<
        \new Voice = "melody" { \melody }
        \new Voice = "alto" { \alto }
      >>
    }
    \new Lyrics \with { alignAboveContext = "upperStaff" } {
      \lyricsto "melody" { \verses }
    }
    \new Staff {
      \set Staff.midiInstrument = #"church organ"
      { \left }
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
      #'((basic-distance . 5)
         (minimum-distance . 0)
         (padding . 0)
         (stretchability . 0))
      fontSize = #2.5
    }
    \context {
      \Lyrics
      \override LyricText.font-name = #"Times New Roman,DFHKStdKai-B5"
      
      %\override StanzaNumber.color = #yellow
      \override StanzaNumber.font-name = #"Century Schoolbook L,王漢宗中隸書繁 Bold"
      %\override StanzaNumber.font-series = #'bold
      %\override StanzaNumber.font-size = #3
    }
  }
  \midi { \tempo 8 = 140 }
}
