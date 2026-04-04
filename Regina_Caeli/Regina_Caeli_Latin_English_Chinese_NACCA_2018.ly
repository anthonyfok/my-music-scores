% Regina Caeli, typeset by Anthony Fok on 2015-05-07
% Latin and English: Based on #168 in Breaking Bread 2013
% Chinese: Based on music sheet provided by Isabella Lui

\version "2.18.2"
%\include "gregorian.ly"
\include "../definition.ily"
\include "../mass-slides-mhocp.ily"

% #(set-global-staff-size 21)

\header {
  title = \markup {
    \center-column {
      \line { "Regina Caeli" }
      \line { \override #'(font-name . "HanWangMingHeavy") "天皇后喜樂" }
    }
  }
  %subtitle = "Queen of Heaven"
  tagline = ##f
}


\paper {
  #(set-paper-size "half letter")
  %ragged-bottom = ##f
  %ragged-last-bottom = ##f
  ragged-last = ##f
  left-margin = 0.3\in
  right-margin = 0.3\in
  %indent = #10
  indent = #0
  markup-system-spacing.padding = #2.5
  system-system-spacing.padding = #2.5
  %print-all-headers = ##t
}

divisioMinima = {
  \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-minima

  % Workaround: add padding.  Correct fix would be spacing engine handle this.
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)

  \breathe
}
divisioMaior = {
  \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-maior
  \once \override BreathingSign.Y-offset = #0

  % Workaround: add padding.  Correct fix would be spacing engine handle this.
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)

  \breathe
}
divisioMaxima = {
  \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-maxima
  \once \override BreathingSign.Y-offset = #0

  % Workaround: add padding.  Correct fix would be spacing engine handle this.
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)

  \breathe
}


chant = \relative c' {
  \key f \major
  %\time 4/4
  %\set Score.timing = ##f
  \cadenzaOn
  
  f4 g f g a2 bes4 a g^\tenuto \divisioMinima bes4 a g f2 \divisioMaior
  \bar "" \break
  
  f4 c'^\tenuto c d c bes a f g a^\tenuto \divisioMinima bes4 a g f2 \divisioMaxima
  \bar "" \break
  
  c'4 c d c^\tenuto c f, g f^\tenuto \divisioMinima g4 a bes c2 \divisioMaior
  \bar "" \break
  
  c4 f, g bes a g f2 \divisioMinima e4 g g ~ g f2
  
  \bar "|."
}

verba = \lyricmode {
  \override LyricText.font-name = #"Gentium Book Basic"
  \override LyricHyphen.height = #0.5
  
  Re -- gí -- na cæ -- li, læ -- tá -- re, al -- le -- lú -- " ia :"
  qui -- a quem me -- ru -- í -- sti por -- tá -- re, al -- le -- lú -- " ia :"
  re -- sur -- ré -- xit si -- cut di -- xit al -- le -- lú -- " ia :"
  O -- ra pro no -- bis De -- um, al -- le -- lú -- ia.
}

words = \lyricmode {
  \override LyricText.font-name = #"Gentium Book Basic Italic"
  \override LyricText.font-size = #0.0

  O Queen of heav -- en, be joy -- ful, al -- le -- lu -- ia;
  For He whom you have hum -- bly borne for us, al -- le -- lu -- ia;
  Has a -- ri -- sen, as He prom -- ised, al -- le -- lu -- ia;
  Of -- fer now our prayer to God, al -- le -- lu -- ia.
}


fpa = \once \override LyricText #'self-alignment-X = #-0.67

daoci = \lyricmode {
  \override LyricText.font-name = #"STZhongsong"
  %\override LyricText.font-name = #"HanWangMingMedium"
  \override LyricText.font-size = #3.2
  上 天 大 母 后 喜 樂 \fpa 吧， 亞 肋 路 \fpa 亞；
  因 妳 在 歡 忻 中 生 的 耶 \fpa 穌， 亞 肋 路 \fpa 亞；
  照 祂 所 言 已 復 活 \fpa 了， 亞 肋 路 \fpa 亞；
  請 為 我 們 轉 求 \fpa 主， 亞 肋 路 \fpa 亞。
}


\score {
  <<
    \include "Regina_Caeli_Latin_English_Chinese_NACCA_2018.jianpu.ily"
    \new Staff <<
      \new Voice = "melody" \chant
      \new Lyrics = "latin" \lyricsto melody \verba
      \new Lyrics = "chinese" \lyricsto melody \daoci
      \new Lyrics = "english" \lyricsto melody \words
    >>
  >>
  \layout {
    \context {
      \Staff
      \remove "Time_signature_engraver"
      %\remove "Bar_engraver"
      \hide Stem
    }
    \context {
      \Voice
      \override Stem.length = #0
    }
    \context {
      \Score
      % barAlways = ##t
    }
        \context {
      \RhythmicStaff
      \remove "Time_signature_engraver"
      %fontSize = #2
      \override VerticalAxisGroup.
      default-staff-staff-spacing =
      #'((basic-distance . 2)
         (minimum-distance . 0)
         (padding . 0)
         (stretchability . 0))
    }
  }
}
