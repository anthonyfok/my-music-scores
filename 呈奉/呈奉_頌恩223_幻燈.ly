% Engraved by Anthony Fok on 2016-07-08
% and updated in 2017-02-02 and 2017-02-02
% in Edmonton, Alberta, Canada

\version "2.18.2"
\include "../definition.ily"
\include "../mass-slides-mhocp.ily"

\header {
  title = \markup {
    \setbgcolor
    \with-color #yellow
    \larger\larger
    \override #'(font-name . "HanWangLiSuMedium")
    "呈 奉"
  }

  poet = \markup\with-color #white \smaller {
    \kai 頌恩 \smaller (2005)
    \concat { \kai 第 223 \kai 首 }
    " "
    \smaller { © MMV \kai 天主教香港教區 }
  }

  composer = \markup\with-color #white {
    \left-column {
      \line { \kai 詞及曲：李浩泉 (1996) }
      \smaller
      \line { \kai 編：蔡詩亞 (March 17 MMII \concat { \kai 香港 ) } }
    }
  }

  % Remove default LilyPond tagline
  tagline = ##f
}

#(set-global-staff-size 28)

\paper {
  #(set-paper-size "1280x720")
  left-margin = 0.5\in
  right-margin = 0.5\in
  top-margin = 0.3\in
  bottom-margin = 0.8\in

  %ragged-bottom = ##t

  %top-markup-spacing.padding = #1
  top-system-spacing.padding = #6
  %markup-system-spacing.padding = #1
  %system-system-spacing.padding = #5
  %print-all-headers = ##t


  oddHeaderMarkup = \markup {
    \setbgcolor
    \with-color #white
    \fill-line {
      \on-the-fly \print-page-number-check-first
      {
        \lishu 〈呈奉〉
        \fromproperty #'page:page-number-string
      }
    }
  }
  evenHeaderMarkup = \oddHeaderMarkup
}

global = {
  \key bes \major
  \time 4/4 \partial 4
  % \set Score.tempoHideNote = ##t
  \tempo \markup { Andante maestoso \kai 莊嚴的行板 }
}

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }

soprano = \relative c' {
  \global
  \autoBeamOff
  f8[ es] |
  d4. f8 bes4 f | g2. a8 bes | c4. c,8 f4 es | d2.
  \bar "" \break
  f8 es |
  d4. f8 bes4 f | g4 es c'4. bes8 | a4 f g a | bes2.
  \bar "" \break

  f4 |
  d'4. es8 d4 c8 bes | d2 g,4 d' | c4. g8 g4 a8 bes | f2.
  \bar "" \break
  f4 |
  %\break
  d'4. es8 d4 c8 bes | d2 g,4 d' | c4. d8 es4 a,4 | bes2.
  \bar "||" \break


  f8[ es] |
  d4. f8 bes4 f | g2. a8 bes | c4. c,8 f4 es | d2.
  \bar "" \break
  f8 es |
  d4. f8 bes4 f | g4 es c'4. bes8 | a4 f g a | bes2.
  \bar "" \break

  f4 |
  d'4. es8 d4 c8 bes | d2 g,4 d' | c4. g8 g4 a8 bes | f2.
  \bar "" \break
  f4 |
  d'4. es8 d4 c8 bes | d2 g,4 d' | c4. d8 es4 a,4 | bes2.-\fermata

  \bar "|."
}

bd = \once \override LyricText #'self-alignment-X = #-0.72

verse = \lyricmode {
  \set stanza = #"1. "
  餅 是 眾 生 禮 \bd 品， 代 表 耕 耘 兼 血 \bd 汗；
  酒 也 是 世 間 勞 力 成 \bd 果， 寄 望 能 呈 奉 \bd 上。
  求 主 一 一 將 禮 收 \bd 納， 使 它 成 為 活 我 \bd 糧；
  期 可 分 享 主 祢 生 \bd 命， 使 我 更 加 像 \bd 祢。

  \set stanza = #"2. "
  餅 是 救 主 聖 \bd 身， 萬 世 天 糧 主 饋 \bd 贈；
  酒 要 成 為 生 命 活 泉 \bd 水， 潔 淨 靈 魂 罪 \bd 惡。
  耶 穌 捐 軀 捨 棄 生 \bd 命， 犧 牲 贖 罪 為 世 \bd 人；
  寧 死 交 出 體 血 相 \bd 贈， 主 愛 極 真 善 \bd 美。
}


\score {
  <<
    \include "呈奉_頌恩223_幻燈.jianpu.ily"

    \new ChoirStaff \with {
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
      \Score
      \applyContext #(override-color-for-all-grobs (x11-color 'wheat))
      % Colour the whole score, not just the staff;
      % See http://lilypond.1069038.n5.nabble.com/Coloring-volta-bracket-td189493.html
    }
    \context {
      \Staff
      \consists #merge-rests-engraver
      \consists #merge-mmrests-engraver
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t

      fontSize = #-2
      \override StaffSymbol.staff-space = #(magstep -2)
      \override StaffSymbol.thickness = #(magstep -2)
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
    \context {
      \Lyrics
      %\override LyricText.font-name = #"DFKai-SB"
      \override LyricText.font-name = #"DFHKStdKai-B5"
      %\override LyricText.font-name = #"HanWangYanKai"
      %\override LyricText.font-name = #"cwTeXKai"
      \override LyricText.font-size = #5
      \override LyricText.color = #white
      %\override LyricExtender.color = #white
      \override StanzaNumber.color = #yellow

      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }
  }
  \midi { \tempo 4 = 80 }
}
