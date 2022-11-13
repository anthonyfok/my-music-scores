\version "2.22.2"

\include "articulate.ly"

\header {
  title = "天堂"
  subtitle = "（合唱）"
  composer = "腾格尔词曲"
  arranger = "（梦之旅合唱组合演唱）"
}

#(set-global-staff-size 16)

global = {
  \key c \major
  \time 4/4
}

tenorVoice = \relative c {
  \global
  \dynamicUp

  % Intro
  s1*2
  
  \repeat volta 2 {
  e8\fff g16 a b8 a~ a2~ | a r |
  e8 g16 a b8 a~ a2~ | a r |
  
  \break
  
  a,8 c16 d e8 d~ d2~ | d r |
  a16 a c d e8( d4.~ d8 \tuplet 3/2 { c16 d c }) | a2. r4 |
  
  %\repeat volta 2 {
    r2 r8 a' c8. e16 | g,8 a16( g) e8 e~ e2 |
    r2 r8 a, e'8. g16 | c,8 d16( c) a8 a~ a2 |
  
    a8 c16 d e8 d~ d2~ | d2. r4 |
    a16 a c d e8( d4.~ d8 \tuplet 3/2 { c16 d c } | a2) r |
  
    r1 | d8 d d d16 e f8. a16 a4 |
    e8 e e e16 g g8. a16 a4 |
    e8 e4.~ e4 r8 c16 d | a8 a~ a2. |
  
    a'8( e'16) e( d8) d~( d4~ d8 \tuplet 3/2 { c16 d c }) | a8 d16( c~ c8) c4.~ c4 |
    a16( c) d( e~ e8) e,8~ e4 r8 g16 a | d8( c16) a~ a8 a~ a2 |
  }
  \alternative {
    {
      s1*4
  
      e8 g16 a b8 a~ a2~ | a r |
      e8 g16 a b8 a~ a2~ | a r |
  
      a,8 c16 d e8 d~ d2~ | d1 |
      a16 a c d e( d8.~ d4~ d8 \tuplet 3/2 { c16 d c }) | a1 |
      \bar "||"
    }

    {
      d8 d d d16 e f8. a16 a4 |
      c,8 c c d16 e a,8. a16 a4 |
      e'8 e4. r2 | a,8 a4. r2 |
  
      a'8 e'16( d~ d8) d~( d4~ d8 \tuplet 3/2 { c16 d c }) | a8 d4( c8) c2 |
      a16( c) d( e~ e8) e,8~ e4 r8 g16 a | d16 (c16 a8~ a) a~ a2 |
      a8 a~ a a8~ a2 | a,1\mp~ | a2. r4 |
      \bar "|."
    }
  }
}

verseTenorVoice = \lyricmode {
  % Lyrics follow here.
  蓝 蓝 的 天 空， __ 清 清 的 湖 水， __
  绿 绿 的 草 原， 这 是 我 的 家 __ 吔。	
  
  咳 呼 依 呼 呀 拉 吔 __
  咳 呼 依 呼 呀 拉 吔 __
  还 有 你 姑 娘， __ 这 是 我 的 家。 __ 
  
  哼 呀 来 左 嘿 哈 依 拉，
  哼 呀 来 左 嘿 哈 依 拉
  呼 唻 呼 依 呼 唻
  
  我 爱 你， __ 我 的 家， __ 我 的 家， __ 我 的 天 嗯 堂。 __
  
  蓝 蓝 的 天 空， __ 清 清 的 湖 水， __
  绿 绿 的 草 原， 这 是 我 的 家 __ 吔。 __
  
  嘿 呀 唻 左 哩 哈 依 拉
  嘿 呀 唻 左 哩 哈 依 拉
  呼 唻
  呼 唻
  我 爱 你， __ 我 的 家， __ 我 的 家， __ 我 的 天 堂。 __
  我 爱 你。 __ 呼 __
}

