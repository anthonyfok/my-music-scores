\version "2.18.0"

\header {
  title = "上主乃吾人勇力"
  composer = "曲：佚名"
  arranger = "編曲：蔡詩亞 1990"
  poet = "詞：陳鈞潤 1976"
  % Remove default LilyPond tagline
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
  top-margin = 0.65\in
  left-margin = 0.9\in
  right-margin = 0.75\in
  bottom-margin = 0.5\in
}

global = {
  \key d \minor
  \numericTimeSignature
  \time 2/4
  \tempo "Vigoroso"
}

melody = \relative c'' {
  \global
  % Music follows here.
  \autoBeamOff
  
  \repeat volta 4 {
    d,4 a' | g4 d8. d16 | f8 d4 r8 | c8 a c[ d] |
  }
  \alternative {
    { d2~ | d4 r4 \bar "||" }
    { d2~ | d4\fermata r4^\markup { \italic Fine } | }
  }
  \break
  \bar ".|:-||"

  \repeat volta 2 {
    a'4 c | d4 d8 c | d8. c16 d8. c16 | d8 d4 c8 |
    d8. c16 d8. c16 |
  }
  \alternative {
    { a8 a4.~ | a4 r | }
    { a8 a4.~ | a4 r \bar "||" }
  }
}

fpa = \once \override LyricText #'self-alignment-X = #-0.72

verseOne = \lyricmode {
  \set stanza = "(重唱)"
  上 主 乃 吾 人 勇 \fpa 力、 救 \fpa 援、 磐 石。

  石。
  
  \set stanza = "1."
  導 我 等 走 上 通 住 公 正 之 \fpa 方， 教 給 我 真 理 大 道；
}

verseOneB = \lyricmode {
  _
  _ _ _ _ _ _ _ _ _ _ _
  示 我 等 堅 奮 掙 扎 將 有 功 \fpa 勳， 刺 激 我 一 往 "" "" 直 前。
}

verseTwo = \lyricmode {
  _
  _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "2."
  用 爾 光 普 照 驅 散 今 世 陰 \fpa 影， 帶 給 了 普 世 耀 亮；
}

verseTwoB = \lyricmode {
  _
  _ _ _ _ _ _ _ _ _ _ _
  令 我 雖 走 過 恐 怖 死 暗 幽 \fpa 谷， 也 不 會 感 到 "" "" 徬 徨。
}

verseThree = \lyricmode {
  _
  _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "3."
  賴 信 心 可 以 鏟 去 一 切 荊 \fpa 棘， 靠 主 你 給 我 助 力；
}

verseThreeB = \lyricmode {
  _
  _ _ _ _ _ _ _ _ _ _ _
  窮 困 者 主 會 指 引 蹊 徑 康 \fpa 莊， 我 主 必 慷 慨 "" "" 護 佑。
}

verseFour = \lyricmode {
  _
  _ _ _ _ _ _ _ _ _ _ _
  \set stanza = "4."
  頌 我 主 真 乃 黑 暗 中 的 真 \fpa 光， 我 等 救 主 與 力 量；
}

verseFourB = \lyricmode {
  _
  _ _ _ _ _ _ _ _ _ _ _
  令 我 等 一 世 居 處 安 泰 之 \fpa 中， 永 堅 信 主 你 "" "" 扶 持。
}

rightOne = \relative c'' {
  \global
  % Music follows here.  
  \repeat volta 4 {
    a2 | g4 d | f8 d4. | c4. d8~ |
  }
  \alternative {
    { d2~ | d8 e f g | }
    { d2~ | d2\fermata | }
  }
  
  \repeat volta 2 {
    a'2 | d2~ | d2~ | d2~ | d2 |
  }
  \alternative {
    { a2~ | a4 g | }
    { a2~ | a2 | }
  }
}

rightTwo = \relative c' {
  \global
  % Music follows here.
  \repeat volta 4 {
    d2~ | d8 c bes4 | c4 bes | a2 |
  }
  \alternative {
    { bes2 | a2 | }
    { bes4 a~ | a2 | }
  }
  
  \repeat volta 2 {
    c4 f8 e | d4 bes'8 a | g4 f | e2 | f2 |
  }
  \alternative {
    { e4 f8 e | d2 | }
    { e4 f8 e | f4 cis | }
  }
}

