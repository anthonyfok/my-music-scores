\version "2.18.2"

\header {
  title = "平安夜 Silent Night"
  composer = "F X Grüber (1787–1863)"
  poet = "Joseph Mohr (1792–1848) 1818"
  % Remove default LilyPond tagline
  tagline = ##f
}

#(set-global-staff-size 21)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.75\in
  left-margin = 0.75\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in
}

global = {
  \key bes \major
  \numericTimeSignature
  \time 6/8
  \tempo "Adagio"
  \autoBeamOff
}

soprano = \relative c' {
  \global

  f8.^\mf[ g16] f8 d4. | f8.^\pp[ g16] f8 d4. |
  c'4^\f c8 a4. | bes4 bes8 f4. | \break

  g4 g8 bes8.[ a16] g8 | f8. g16 f8 d4. |
  g4 g8 bes8. a16 g8 | f8. g16 f8 d4. | \break

  c'4^\f c8 es8. c16 a8 | bes4.( d4.) |
  bes8.^\p[ f16] d8 f8. es16 c8 | bes2. \bar "|."
}

alto = \relative c' {
  \global

  d8.[ es16] d8 bes4. | d8.[ es16] d8 bes4. |
  es4 es8 es4. | d4 d8 d4. |

  es4 es8 g8.[ f16] es8 | d8. es16 d8 bes4. |
  bes4 es8 g8. f16 es8 | d8. es16 d8 bes4. |

  es4 es8 es8. es16 es8 | d4.( f4.) |
  d4 bes8 a8. a16 a8 | bes2. \bar "|."
}

tenor = \relative c' {
  % Tenor part in Original ChungYan
  \global

  bes4 bes8 f4. | bes4 bes8 f4. |
  a4 a8 c4. | bes4 f8 bes4. |

  bes4 bes8 bes4 bes8 | bes8. bes16 bes8 f4. |
  es4 bes'8 g8. bes16 bes8 | bes8. bes16 bes8 f4. |

  a4 a8 c8. a16 c8 | bes4.( f4.) |
  f4 f8 f8. f16 es8 | d2. \bar "|."
}

tenor_new_ChungYan = \relative c' {
  % Revised(?) Tenor part in New ChungYan
  \global

  bes4 bes8 f4. | bes4 bes8 f4. |
  a4 a8 c4. | bes4 f8 bes4. |

  bes4 bes8 g8.[ a16] bes8 | bes8. bes16 bes8 f4. |
  es4 bes'8 g8.[ a16] bes8 | bes8. bes16 bes8 f4. |

  a4 a8 c8. a16 f8 | f4.( bes4.) |
  f4 f8 f8. f16 es8 | d2. \bar "|."
}

bass = \relative c {
  % Bass part in Original ChungYan
  \global

  bes4 bes8 bes4. | bes4 bes8 bes4. |
  f'4 f8 f4. | bes,4 bes8 bes4. |
  
  es4 es8 es4 es8 | bes8. bes16 bes8 bes4. |
  es4 es8 es4 es8 | bes8. bes16 bes8 bes4. |

  f'4 f8 f8. f16 f8 | bes,2. |
  bes4 bes8 f8. f16 f8 | bes2. \bar "|."  
}

bass_new_ChungYan = \relative c {
  % Revised (?) Bass part in New ChungYan
  \global

  bes4 bes8 bes4. | bes4 bes8 bes4. |
  f'4 f8 f4. | bes,4 bes8 bes4. |
  
  es4 es8 es4 es8 | bes8. bes16 bes8 bes4. |
  es4 es8 es4 es8 | bes8. bes16 bes8 bes4. |

  f'4 f8 f8. f16 f8 | bes,2. |
  f'4 f,8 f8. f16 f8 | bes2. \bar "|."  
}

fpa = \once \override LyricText #'self-alignment-X = #-0.72

verseFive = \lyricmode {
  %\set stanza = "1."
  % Lyrics follow here.
  Píng -- ’ān yè shèng -- shàn yè,
  wàn àn zhōng guāng -- huá shè;
  zhào -- zhe Shèng -- mǔ zhào -- zhe Shèng -- yīng
  duō -- shǎo cí -- _ xiáng duō -- shǎo tiān -- zhēn
  jìng xiǎng tiān -- cì ān -- mián,
  jìng xiǎng tiān -- cì ān -- mián.
}

verseFour = \lyricmode {
  \set stanza = "3."
  % Lyrics follow here.
  平 安 夜 聖 善 \fpa 夜，
  萬 暗 中 光 華 \fpa 射；
  照 着 聖 母 照 着 聖 \fpa 嬰；
  多 少 慈 _ 祥 多 少 天 \fpa 真；
  靜 享 天 賜 安 \fpa 眠，
  靜 享 天 賜 安 \fpa 眠。
}

verseOne = \lyricmode {
}

verseOne_cancelled = \lyricmode {
  %\set stanza = "3."
  % Lyrics follow here.
  Tiān -- zhǔ zi ài shì -- rén,
  qīng wàn lè gān -- jū pín;
  tǐ běn zhì -- zūn jīn jiàng hóng -- chén,
  dú xuǎn lóng -- _ dōng qì què sān -- chūn;
  zài Bái -- lěng jùn dàn -- shēng,
  zhěng -- jiù shì -- rén chén -- lún.
}

verseTwo = \lyricmode {
  \set stanza = "1."
  % Lyrics follow here.
  天 主 子 愛 世 \fpa 人，
  輕 萬 樂 甘 居 \fpa 貧；
  體 本 至 尊 今 降 紅 \fpa 塵，
  獨 選 隆 _ 冬 棄 卻 三 \fpa 春；
  在 白 冷 郡 誕 \fpa 生，
  拯 救 世 人 沉 \fpa 淪。
}

verseThree = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  Si -- lent night!  Ho -- ly night!
  All is calm, all is bright.
  
  Round yon Vir -- gin Moth -- er and Child.
  Ho -- ly In -- fant so ten -- der and mild.
  
  Sleep in heav -- en -- ly peace.
  Sleep in heav -- en -- ly peace.
}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFour
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFive
    \new Staff \with {
      midiInstrument = "choir aahs"
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout {
    indent = #0
  }
  \midi {
    \tempo 8=72
  }
}
