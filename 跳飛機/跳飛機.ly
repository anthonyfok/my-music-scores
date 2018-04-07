% Engraved by Anthony Fok on 2018-03-23
% in Edmonton, Alberta, Canada

\version "2.18.2"
\include "../definition.ily"
\include "../mass-slides-mhocp.ily"

\header {
  title = \markup {
    \larger\larger\larger\larger\kai 跳飛機
  }
  subtitle = "Hopscotch"

  
  composer = \markup {
    \column {
      \line {
        \larger  "曲：顧嘉煇"
        \tiny "(Gu3 Gaa1 Fai1)"
        Joseph KOO
      }
      \line {
        \larger "詞：鄭國江"
        \tiny "(Zeng6 Gwok3 Gong1)" CHENG Kwok Kong
      }
    }
  }

  copyright = \markup {
    \small \lower #5 {
      \kai 為中文學校植譜
      (2018-03-23 \concat { \kai 修訂版 ) }
    }
  }

  % Remove default LilyPond tagline
  tagline = ##f
}

%28
#(set-global-staff-size 23)

\paper {
  #(set-paper-size "letter")
  %two-sided = ##t
  left-margin = 0.75\in
  right-margin = 0.75\in
  top-margin = 0.3\in
  bottom-margin = 0.5\in

  %ragged-bottom = ##t

  %top-markup-spacing.padding = #1
  markup-system-spacing.padding = #2
  %top-system-spacing.padding = #5

  system-system-spacing.padding = #5
}

global = {
  \key d \major
  \time 2/4
  % \set Score.tempoHideNote = ##t
  %\tempo \markup { Andante \kai 行板 }
}

%sd = { \set melismaBusyProperties = #'() \slurDashed }
%ss = { \slurSolid \unset melismaBusyProperties }


sd = { \set melismaBusyProperties = #'() }
ss = { \unset melismaBusyProperties }


refrain = {
  <<
    {
      \voiceOne
      e8 g a b8( g a | b4.) \breathe
      b8 cis d | cis8( a cis b4.) |
      e4 e8 d8( b d) | <e g,>4.~ <e g,>4.~ | <e g,>4 r8
      e,4 g8 | a4. a4. |
      \once \override Staff.TimeSignature #'stencil = ##f
      \time 2/4
      e2 \bar "||"
    }
    \new Voice {
      \voiceTwo
      e8 g a b8( g a | b4.) \breathe
      g8 a b | a8( fis e g4.) |
      <g b>4 <g b>8 <fis a>4. | e4 d8 c4.~ c4 r8
      e4 g8 | a4. a4. | e2 \bar "||"
    }
  >> \oneVoice
}


soprano = \relative c' {
  \global
  %\autoBeamOff

  %{
  fis8 fis16 g a8 d, |
  e16 fis g8 cis,8 cis16 d |
  e8 a, b cis |
  d8 a' d r | \break
  %}

  fis8. g16  a8 d,  | cis8 d e4 |
  e8. fis16  g8 cis, | d8 e fis4 | \break
  fis8. g16  a8 d,   | g8 a b4 |
  d8. d16  cis8 b    | b8 a a4 | \break

  fis8. g16  a8 d,   | cis8 d e4 |
  e8. fis16  g8 cis, | d8 e fis4 | \break
  fis8. g16  a8 d,   | g8 a b4 |
  \autoBeamOff
  a4-. cis,-.        | e8 d d4 | \break

  \bar "|."
}

bd = \once \override LyricText #'self-alignment-X = #-0.66


stanzaRefrain = \set stanza = \markup {
  \lishu (重句)
}

verseJp = \lyricmode {
  \override LyricText.font-name = #"Gentium Book Basic"
  \override LyricText.font-size = #-1
  "tin1" "hung1" "hoi2" "fut3" "jam6" "niu5" "fei1"
  "siu2" "siu2" "tin1" "dei6" "tiu3" "fei1" "gei1"
  "daai3" "zung3" "jat1" "cai4" "coeng3" "sau2" "go1"
  "hoi1" "hoi1" "sam1" "sam1" "zan1" "jau5" "ceoi3"
  
  "wut6" "put3" "cung1" "ming4" "duk6" "haa5" "syu1"
  "tin1" "tin1" "se2" "zi6" "siu3" "hei1" "hei1"
  "daai3" "zung3" "jat1" "cai4" "tiu3" "fei1" "gei1"
  "jat1" "ji3" "saam1" "dou3" "nei5"
}

verse = \lyricmode {
  \override LyricText.font-name = #"DFHKStdKai-B5"
  \override LyricText.font-size = #6

  天 空 海 闊 任 鳥 \bd 飛，
  小 小 天 地 跳 飛 \bd 機；
  大 眾 一 齊 唱 首 \bd 歌，
  開 開 心 心 真 有 \bd 趣！

  活 潑 聰 明 讀 下 \bd 書，
  天 天 寫 字 笑 嘻 \bd 嘻；
  大 眾 一 齊 跳 飛 \bd 機，
  \bd 一、 \bd 二、 \bd 三， 到 \bd 你！
}

\score {
  <<
    \include "跳飛機.jianpu.ily"

    \new ChoirStaff \with {
      midiInstrument = "clarinet"
    } {
      \new Voice = "soprano" { \soprano }
    }
    %{
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseJp
    %}
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
  >>
  \layout {
    indent = #0
    \context {
      \Score
      %\applyContext #(override-color-for-all-grobs (x11-color 'wheat))
      % Colour the whole score, not just the staff;
      % See http://lilypond.1069038.n5.nabble.com/Coloring-volta-bracket-td189493.html
    }
    \context {
      \Staff
      \consists #merge-rests-engraver
      \consists #merge-mmrests-engraver
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t

      %fontSize = #-2
      %\override StaffSymbol.staff-space = #(magstep -2)
      %\override StaffSymbol.thickness = #(magstep -2)
    }
    \context {
      \RhythmicStaff
      \remove "Time_signature_engraver"
      \override VerticalAxisGroup.
      default-staff-staff-spacing =
      #'((basic-distance . 6)
         (minimum-distance . 0)
         (padding . 0)
         (stretchability . 0))
    }
    \context {
      \Lyrics
      %\override LyricText.font-name = #"DFKai-SB"
      %\override LyricText.font-name = #"DFHKStdKai-B5"
      %\override LyricText.font-name = #"HanWangYanKai"
      %\override LyricText.font-name = #"cwTeXKai"

      %\override LyricText.color = #white
      %\override LyricExtender.color = #white
      %\override LyricHyphen.color = #white
      %\override StanzaNumber.color = #yellow

      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }
  }
  \midi { \tempo 4 = 80 }
}
