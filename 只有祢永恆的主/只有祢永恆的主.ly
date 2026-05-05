\version "2.24.0"

\header {
  title = "只有祢永恆的主"
  tagline = ##f
}

global = {
  \key c \major
  \time 4/4
  %\tempo 4 = 67
    \tempo 4 = 72
  \autoBeamOff
}

harmony = \chordmode {
  % intro
  c1:maj7 | f1:maj7 | c1:maj9 | f1 |
  d2:m7 e2:7 | a4:min c4/g fis2:m7.5- |
  d2:m9 e2:m7 | as2/es bes4/f g4:7 |
  
  % main
  c1 | c1:maj7 | c1:7 | f1 |
  f1:m | c1 | d1:7 | g1:7 |
  c1 | c1:maj7 | c1:7 | f1 |
  f1:m | c1 | d2:m7 g2:7 | c2 c2:7 |
  f2 g2/f | e2:m7 a2:m7 | d2:m7 g2:sus4 | c2 c2:7 |
  f2 g2/f | e2:m7 a2:m7 | d1:m7 | g1:7 |

  c1 | f2. c4/e | d1:m7 | g2:sus4 g2:7 |
  c2. c4/e | f1 | d2:m7 g2:7 | c1 |

  % interlude
  c1:aug | c1:5.2 | c1:aug

  c1 | r2 d2:m | g1:7 | c1
}

melody = \relative c' {
  \global

  % Intro
  R1*8

  % 誰知心痛苦
  g8 e' e d16 e~ e4 r |
  g,8 e'~ \tuplet 3/2 { e8 e d } e4 r |
  g,8 e' e d16 e~ e4 \tuplet 3/2 { e8 f g } |
  g8. f16~ f2 r4 |
  % 只有你永恆的主
  g8 f16 f~ f4. c8 g f' |
  e2. c8 \acciaccatura { d16 } e8 |
  d4. d16[ c] a4 b8 c |
  e8( d16) d16~ d2 r4 |

  % 誰犧牲富足
  g,8 e' e d16 e~ e4 r |
  g,8 e'~ \tuplet 3/2 { e8 e d } e4 r |
  g,8 e' e16 e( d16) e~ e4 \tuplet 3/2 { e8 f g } |
  g8 f16 f16~ f2 r4 |
  % 只有你永恆的主
  g8 f16 f~ f4. c8 g f' |
  e2 r8 c d e |
  d2 b8. c16~ c8 d16[ c] |
  c2. r8

  % 人海中常失落
  c8 | a'8. a16~ a8 a d b4 a16 b |
  a8 g g a e16[ d] c4 d16 e |
  f4 f8 a16 g~ g4 g8[ a16] e~ |
  e2. r8
  % 求恩主啟迪
  c8 | a'8. a16~ a8 d( b) b4 a8 |
  g4 e16 d'8( c16) c4. c16 b |
  c8 a4 c16 b  c8 a a b16 c~ |
  c8 d~ d2 r8.

% \mark \markup \box "Chorus"
  g,16 | d'8 c c b16 c~ c4 \tuplet 3/2 { g8 g( e) } |
  b'4. c16[ a] a4. a8 |
  e'8 d d cis16 d~ d4 \tuplet 3/2 { d8 c a } |
  c4. b8 \acciaccatura bes8( b4) r8
  
  g8 | d'8 c c b16 c~ c4 r8 g |
  b4. c16[ a] a4. a8 |
  e'8. d16~ d8 a  b8. c16~ c8 d( |
  c8) c~ c2. |

  R1*3
  \bar "||"

%  c1^
%  \markup \italic "Last time to Coda" |

%  \mark \markup \box "Coda"
  r2 r4 r8 a8 |
  e'8. d16~ d8 c e d c a16 g~ |
  g4 r c2~ | c2 r2 |
  \bar "|."
}

bd = \once \override LyricText.self-alignment-X = #-0.72

verse = \lyricmode {
  誰 知 心 痛 \bd 苦， 誰 解 心 裏 \bd 憂，
  誰 可 於 這 刻 伴 我 身 邊 \bd 訴？
  只 有 你 永 恆 的 \bd 主， 每 一 刻 等 待 靜 聽 心 \bd 聲。

  誰 犧 牲 富 \bd 足， 誰 捨 尊 降 \bd 卑， 誰 於 漆 黑 中 讓 每 點 光 照 \bd 遍？
  只 有 你 永 恆 的 \bd 主， 帶 出 光 \bd 輝， 令 我 溫 \bd 暖。

  人 海 中 常 失 \bd 落， 每 天 感 到 壓 逼 苦 \bd 困， 還 願 你 每 天 也 記 \bd 念。
  求 恩 主 啟 \bd 迪， 使 我 能 知 \bd 道， 你 是 永 \bd 恆， 你 是 盼 \bd 望， 常 在 我 \bd 心。

  容 許 我 靠 近 \bd 你， 永 遠 沒 掛 \bd 慮， 容 許 我 愛 慕 \bd 你， 因 你 是 我 力 \bd 量，
  明 天 縱 有 幻 \bd 變， 求 你 引 \bd 導， 願 此 生 全 為 你 走 \bd 過。
  能 使 我 滿 足 只 有 \bd 你。
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##f
      \harmony
    }
    \new Staff {
      \clef treble
      \melody
    }
    \addlyrics { \verse }
  >>
  \layout {
    \context {
      \Lyrics
      \override LyricText.font-size = #2
      \override LyricText.font-name = #"Noto Serif CJK HK"
      % \override LyricText.font-name = #"Noto Serif HK SemiBold"
    }
  }
  \midi { }
}


