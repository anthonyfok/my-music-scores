\version "2.24.3"

\header {
  title = "鹽與光"
  composer = "湛灝思 Cecilia Cham"
  poet = "Cecilia Leung, Francis Chow"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key f \major
  \time 4/4
  \partial 8
}

chordNames = \chordmode {
  \global
  % Chords follow here. 
  
}

melody = \relative c' {
  \global
  % Music follows here.
  s8
  s1*7
  r2..
    c16 c |
  f8 f f e16 f~f4 r8 c16 c |
  g'8 g g f16 g~g4 r8 c,16 c |
  a'8. a16 a8 a \tuplet 3/2 { a4 bes c } |
  f,2 r8 f e f |
  d2 r8 f e f |
  c2 r8 f e f |
  b,4. g'8 g8. f16 f8 a |
  g2. r8
  
    c,16 c |
  f8 f f g16 f~f4 r8 c16 c |
  g'8 g g f16 g~g4 r8 c,16 c |
  a'8. a16 a8 a \tuplet 3/2 { a4 bes c } |
  c2 r8 c bes a |
  bes4 f8 f r8 c' bes g |
  a4 g8 a f f e f |
  d4. g8 g8. f16 f8 e |
  f2 r4
  
    c8 f |
  a2 r8 c,16 c c8 f |
  a2. r8 c,16 f |
  bes8 a16 bes~ bes8 a bes a g f |
  g a~ a4 r8 f e f |
  d2 r8 f e f |
  c2. r8 c16 c |
  bes'8 a16 bes~ bes8 a \tuplet 3/2 { bes4 c d } |
  c2 r4

    c,8 f |
  a2 r8 c,16 c c8 f |
  a2. r8 c,16 f |
  bes8 a16 bes~ bes8 a bes a g f |
  g a~ a4 r8 f e f |
  d2 r8 f e f |
  c'2. r8 c16 c |
  bes8 a16 bes~ bes8 a \tuplet 3/2 { bes4 a f } |
  f2 r4

}

bd = \once \override LyricText.self-alignment-X = #-0.72

verse = \lyricmode {
  % Lyrics follow here.
  求 能 滿 載 信 望 \bd 愛，
  求 能 拋 開 心 裏 \bd 哀，
  求 能 不 惜 犧 牲 奉 獻 將 \bd 來。

  我 願 發 \bd 亮， 這 路 縱 \bd 長， 照 耀 旅 \bd 途， 福 音 與 你 分 \bd 享。

  常 懷 勇 氣 與 謙 \bd 遜， 常 懷 歡 欣 不 歎 \bd 息， 常 懷 堅 忍 的 心 面 對 艱 \bd 辛。
  所 有 是 主 賜 \bd 與， 主 愛 常 在 我 心 \bd 裏， 縱 遇 障 \bd 礙， 基 督 與 我 共 \bd 去。

  求 我 可 成 為 鹽 與 \bd 光， 傳 送 愛 念 到 達 各 地 光 照 四 \bd 方。
  我 願 我 能 驅 散 黑 \bd 暗， 完 全 彰 顯 基 督 以 愛 解 \bd 困。

  而 你 可 成 為 鹽 與 \bd 光， 傳 送 愛 念 到 達 各 地 光 照 四 \bd 方，
  你 若 去 尋 世 上 最 \bd 真， 只 需 信 賴 基 督 照 耀 人 \bd 群。

  你 若 去 \bd 尋， 世 上 最 \bd 真， 只 需 信 賴 基 督 繼 續 前 \bd 行。
}

right = \relative c'' {
  \global
  % Music follows here.
  c8 |
  f8 f f e16 f16~4 r8 c8 | 
  f8 f f e16 f16~4 r8 c8 |
  f8 f f e16 f16~8 <g bes,> <a c,> <bes d,> |
  %\time 2/4
  <c e,>2
  %\time 4/4
  %bes8. c16 a8. bes16 
  <bes g>16 es, f <c' a>
  <a f> d, es <bes' g>
  <g es> c, d <a' f>
  <f d> bes, c <g' es>
  <es c> as, bes <f' d>
  <d bes> ges, aes <es' c>
  <c as> es, f <d' bes>
  <bes g> des, es <c' as>
  
  <g d bes>2
  %<<{f,16 g bes d} \\ f,4>> <<{bes16 d f g} \\ bes,4>>
  %<<{f'16 g bes d} \\ f,4>> <<{bes16 d f g} \\ bes,4>>
  %<<{f'16 g bes d} \\ f,4>> <<{bes16 d f g} \\ bes,4>>
  <<{f,32 g bes d} \\ f,8>> <<{bes32 d f g} \\ bes,8>>
  <<{f'32 g bes d} \\ f,8>> <<{bes32 d f g} \\ bes,8>>
  \ottava #1
  <<{f'32 g bes d} \\ f,8>> <<{bes32 d f g} \\ bes,8>>
  <d' bes>4\fermata
  %f'4 bes d2
  \ottava #0

  e,,,2. r4
  
  % Main
  s1*31
  
  
  r2 r4 r8


    \voiceOne c'8 |
  f8 f f e16 f16~4 r8 c8 | 
  f8 f f e16 f16~4 r8 c8 |
  f8 f f e16 f16~8 <g e> <a f> <bes g> |
  %\time 2/4
  <c as>2
  %\time 4/4
  %bes8. c16 a8. bes16 
  
  <bes es,>4 <c f,>
  <<{g4 as} c,2>>
  <<{es4 f} as,2>>
  <<{des4 es} ges,2>>
  <c g>1
  %g16 f |
  
  \grace { g16 f } e2.

}

left = \relative c' {
  \global
  % Music follows here.
  r8
  <bes d f a>1\arpeggio |
  <a cis f a>\arpeggio |
  <g bes d f>1\arpeggio |
  %\time 2/4
  %R2 |
  %\time 4/4
  R1 |
  R1 |
  r2 c,2~ |
  c1
  c2. r4 |
  
  s1*32

  \autoChange \relative {
    \voiceTwo

  bes8 f' bes4~ bes8 d, f4 |
  a,8 f' a4~ a8 c, f4 |
  as,8 c f4 g,8 c f4 |

  \time 2/4
  as2
  
  \time 4/4

    \tuplet 3/2 { r8 bes c }
    \tuplet 3/2 { r8 as bes }
    \tuplet 3/2 { r8 g as }
    \tuplet 3/2 { r8 f g }
    \tuplet 3/2 { r8 es f }
    \tuplet 3/2 { r8 d es }
    \tuplet 3/2 { r8 ces des }
    \tuplet 3/2 { r8 as bes }
    g1
    c,1
  }
}

leadSheetPart = <<
  \new ChordNames \chordNames
  \new Staff { \melody }
  \addlyrics { \verse }
>>

pianoPart = \new PianoStaff \with {
  %instrumentName = "Piano"
  %shortInstrumentName = "Piano"
} <<
  \new Staff = "up" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "down" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \leadSheetPart
    \pianoPart
  >>
  \layout {
    \context {
      \Staff
      \RemoveAllEmptyStaves
      %\consists Keep_alive_together_engraver
    }
  }
  \midi {
    %\tempo 4=69
    \tempo 4 = 78
  }
}
