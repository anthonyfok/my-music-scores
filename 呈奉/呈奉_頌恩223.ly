% 2016-05-20 in Edmonton

\version "2.18.2"
\include "../definition.ily"
%\include "articulate.ly"

\header {
  % Remove default LilyPond tagline
  tagline = ##f
}


%#(set-global-staff-size 18)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.25\in
  bottom-margin = 0.25\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  markup-system-spacing.padding = #-6
  system-system-spacing.padding = #2
  print-all-headers = ##t
}

global = {
  \key bes \major
  \time 4/4 \partial 4
  % \set Score.tempoHideNote = ##t
  \tempo "Andante maestoso 莊嚴的行板"
}

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }

soprano = \relative c' {
  \global
  \autoBeamOff
  f8[ es] |
  d4. f8 bes4 f | g2. a8 bes | c4. c,8 f4 es | d2. f8 es | \break
  d4. f8 bes4 f | g4 es c'4. bes8 | a4 f g a | bes2. f4 | \break
  d'4. es8 d4 c8 bes | d2 g,4 d' | c4. g8 g4 a8 bes | f2. f4 | \break
  d'4. es8 d4 c8 bes | d2 g,4 d' | c4. d8 es4 a,4 | f2.
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

verseOne = \lyricmode {
  \set stanza = #"1. "
  餅 是 眾 生 禮 \bd 品， 代 表 耕 耘 兼 血 \bd 汗；
  酒 也 是 世 間 勞 力 成 \bd 果， 寄 望 能 呈 奉 \bd 上。
  求 主 一 一 將 禮 收 \bd 納， 使 它 成 為 活 我 \bd 糧；
  期 可 分 享 主 祢 生 \bd 命， 使 我 更 加 像 \bd 祢。
}

verseTwo = \lyricmode {
  \set stanza = #"2. "
  餅 是 救 主 聖 \bd 身， 萬 世 天 糧 主 饋 \bd 贈；
  酒 要 成 為 生 命 活 泉 \bd 水， 潔 淨 靈 魂 罪 \bd 惡。
  耶 穌 捐 軀 捨 棄 生 \bd 命， 犧 牲 贖 罪 為 世 \bd 人；
  寧 死 交 出 體 血 相 \bd 贈， 主 愛 極 真 善 \bd 美。
}

verseThree = \lyricmode {
  \set stanza = #"3. "
}

verseFour = \lyricmode {
  \set stanza = #"4. "
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
    %{
    title = \markup {
      \line {
        %\override #'(font-name . "HanWangMingHeavy")
        \override #'(font-name . "HanWangMingHeavy")
        "呈 奉"
      }
    }
    %}
    composer = "詞及曲：李浩泉 (1996)"
  }
  <<
    \include "呈奉_頌恩223.jianpu.ily"

    \new ChoirStaff \with {
      % midiInstrument = "choir aahs"
      %midiInstrument = "flute"
      midiInstrument = "clarinet"
    } {
      \new Voice = "soprano" { \soprano }
    }

    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    %{
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFour
    %}
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
    \context {
      \Score
      \override LyricText #'font-size = #3.2
      \override LyricText #'font-name = "AR PL UKai HK"
    }
  }
  \midi { \tempo 4 = 80 }
}

\oneScore
%\oneScore
