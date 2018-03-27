\version "2.18.0"

\header {
  title = "新約的羔羊"
  composer = "曲：佚名？"
  %arranger = "編：？"
  poet = "詞：佚名？"
  %composer = "曲：？"
  %arranger = "編：？"
  %poet = "詞：？"
  % Remove default LilyPond tagline
  tagline = ##f
}

#(set-global-staff-size 22)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.75\in
  left-margin = 1.25\in
  right-margin = 0.75\in
  bottom-margin = 0.5\in
  % http://www.lilypond.org/doc/v2.18/Documentation/notation/flexible-vertical-spacing-paper-variables
  %system-system-spacing #'basic-distance = #14
}

global = {
  \key d \minor
  \time 4/4
}

soprano = \relative c'' {
  \global
  % Music follows here.
  d2 c4 a | g2 g4 \breathe g | a4 f d f | g2 ~ g4 \bar "" \break
  d' | e4 d c d | a2 b4 c | d4 a f g | a2 \bar "||" \break
  
  
  a4 c | d2 c4 a | c2 \breathe a4 a | c4( a) g2 \breathe | \break
  a4 f d2 | f4 d c( f) | g2 a4 b | c4( a) g2 | f4 a d( c) | d2-\fermata \bar "||"
}

alto = \relative c' {
  \global
  % Music follows here.
  s1*7 s2
  f4 g | f2 f4 f | g2 \breathe f4 f | g4( e) d2 \breathe |
  d4 c bes2 | c4 b a( d) | e2 f4 f | g4( e) d2 | d4 e e2 | f2 \bar "||"
}

tenor = \relative c' {
  \global
  % Music follows here.
  s1*7 s2
  c4 c | a2 d4 d | e2 \breathe c4 c | c2 b \breathe |
  a4 a f2 | a4 b c( a) | b2 d4 d | e4 c b2 | a4 a a2 | a2 \bar "||"
}

bass = \relative c {
  \global
  % Music follows here.
  s1*7 s2
  f4 e | d2 d4 d | c2 \breathe f4 f | e4 f g2 \breathe |
  f4 f bes,2 | f'4 g a( f) | e2 d4 d | c4 f g2 | d4 c a2 | d2-\fermata \bar "||"
}

fpa = \once \override LyricText #'self-alignment-X = #-0.72

verse = \lyricmode {
  % Lyrics follow here.
  \set stanza = "1."
  新 約 的 羔 \fpa 羊， 聖 神 豐 盛 筵 \fpa 席，
  \set stanza = "1."
  基 督 至 聖 羔 \fpa 羊， 爲 我 等 流 徙 人 \fpa 間！
  
  主 羔 羊 已 被 \fpa 宰， 阿 肋 路 \fpa 亞！
  主 基 \fpa 督， 阿 肋 路 \fpa 亞， 阿 肋 路 \fpa 亞， 阿 肋 路 \fpa 亞！
}

verseTwo = \lyricmode {
  \set stanza = "2."
  新 約 的 羔 \fpa 羊， 全 人 類 之 喜 \fpa 樂，
  \set stanza = "2."
  生 命 之 門 大 \fpa 啓， 給 我 衆 以 新 活 \fpa 力。
}

verseThree = \lyricmode {
  \set stanza = "3."
  新 約 的 羔 \fpa 羊， 席 間 歡 聲 四 \fpa 起，
  \set stanza = "3."
  上 主 賓 客 滿 \fpa 座， 衆 人 賜 飲 主 盛 \fpa 筵。
}

verseFour = \lyricmode {
  \set stanza = "4."
  新 約 的 羔 \fpa 羊， 看 受 洗 的 聖 \fpa 者，
  \set stanza = "4."
  長 袍 皎 潔 輝 \fpa 耀， 參 與 羔 羊 之 婚 \fpa 約。
}

verseFive = \lyricmode {
  \set stanza = "5."
  新 約 的 羔 \fpa 羊， 心 內 之 火 常 \fpa 明，
  \set stanza = "5."
  光 芒 亮 如 皓 \fpa 日， 燦 然 輝 煌 不 泯 \fpa 滅。
}

verseSix = \lyricmode {
  \set stanza = "6."
  新 約 的 羔 \fpa 羊， 復 生 之 主 基 \fpa 督，
  \set stanza = "6."
  衝 破 死 亡 領 \fpa 域， 廣 施 濟 衆 賜 永 \fpa 生。
}

verseSeven = \lyricmode {
  \set stanza = "7."
  新 約 的 羔 \fpa 羊， 我 等 俯 伏 求 \fpa 爾，
  \set stanza = "7."
  務 請 伸 手 援 \fpa 助， 讚 佑 信 衆 渡 世 \fpa 海。
}

verseEight = \lyricmode {
  \set stanza = "8."
  新 約 的 羔 \fpa 羊， 基 督 請 允 我 \fpa 求，
  \set stanza = "8."
  願 主 聲 名 遠 \fpa 揚， 萬 古 受 稱 \fpa 頌。 阿 \fpa 們！
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
    } \lyricsto "soprano" \verse
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
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseSix
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseSeven
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseEight
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
    \context { \Staff
      % these lines prevent empty staves from being printed
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi {
    %\tempo 4=80
    \tempo 4=96
  }
}
