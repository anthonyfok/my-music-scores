% 2019-01-23 in Edmonton

\version "2.18.2"
\include "../definition.ily"
%\include "articulate.ly"

\header {
  % Remove default LilyPond tagline
  tagline = ##f
  copyright = \markup {
    \fill-line {
      ""
      \smaller "af, January 2020" }
  }
}


#(set-global-staff-size 24)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.25\in
  bottom-margin = 0.25\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  %markup-system-spacing.padding = #6.5
  print-all-headers = ##t
  system-system-spacing.padding = #3.0
}

global = {
  \key f \major
  \time 2/4
  % \set Score.tempoHideNote = ##t
  % \tempo "Moderato 中板"
}

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }

soprano = \relative c'' {
  \global
  \autoBeamOff
  c4( d) c2
  a4 a8[( bes]) c bes bes c g2
  bes4 bes8 c a g4 c,8 g'4 f8[( e]) f2
  \break
  %
  c'4 a8 bes c4 bes
  bes4 bes8 bes bes8 c bes8[( a])
  g4. c8 bes4 a
  a8 g c g
  c4 c8[( d]) a8[( bes]) c[( d]) c2
  % 3453 34 55 | 6 1, | 2 33 45 35 | 5, 6,7, 1 - |
  %a8 bes c a a[( bes]) c8 c
  a4 bes c a a8[( bes]) c8 c
  d2 f,2
  g4 a8 a8 bes c a c | c,4( d8[ e]) f2
  
  \bar "|."
}

bd = \once \override LyricText #'self-alignment-X = #-0.72

verse = \lyricmode {
  %\override LyricText.font-size = #3
  主 \bd 啊！ 現 在 可 照 祢 的 \bd 話， 放 祢 的 僕 人 平 安 去 \bd 了！
  因 為 我 親 眼 看 見 了 祢 的 救 \bd 援，
  即 祢 在 萬 民 之 前 早 準 備 好 \bd 的：
  為 作 啟 示 異 邦 的 光 \bd 明， 祢 百 姓 以 色 列 的 榮 \bd 耀。
}

versePinyin = \lyricmode {
  \override LyricText.font-name = #"Gentium Book Basic"
  %\override LyricText.font-size = #0

  Shàng -- zhǔ, qiú Nǐ yǐ shuǐ mù -- yù wǒ, xǐ jìng wǒ,
  shǐ wǒ jié -- bái bái yú xuě.

  Tiān -- zhǔ, qiú Nǐ guǎng shī cí -- ’ēn lián -- mǐn wǒ.

  Yuàn guāng -- róng guī -- yú Fù jí Zǐ jí Shèng -- shén.
  Qǐ -- chū rú -- hé, jīn -- rì yì rán,
  zhí -- dào yǒng -- yuǎn.  Ā -- men.
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
  %\new Dynamics = "DynamicsOrgan_pf" \dynamicsOrgan
  \new Staff = "left" \with {
    midiInstrument = "church organ"
  } { \clef bass << \leftOne \\ \leftTwo >> }
>>

oneScore = \score {
  \header {
    title = \markup {
      \line {
        \override #'(font-name . "HanWangMingHeavy")
        "西默盎讚歌"
      }
    }
    composer = "路 2:29–32"
    %poet = "禮樂集"
    
  }
  <<
    \include "西默盎讚歌.jianpu.ily"

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
