\version "2.18.2"

\header {
  title = "信心的等待"
  composer = "Julian Chan"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key a \major
  \time 4/4
  \partial 8
}

chordNames = \chordmode {
  \global
  % Chords follow here.
  s8
  a2 cis2:m/gis | fis2:m a2/e | d2 a2/cis | b2:m e2 |
  a2 e2/gis | g2 fis2 | d1 | b2:m e2:6 |
  a1 | a1 |
  
  a2 e2/gis | fis1:m | d2 e2 | a1 |
  d2 e2 | a4 e4/gis fis2:m |
  d2 e2 | a1 |
  
  fis2:m e2 | d4 e4 a2 |
  
  
}

melody = \relative c'' {
  \global
  % Music follows here.
  r8
  
  R1 * 9
  r2 r4 r8 e,,8 |
  cis'8 cis16 cis16~cis8 cis b8 cis e b ~ |
  b8 a4. r4 r8. a16 |
  fis'8 fis16 fis16~fis8 fis  fis8 e fis fis16 e16 ~ |
  e2 r4 r8. a,16 |
  fis'8 cis16 cis fis8 cis b8 cis4 e8 |
  cis8 e16 e, gis8 cis16 b ~ b8 cis4 r16 e, |
  
}

verse = \lyricmode {
  % Lyrics follow here.
  明 天 怎 麼 你 還 是 不 知 道 
  越 想 得 到 的 總 會 得 不 到
  人 生 就 像 一 片 雲 霧 
  出 現 少 時 就 不 見 到
  何 必 計 較 那 得 失 終 老 
  在 這 幽 谷 之 中 我 宣 告
  不 必 怕 因 有 你 同 在 
  別 人 笑 我 為 甚 麼 等 待 
  因 我 知 道 盼 望 因 你 而 來
  耶 穌 捉 緊 我 雙 手 有 你 的 恩 典 我 便 足 夠
  讓 我 可 清 心 見 你 面 使 我 必 得 見 光
  耶 穌 捉 緊 我 雙 手 仰 望 那 財 寶 在 天 上 
  愛 慕 神 的  抱 著 平 安
  感 謝 你 為 我 所 編 寫 的 一 切
  
  耶 穌 捉 緊 我 雙 手 有 你 的 恩 典 我 便 足 夠
  讓 我 可 清 心 見 你 面 使 我 必 得 見 光
  耶 穌 捉 緊 我 雙 手 仰 望 那 財 寶 在 天 上 
  愛 慕 神 的  抱 著 平 安
  感 謝 你 為 我 所 編 寫 的 一 切
}

right = \relative c'' {
  \global
  % Music follows here.
  e8 |
  cis'4. b8 cis4 a8 gis |
  b4 a8 gis8 a4. gis16 a |
  fis8 e d fis e8 a,4. |
  \grace { b16 bis cis } d8 cis fis, cis'  b4 \tuplet 3/2 { gis8 a b }
  % piano: cis4 a b gis
  
  % string
  cis4 cis' b gis | b4. cis8 ais2 |
  d8 cis a fis    d8 cis a e' |
  e8 d fis,2     cis'4 |
  a1 |
  a,8 e' b' cis  <b cis a'>4.\arpeggio r8 |
}

left = \relative c' {
  \global
  % Music follows here.
  
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
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    \leadSheetPart
    \pianoPart
  >>
  \layout { }
  \midi {
    \tempo 4=69
  }
}