sopranoVoice = \relative c' {
  \global
  \dynamicUp
  % Music follows here.

  % Intro
  s1*2

  \repeat volta 2 {
  r2 e8\fff g16 a b8 a~ | a1 |
  r2 e8 g16 a b8 a~ | a1 |
  
  r2 r8 f( c' f, | c' d4 d,8~ d2) |
  r2 r8 c( e c | d e d e~ e2) |

  %\repeat volta 2 {
    e8 g16 a b8 a~ a2~ | a r |
    e8 g16 a b8 a~( a4~ a8 \tuplet 3/2 { g16 a g } | e1) |
  
    r2 r4 a8 c16 a | d8 c~ c2. |
    r1 | r8 a c8. e16 g,8 a16( g) e8 e |
  
    \break
    r2 r4 a8 e'~ | e d~( d2 ~ d8 \tuplet 3/2 { c16 d c }) | a8 d16( c~ c8) c~ c2 |
    a16( c) d( e~ e8) e,8~ e4 r8 g16 a | d8( c16 a~ a8) a~ a2 |
  
    d,8 d d d16 e f8. a16 a4 | e8 e e e16( g) g8. a16 a4 |
    c8 c4. \grace e,16( g8) g16 g~ g4 | c8 c4. a8 a16 a~ a4 |
    \bar "||"
  }
  \alternative {
    {
      % bridge
      r8 e' e a, g4. a16 b | a4 g8 e e2 |
      r8 d' d a d4 e8 g | e,4. g16 a \grace d16( c8) a~ a4 |
      \bar "||"

  
      r2 r4 c8 c | c16( a) a a a( g) g g g2 |
      r2 r4 e'8 e | e16( c) c c c( a) a a a2 |
  
      r2 d,8 f16 g a( g) f8 | r1 | r2 r8 c( e c | d e d e~ e2) |
    }
    {
      % volta 2
      a2. c8 d16( e) | e,2. g16 a a8 |
      d2 d16 d d8 d16( e) c( a) | a,2. e'8. a16 |
  
      d,8 d d d16 e f8. a16 a4 | e8 e e e16 g g8. a16 a4 |
      c8 c4. \grace e,16( g8) g16 g r8 g16 a | a16( g) e8~ e e~ e2 |
  
      a8 e'( d) d~ d2 | <e c>1\mp~ | <e c>2. r4 |
    }
  }
}

verseSopranoVoice = \lyricmode {
  % Lyrics follow here.
  蓝 蓝 的 天 空， __ 清 清 的 湖 水， __
  呣 __ 呣 __
  奔 驰 的 骏 马， __ 洁 白 的 羊 群， __
  还 有 你 姑 娘， __ 哈 哈 依 欧 呀 拉 哎
  我 爱 你， __ 我 的 家， __ 我 的 家， __ 我 的 天 堂。 __
  嘿 呀 来 作 俚 哈 依 拉
  嘿 呀 来 作 哈 依 拉
  呼 唻 呼 依 呀
  呼 唻 呼 依 喲
  
  _ _ _ _ _ _ _ _ _ _
  _ _ _ _ _ _ _ _ _ _ _
  
  呼 依 喲 呼 依 喲 呼 依 喲 __
  呼 依 喲 呼 依 喲 呼 依 喲 __
  绿 绿 的 草 原
  呣 __
  
  哈 __ 呼 依 哈 __ 呼 依 呀
  嘿 __ 呼 依 呀 哼 嘿 左 __ 呼 哈
  哼 呀 唻 左 哈 依 拉
  哼 呀 唻 左 哈 依 拉
  
  呼 唻 呼 依 呀 我 的 天 __ 堂。 __ 我 爱 你。 __ 呼 __
}

altoVoice = \relative c' {
  \global
  \dynamicUp

  % Intro
  s1*2

  % Music follows here.
  \repeat volta 2 {
  r1 | e8\fff g16 a b8 a~ a2 |
  r1 | e8 g16 a b8 a~ a2 |
  s1*4

  %\repeat volta 2 {
    s1*4
    r1 | r2 e8 g16 e a8 g~ | g2. r4 | s1 |
    s1 |
    s1*8 |
  }
  \alternative {
    { s1*4 | s1*4 | r1 | a8 c16 d c( a) a8~ a2 | s1*2 | }
    { s1*11 }
  }
}

verseAltoVoice = \lyricmode {
  % Lyrics follow here.
  蓝 蓝 的 天 空， __ 清 清 的 湖 水， __
  还 有 你 姑 娘， __
  绿 绿 的 草 原 __
}

