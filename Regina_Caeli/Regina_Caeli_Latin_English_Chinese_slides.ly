% Regina Caeli, typeset by Anthony Fok on 2015-05-07
% Latin and English: Based on #168 in Breaking Bread 2013
% Chinese: Based on music sheet provided by Isabella Lui

\version "2.18.2"
%\include "gregorian.ly"

\include "../definition.ily"
\include "../mass-slides-mhocp.ily"

#(set-global-staff-size 28)

\header {
  title = \markup {
    \setbgcolor
    \with-color #yellow {      
      %\italic { (O Queen of Heaven) }
      \mingheavy 聖母對經：天皇后喜樂
      " "
      Regina Cæli
    }
  }
  tagline = ##f
}

\paper {
  #(set-paper-size "1280x720")
  %ragged-bottom = ##f
  %ragged-last-bottom = ##f
  ragged-last = ##f
  left-margin = 0.3\in
  right-margin = 0.3\in
  top-margin = 0.25\in
  bottom-margin = 0.25\in
  indent = #10
  markup-system-spacing.padding = #1
  %system-system-spacing.padding = #1
  top-system-spacing.padding = #3
  ragged-last-bottom = ##f
  
  
  oddHeaderMarkup = \markup {
    \setbgcolor
    \with-color #white
    \fill-line {
      \on-the-fly \print-page-number-check-first
      {
        \line { \mingheavy 聖母對經：天皇后喜樂 " " Marian Antiphon: Regina Cæli }
        \fromproperty #'page:page-number-string
      }
    }
  }
  evenHeaderMarkup = \oddHeaderMarkup
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
  \override LyricText.font-size = #3.5
  \override LyricHyphen.height = #0.8
  
  Re -- gí -- na cæ -- li, læ -- tá -- re, al -- le -- lú -- ia,
  qui -- a quem me -- ru -- í -- sti por -- tá -- re, al -- le -- lú -- ia,
  re -- sur -- ré -- xit si -- cut di -- xit al -- le -- lú -- ia,
  O -- ra pro no -- bis De -- um, al -- le -- lú -- ia.
}

words = \lyricmode {
  \override LyricText.font-name = #"Gentium Book Basic Italic"
  \override LyricText.font-shape = #'italic

  O Queen of heav -- en, be joy -- ful, al -- le -- lu -- ia,
  For He whom you have hum -- bly borne for us, al -- le -- lu -- ia,
  Has a -- ri -- sen, as He prom -- ised, al -- le -- lu -- ia,
  Of -- fer now our prayer to God, al -- le -- lu -- ia.
}


fpa = \once \override LyricText #'self-alignment-X = #-0.67

daoci = \lyricmode {
  \override LyricText.font-name = #"DFHKStdKai-B5"
  \override LyricText.font-size = #6.5
  
  上 天 大 母 后 喜 樂 \fpa 吧， 亞 肋 路 \fpa 亞，
  因 妳 在 歡 欣 中 生 的 耶 \fpa 穌， 亞 肋 路 \fpa 亞，
  照 祂 所 言 已 復 活 \fpa 了， 亞 肋 路 \fpa 亞，
  請 為 我 們 轉 求 \fpa 主， 亞 肋 路 \fpa 亞。
}


\score {
  <<
    \include "Regina_Caeli_Latin_English_Chinese_slides.jianpu.ily"
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
      fontSize = #-2
      \override StaffSymbol.staff-space = #(magstep -2)
      \override StaffSymbol.thickness = #(magstep -2)
    }
    
    \context {
      \Voice
      \override Stem.length = #0
    }
    
    \context {
      \Lyrics
      \override LyricText.color = #white
      \override LyricExtender.color = #white
      \override StanzaNumber.color = #yellow
      \override LyricHyphen.color = #white

      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }

    \context {
      \Score
      \applyContext #(override-color-for-all-grobs (x11-color 'wheat))
      % barAlways = ##t
    }
    
    \context {
      \RhythmicStaff
      \remove "Time_signature_engraver"
      fontSize = #2
      \override VerticalAxisGroup.
      default-staff-staff-spacing =
      #'((basic-distance . 2)
         (minimum-distance . 0)
         (padding . 0)
         (stretchability . 0))
    }
  }
}