leftOne = \relative c {
  \global

  \repeat volta 4 {
    f2~ | f2~ | f4 g~ | g4 f |
  }
  \alternative {
    { g2 | f2 | }
    { g2 | fis8 e fis4\fermata | }
  }
  
  \repeat volta 2 {
    f2~ | f2 | bes2~ | bes4 c8 bes | a4 bes |
  }
  \alternative {
    { c2 | f,2 | }
    { c'2 | a4 g | }
  }
}

leftTwo = \relative c {
  \global
  \repeat volta 4 {
    d4 c | bes2 | a4 g | a2 |
  }
  \alternative {
    { g8 a bes c | d4 c | }
    { g8 bes d4~ | d2\fermata | }
  }
  
  \repeat volta 2 {
    f,2 | bes2~ | bes2 | g'2 | f2 |
  }
  \alternative {
    { c2 | d4 bes | }
    { c2 | d4 e | }
  }
}

%%%

melodyRefrain = \relative c'' {
  d,4 a' | g4 d8. d16 | f8 d4 r8 | c8 a c[ d] |
  d2~ | d4 r4 \bar "||"
}
melodyVerses = \relative c' {
  \repeat volta 2 {
    a'4 c | d4 d8 c | d8. c16 d8. c16 | d8 d4 c8 |
    d8. c16 d8. c16 |
  }
  \alternative {
    { a8 a4.~ | a4 r | }
    { a8 a4.~ | a4 r \bar "||" }
  }
}


rightOneRefrainA = \relative c'' {
  a2 | g4 d | f8 d4. | c4. d8~ | d2~ | d8 e f g |
}
rightOneRefrainB = \relative c'' {
  a2 | g4 d | f8 d4. | c4. d8~ | d2~ | d2\fermata |
}
rightOneVerses = \relative c' {
  \repeat volta 2 {
    a'2 | d2~ | d2~ | d2~ | d2 |
  }
  \alternative {
    { a2~ | a4 g | }
    { a2~ | a2 | }
  }
}

rightTwoRefrainA = \relative c' {
  d2~ | d8 c bes4 | c4 bes | a2 | bes2 | a2 |
}
rightTwoRefrainB = \relative c' {
  d2~ | d8 c bes4 | c4 bes | a2 | bes4 a~ | a2 |
}
rightTwoVerses = \relative c' {
  \repeat volta 2 {
    c4 f8 e | d4 bes'8 a | g4 f | e2 | f2 |
  }
  \alternative {
    { e4 f8 e | d2 | }
    { e4 f8 e | f4 cis | }
  }
}


leftOneRefrainA = \relative c {
  f2~ | f2~ | f4 g~ | g4 f | g2 | f2 |
}
leftOneRefrainB = \relative c {
  f2~ | f2~ | f4 g~ | g4 f | g2 | fis8 e fis4\fermata |
}
leftOneVerses = \relative c {
  \repeat volta 2 {
    f2~ | f2 | bes2~ | bes4 c8 bes | a4 bes |
  }
  \alternative {
    { c2 | f,2 | }
    { c'2 | a4 g | }
  }
}


leftTwoRefrainA = \relative c {
  d4 c | bes2 | a4 g | a2 | g8 a bes c | d4 c |
}
leftTwoRefrainB = \relative c {
  d4 c | bes2 | a4 g | a2 | g8 bes d4~ | d2\fermata |
}
leftTwoVerses = \relative c {
  \repeat volta 2 {
    f,2 | bes2~ | bes2 | g'2 | f2 |
  }
  \alternative {
    { c2 | d4 bes | }
    { c2 | d4 e | }
  }
}


%%%


leadSheetPart = \new Staff { \melody }
\addlyrics { \verseOne }
\addlyrics { \verseOneB }
\addlyrics { \verseTwo }
\addlyrics { \verseTwoB }
\addlyrics { \verseThree }
\addlyrics { \verseThreeB }
\addlyrics { \verseFour }
\addlyrics { \verseFourB }

organPart = \new PianoStaff <<
  \new Staff = "right" \with {
    midiInstrument = "church organ"
  } << \rightOne \\ \rightTwo >>
  \new Staff = "left" \with {
    midiInstrument = "church organ"
  } { \clef bass << \leftOne \\ \leftTwo >> }
>>

leadSheetPartMidi = \new Staff {
  \repeat unfold 4 {
    \melodyRefrain \melodyVerses
  }
  \melodyRefrain
}

organPartMidi = \new PianoStaff <<
  \new Staff = "right" \with {
    midiInstrument = "church organ"
  } {
    \global {
      <<
        {
          \repeat unfold 4 {
            \rightOneRefrainA \rightOneVerses
          }
          \rightOneRefrainB
        }
        \\
        {
          \repeat unfold 4 {
            \rightTwoRefrainA \rightTwoVerses
          }
          \rightTwoRefrainB
        }
      >>
    }
  }
  \new Staff = "left" \with {
    midiInstrument = "church organ"
  } {
    \clef bass \global {
      <<
        {
          \repeat unfold 4 {
            \leftOneRefrainA \leftOneVerses
          }
          \leftOneRefrainB
        }
        \\
        {
          \repeat unfold 4 {
            \leftTwoRefrainA \leftTwoVerses
          }
          \leftTwoRefrainB
        }
      >>  
    }
  }
>>

\score {
  <<
    \leadSheetPart
    \organPart
  >>
  \layout {
    indent = #0
  }
}

\score {
  \unfoldRepeats
  <<
    \leadSheetPartMidi
    \organPartMidi
  >>
  \midi {
    \tempo 4=80
  }
}
