% 《是祢麼？》
% 曲：Vansie@AMDG
% 詞：堅@AMDG

% https://www.youtube.com/watch?v=ayhDlYBGAzs
% https://www.youtube.com/watch?v=2hjWnGJI4_A

\version "2.24.4"

\include "jianpu10a-afok.ly"

%\pointAndClickOff

\header {
  title = "是祢麼？"
  subtitle = "Could it be You?"
  subsubtitle = "(2026-05-05 draft music score, Edmonton.  All feedback welcome!)"
  composer = "Vansie@AMDG"
  poet = "張俊堅@AMDG"
  tagline = "2026-05-05 draft music score, Edmonton.  All feedback welcome!"
}

\paper {
  #(set-paper-size "letter")
  myStaffSize = #20
  #(define fonts
     (make-pango-font-tree "C059, Noto Serif HK SemiBold"
                           "LilyPond Sans Serif"
                           "LilyPond Monospace"
                           (/ myStaffSize 20)))
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  left-margin = 0.5\in
  right-margin = 0.5\in
  indent = 0
}

global = {
  \time 4/4
  \key d \major
  \compressEmptyMeasures
  \autoBeamOff
}

melody = \relative c'' {
  \global
  \partial 2 r2 |
  \override MultiMeasureRest.expand-limit = 2
  R1*4 |
  %\autoBeamOff
  a8 a a a  a g fis e |
  e16 d8 d16~ d2 d16 e fis d |
  b'8 b16 b~ b8 b \tuplet 3/2 { b a a~ } a4 |
  g8 fis e d cis d16 e16~ e4 |
  
  a8 a a a  a g fis e |
  e8 d16 d16~ d2 d16 e fis d |
  b4 cis16 d e cis a4 r |
  g'8 fis16 b,~ b8 d  cis8 d16 e16~ e4 |

  \break

  \repeat volta 2 {
    a8 a a a  a g fis e |
    e16 d8 d16~ d2 d16 e fis d |
    b'8 b16 b~ b8 b b a16 a~ a4 |
    g8 fis e d cis d16 e16~ e4 |

    a8 a a a  a g fis e |
    e16 d d8~ d2 d16 e fis d |
    b4 cis16 d e cis a8 d16 d~ d4 |
    g8 fis16 g16~ g8 b a2( |

    \time 3/4
    a4\fermata) r8  cis,16 d  e16 d cis d |
    \time 4/4
    b'2 r8 cis,16 d  e16 d cis d |
    a'2 r8 cis,16 d  e16 d cis d |
    a'8 g16 g~ g8 fis  fis8 e16 e~ e8  b'8( |
    a8) a4~ a8 r8 cis,16 d  e16 d cis d |

    b'2 r8 cis,16 d  e16 d cis d |
    a'2 r8 cis,16 d  e16 d cis d |
    a'8 g16 g~ g8 fis  e4. r8 |
    b'8 a16 a~ a8 g fis4. r8 |
    g8 fis g b, cis4 fis8 fis |
    e8 d d2. || 

    \alternative {
      \volta 1 {
        R1*4
      }
      \volta 2 {
        R1*2 r2
      }
    }
  }
  \bar "|."
}

% Temporary measure to avoid junk numbers appearing with chords
% by changing r and R to s
jianpuMelody = \relative c'' {
  \global
  \partial 2 s2 |
  \override MultiMeasureRest.expand-limit = 2
  s1*4 |
  %\autoBeamOff
  a8 a a a  a g fis e |
  e16 d8 d16~ d2 d16 e fis d |
  b'8 b16 b~ b8 b \tuplet 3/2 { b a a~ } a4 |
  g8 fis e d cis d16 e16~ e4 |
  
  a8 a a a  a g fis e |
  e8 d16 d16~ d2 d16 e fis d |
  b4 cis16 d e cis a4 r |
  g'8 fis16 b,~ b8 d  cis8 d16 e16~ e4 |

  \break

  \repeat volta 2 {
    a8 a a a  a g fis e |
    e16 d8 d16~ d2 d16 e fis d |
    b'8 b16 b~ b8 b b a16 a~ a4 |
    g8 fis e d cis d16 e16~ e4 |

    a8 a a a  a g fis e |
    e16 d d8~ d2 d16 e fis d |
    b4 cis16 d e cis a8 d16 d~ d4 |
    g8 fis16 g16~ g8 b a2( |

    \time 3/4
    a4\fermata) r8  cis,16 d  e16 d cis d |
    \time 4/4
    b'2 r8 cis,16 d  e16 d cis d |
    a'2 r8 cis,16 d  e16 d cis d |
    a'8 g16 g~ g8 fis  fis8 e16 e~ e8  b'8( |
    a8) a4~ a8 r8 cis,16 d  e16 d cis d |

    b'2 r8 cis,16 d  e16 d cis d |
    a'2 r8 cis,16 d  e16 d cis d |
    a'8 g16 g~ g8 fis  e4. r8 |
    b'8 a16 a~ a8 g fis4. r8 |
    g8 fis g b, cis4 fis8 fis |
    e8 d d2. || 

    \alternative {
      \volta 1 {
        R1*4
      }
      \volta 2 {
        R1*2 r2
      }
    }
  }
  \bar "|."
}