right = \relative c {
  \global 
  % Music follows here.
  
  % Intro
  a16 e' a e b'8 e,	a,16 e' a e e'8 a, |
  a,16 e' a e b'8 e,	a,16 e' a e c'8 e, |
  
  \repeat volta 2 {
  % Start main
  r8 e\pp a e c' e, a e | r8 e a e c' e, a e | r8 e a e c' e, a e | r8 e a e c' e, a e |
  r8 f a f c' f, a f | r8 f a f c' f, a f | r8 g b g d' g, b g | r8 e a e c' e, a e |

  %\repeat volta 2 {
    r8 e a e c' e, a e | r8 e a e c' e, a e | r8 e a e c' e, a e | r8 e a e c' e, a e |
    r8 f a f c' f, a f | r8 f a f c' f, a f | r8 g b g d' g, b g | r8 e a e c' e, a e |
  
    r4 a,4 a a |
  
    r8 f' a f c' f, a f | r8 e a e c' e, a e | r8 g b g d' g, b g | r8 e a e c' e, a e |
    r8 f a f c' f, a f | r8 e a e c' e, a e | r8 g b g d' g, b g | r8 e a e c' e, a e |
  }
  \alternative {
    {
      % bridge
      r8 e a e c' e, a e | r8 e a e c' e, a e | r8 f a f c' f, a f | r8 e a e c' e, a e |
  
      r8 e a e c' e, a e | r8 e a e c' e, a e | r8 e a e c' e, a e | r8 e a e c' e, a e |
      r8 f a f c' f, a f | r8 f a f c' f, a f | r8 g b g d' g, b g | r8 e a e c' e, a e |
    }
    {
      % volta 2
      r8 f a f c' f, a f | r8 e a e c' e, a e | r8 g b g d' g, b g | r8 e a e c' e, a e |
      r8 f a f c' f, a f | r8 e a e c' e, a e | r8 g b g d' g, b g | r8 e a e c' e, a e |

      r8 f a f c' f, a f | r8 e a e c' e, a e | <e c'>2. r4 |
    }
  }
}

left = \relative c {
  \global
  % Music follows here.
  % a,8 a' e a  c e, a e | a,8 a' e a  c e, a e | a,8 a' e a  c e, a e | a,8 a' e a  c e, a e |

  % Intro
  <a a,>1\mf | <a a,> |

  % Start main
  \repeat volta 2 {
  <a a,> | <a a,> | <a a,> | <a a,> | <d d,> | <d d,> | <e e,> | <a, a,> |
  
  %\repeat volta 2 {
    <a a,>1 | <a a,> | <a a,> | <a a,> | <d d,> | <d d,> | <e e,> | <a, a,> |
  
    <a a,> |
    <d d,> | <a a,> | <e' e,> | <a, a,> |
    <d d,> | <a a,> | <e' e,> | <a, a,> |
  }
  \alternative {
    {
      % bridge
      <a a,> | <a a,> | <d d,> | <a a,> |
  
      <a a,>1 | <a a,> | <a a,> | <a a,> | <d d,> | <d d,> | <e e,> | <a, a,> |
    }
    {
      <d d,> | <a a,> | <e' e,> | <a, a,> |
      <d d,> | <a a,> | <e' e,> | <a, a,> |
  
      <d d,> | <a a,> | <a a,> |
    }
  }
}

tenorVoicePart = \new Staff \with {
  instrumentName = "男"
  %midiInstrument = "choir aahs"
  %midiInstrument = "french horn"
  midiInstrument = "recorder"
} { \clef "treble_8" \tenorVoice }
\addlyrics { \verseTenorVoice }

sopranoVoicePart = \new Staff \with {
  instrumentName = "女"
  %midiInstrument = "choir aahs"
  %midiInstrument = "recorder"
  midiInstrument = "flute"
} { \sopranoVoice }
\addlyrics { \verseSopranoVoice }

altoVoicePart = \new Staff \with {
  instrumentName = "女2"
  %midiInstrument = "choir aahs"
  %midiInstrument = "recorder"
  midiInstrument = "clarinet"
} { \altoVoice }
\addlyrics { \verseAltoVoice }

pianoPart = \new PianoStaff \with {
  %instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    %midiInstrument = "acoustic grand"
    midiInstrument = "acoustic guitar (nylon)"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
    %midiInstrument = "acoustic bass"
  } { \clef bass \left }
>>

\score {
  <<
    \tenorVoicePart
    \sopranoVoicePart
    \altoVoicePart
    \pianoPart
  >>
  \layout {
    \context {
      \RemoveEmptyStaffContext
    }
  }
}

\score {
  \unfoldRepeats
  \articulate
  <<
    \tenorVoicePart
    \sopranoVoicePart
    \altoVoicePart
    \pianoPart
  >>
  \midi {
    \tempo 4=66
  }
}
