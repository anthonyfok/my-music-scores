% 基督聖體聖血節繼抒詠 Lauda Sion Salvatorem in Chinese
%
% Typeset for Mary Help of Christians Chinese Catholic Parish, Edmonton, Canada
% by Anthony Fok, 2018-05-25
%
% This work is licensed under a
% Creative Commons Attribution-ShareAlike 4.0 International License.
%
% Jianpu (numbered musical notation) in
% was generated by Silas C. Brown's excellent jianpu-ly.py script v1.143

\version "2.18.2"

\include "../definition.ily"
\include "../mass-slides-mhocp.ily"

\header {
  title = \markup\with-color #yellow {
    \setbgcolor
    \huge\larger\kai "基督聖體聖血節繼抒詠"
    \override #'(font-name . "Gentium Book Basic Bold")
    \large "Corpus Christi Sequence: Lauda Sion Salvatorem"
  }
  subtitle = \markup {
    \column {
      \fill-line \smaller \with-color #white {
        \null
        \concat {
          \kai 詞：聖多瑪斯．阿奎那
          \override #'(font-name . "Gentium Book Basic")
          \smaller "  St. Thomas Aquinas     "
          \kai 譯文取自北京《弥撒经歌汇萃》
        }
      }
      \null
      \fill-line \larger \with-color #yellow {
        \null \kai （請保持坐下）
      }
    }
  }
  %{
  copyright = \markup {
    \override #'(baseline-skip . 2)
    \teeny\smaller\smaller {
      \left-column {
        \small \line {
          可將會眾分為兩邊詠唱此曲。後立刻接唱：福音前歡呼 - Alelluia!
        }
        \line {
          詞：Pope Innocent III (1198–1216)
          ※ 譯：採自「聖神降臨誦」白話文版
          ※ 曲：傳統額我略曲 (第一調式)
        }
        \line {
          "來源：《彌撒經歌匯萃》(北京)；" \italic "Graduale Romanum"
          % ※ 雙語版植譜：加拿大愛民頓瑪利亞進教之佑華人天主堂 (2015-04-23)
          ※ 此雙語版以 LilyPond 植譜 (af, revised 2018-04-29, Edmonton, AB)
        }
      }
    }
  }
  %}
  tagline = ##f
}

% #(set-global-staff-size 19.5)
#(set-global-staff-size 28)

slideBreak = { \tag #'slide \pageBreak }

\paper {
  #(set-paper-size "1280x720")
  %ragged-last = ##t
  %ragged-bottom = ##t
  %ragged-last-bottom = ##t
  ragged-right = ##t
  
  %top-margin = 0.75\in
  top-margin = 0.1\in
  left-margin = 0.5\in
  right-margin = 0.5\in
  bottom-margin = 0\in
  %bottom-margin = 5\mm
  % http://www.lilypond.org/doc/v2.18/Documentation/notation/flexible-vertical-spacing-paper-variables
  %markup-system-spacing #'basic-distance = #-20
  %markup-system-spacing #'padding = #3
  %markup-system-spacing #'stretchability = #300
  top-system-spacing #'padding = #0.25
  top-system-spacing #'stretchability = #300
  last-bottom-spacing #'stretchability = #600
  %system-system-spacing #'basic-distance = #14
  system-system-spacing #'padding = #0.5
  %min-systems-per-page = 4
  
  
  oddHeaderMarkup = \markup {
    \setbgcolor
    \with-color #yellow
    \fill-line {
      \on-the-fly \print-page-number-check-first
      {
        \line { \kai 基督聖體聖血節繼抒詠 }
        \fromproperty #'page:page-number-string
      }
    }
  }
  evenHeaderMarkup = \oddHeaderMarkup
}


\include "Lauda_Sion_zh_Beijing_melody.ily"

bd = \once \override LyricText #'self-alignment-X = #-0.63
pn = \once \override LyricText #'self-alignment-X = #-0.38
fpb = \once \override LyricText #'self-alignment-X = #0.72

\include "Lauda_Sion_zh_Beijing_verses.ily"


\score {
  \keepWithTag #'slide
  <<
    \include "基督聖體聖血節繼抒詠_北京版.jianpu.ily"

    \new ChoirStaff <<
      \new Staff = "melody" \with { midiInstrument = "choir aahs" } {        
        \zhBjMelody
      }
      \addlyrics { \zhBjVersesOdd }
      %\addlyrics { \latinTextOdd }
      \addlyrics { \zhBjVersesEven }
      %\addlyrics { \latinTextEven }
    >>
  >>
  \layout {
    indent = #0
    \context {
      \Score
      \override SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/12)
      \applyContext #(override-color-for-all-grobs (x11-color 'wheat))
    }
    \context {
      \Staff
      \remove "Time_signature_engraver"
      
      % Reduce staff size for slides
      fontSize = #-3
      \override StaffSymbol.staff-space = #(magstep -3)
      \override StaffSymbol.thickness = #(magstep -3)
    }
    \context {
      \RhythmicStaff
      \remove "Time_signature_engraver"
      \override VerticalAxisGroup.
      default-staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 0)
         (padding . 0)
         (stretchability . 0))
    }
    \context {
      \Lyrics
      \override LyricText.color = #white
      \override LyricHyphen.color = #white
      \override StanzaNumber.color = #yellow
      \override LyricText.font-size = #4
      \override LyricText.font-name = #"DFKai-SB"
      \override LyricSpace.minimum-distance = #0.2
    }
  }
  \midi {
    \tempo 4=60
  }
}