bd = \once \override LyricText.self-alignment-X = #-0.72

lyricstext = \lyricmode {
  風 吹 青 草  溪 間 謳 歌  呼 叫 我
  沉 沒 在 湖 底 深 淵 的 黑 暗 \bd 裏，
  將 心 解 放 是 祢 麼？

  光 陰 怱 怱  心 感 空 虛  可 會 愛？
  在 那 黑 暗 \bd 前，  或 那 天 亮 \bd 時，
  心 中 長 住  是 祢 麼？

  不 惜 犧 牲  一 心 只 想  呼 叫 我
  容 讓 我 何 種  不 \bd 羈、 逼 \bd 迫、 放 縱
  甘 心 親 我  是 祢 麼？

  悲 歡 得 失 很 多  此 生 可 有 \bd 愛？
  若 我 心 悦 \bd 時， 若 我 不 幸 時  有 \bd 祢， 
  我 沒 有 枉 \bd 過！

  讓 我 堅 信 覓 更 \bd 深，
  讓 愛 充 滿 未 怕 \bd 辛，
  助 我 誇 過 自 我  不 怕 過  駭 \bd 浪、 洪 \bd 濤、 險 惡

  邁 向 真 理 是 救 \bd 恩，
  盛 載 歡 慶 如 重 \bd 生，
  讓 我 依 靠 着 祢 的 聖 子 救 \bd 贖，  畢 生 的 仰 \bd 望，
  有 日 與 榮 耀 歸 於 天 國 \bd 裏。
}

chordNames = \chordmode {
  \time 4/4
  \key d \major
  \partial 2 s2
  % f1 | c | bes | c |
  % bes2 c | f1 | bes2 c | f1 |
  g2 a2/g | d2/fis b2:m | e2:m7 a2:sus4 | d2:sus4 d2 |
  d2 a2/cis | b2:m d2/a | g2 d2/fis | e2:m7 a2 |
  d2 a2/cis | b2:m d2/a | g2 d2/fis | e2:m7 a2 |
  d2 a2/cis | b2:m d2/a | g2 d2/fis | e2:m7 a2 |
  d2 a2/cis | b2:m d2/a | g2 d2/fis | e2:m7 a2 |
  s2. |
  g2 a2 | fis2:m b2:m | e2:m7 a2 | d2 d2:7 |
  g2 a2 | fis2:m b2 | e2:m7 a2 | fis2:m7 b2 |
  e2:m7 a2 | d1 |
  
  d2 a2/cis | b2:m d2/a | g2 d2/fis | e2:m7 a2 |
  
  % 2nd ending
  g2 a2:7 | d1 |
}

\score {
  <<
    \new ChordNames \with {
      \override ChordName.font-size = #0.75
    } {
      \chordNames
    }
    \new JianpuStaff \with {
      \override VerticalAxisGroup.default-staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 0)
         (padding . 0.4))
      fontSize = #-2
      \override StaffSymbol.staff-space = #(magstep -1.7)
      %\override Flag.staff-space = #(magstep -2)
      %\override Flag.color = red
      %\flagStyleStacked
    }{
      \jianpuMusic { \jianpuMelody }
    }

    \new Staff {
      \new Voice = "melody" {
        \melody
      }
    }
    \new Lyrics \lyricsto "melody" { \lyricstext }
  >>
  \layout {
  }
  \midi {
  }
}