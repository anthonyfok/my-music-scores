\version "2.24"

\header {
  title = "瑤族舞曲"
  instrument = "高音笙、中音笙"
  composer = "劉鐵山、茅沅 曲"
  arranger = "彭修文 編配"
}

global = {
  % Prevent bar numbers at the end of a line and permit them elsewhere
  \override Score.BarNumber.break-visibility = #end-of-line-invisible
  \set Score.barNumberVisibility = #(every-nth-bar-number-visible 5)

  % Draw a box round the following bar number(s)
  \override Score.BarNumber.stencil
    = #(make-stencil-boxer 0.1 0.25 ly:text-interface::print)

  % Place bar numbers above tempo marks, etc.
  \override Score.BarNumber.outside-staff-priority = #2000

  \key c \minor
  %\override Staff.TimeSignature #'style = #'()
  \time 2/4
  \tempo "Andante"
}

showBarNumberOnce = \once \set Score.barNumberVisibility = #all-bar-numbers-visible

sopranoSheng = \relative c' {
  \global
  \set Score.skipBars = ##t
  R2*8 |
  \repeat volta 2 {
    R2*8 |
  }
  R2*7 |
  \showBarNumberOnce % Bar 24
  r8\mf\< f( g bes) |
  \repeat volta 2 {
    c8\((\f g') g( c,) | f4. es8\) | d8\( f es d | c8.\> bes16 g4\!\) |
    c8.\(\< d16 es8 f\! | g8. bes16 g8 f | es8 f16 g f8 es | c4.\>\) r8\! |
    
    <es, bes'>8\mf <es bes'>16(\cresc <f c'> <bes es>8 <g c>) |
    <bes es>8 <bes es>16( <c f> <es g>8 <f bes>) |
    <es g>8 <es g>16( <f bes>) <c f>8 <es g>16( <f bes>) |
    <es g>4.\< r8\! |
    
    <es, g c>2\f | <f bes c>2 |
    <g bes>2^\markup { \italic "2nd time rit." } | <es g c>4. r8 |
  }

  \set Score.currentBarNumber = #57
  \showBarNumberOnce % Bar 57
  \tempo "Allegro non troppo"
  R2*8 |
  <c' es f>2\mf ~ | <c es f> | <g bes c>2 ~ | <g bes c> |
  <c es f>2 ~ | <c es f> | <g bes c>2 ~ | <g bes c>4. r8 |
  
  c2\mf( ~ | c4 g8 bes) | c2( ~ | c4 g8 bes) |
  c8( c bes c | es f g4 | f4 es8 d | c4) <c es g>8\ff r |
  
  \repeat volta 2 {
    <c es g>8 <c es g> <c es g>16 <c es g> <c es g> <c es g> |
    <c es g>8 <c es g> <c es g> <c es g> |
    <c es g>8 <c es g> <c es g>16 <c es g> <c es g> <c es g> |
    <c es g>8 <c es g> <c es g> <c es g> |
    
    <bes es g>8 <bes es g>16 <bes es g>  <bes es g>8 <bes es g>16 <bes es g> |
    <bes es g>8 <bes es g> <c es g>4 |
    <as c f>8 <as c f>16 <as c f>  <g c es>8 <g c es>16 <g c es> |
    \alternative {
      \volta 1 {
        r8 <es g c> <es g c> r |
        <f c' es>2\mf ~ <f c' es>\f | <c g' bes>2\mf ~ <c g' bes>\f |
        <f c' es>2\mf ~ <f c' es>\f | <c g' bes>2\mf ~ <c g' bes>\f |
      }
      \volta 2 {
        \set Score.currentBarNumber = #104
        r8 <es g c> <es g c> r |
      }
    }
  }
  R2*8 |
  R2\fermata |
  \bar "||"
  
  \key c \major
  \time 3/4
  
  \showBarNumberOnce
  <c' e>4 <c e>2 | <a c>4 <a c>2 | <g c>4 <c e>2 | <c e>8 <c e> <g c>2 |
  a4\< c c | e4\mf a,8( e' a, e') | d4. c8(\> d[ c]) | a2.\mp |
  
  \repeat volta 2 {
    R2.*8^\markup { \hspace #10 \italic rit. } |
  }
  
  \set Score.currentBarNumber = #131 % Should be 130, but hand-written score says 131
  \repeat volta 2 {
    a4-!^\markup { 第一次 \dynamic f 第二次 \dynamic mp } <c e>8.-! <a d>16-! <c e>4-! | a4-! <c e>8.-! <a d>16-! <c e>4-! |
    <a d>8.-! <c e>16-! <a d>8-! <g c>-! <e a>-! <d g>-! | <e a>2. |
    <a d>8.-! <c e>16-! <a d>8-! <g c>-! <e a>-! <d g>-! | <c e>2. |
    <a' d>8.-! <c e>16-! <a d>8-! <g c>-! <e a>-! <d g>-! |
    \showBarNumberOnce
    <c c'>2. |
  }
  R2.*16 |
  <g' c e>2.\f | <g a d>2. |<e a c>2. | <g b d>2.\< |
  <a e'>4\! <g e'> <a e'> | <g c>4 <g b> <a c> | <a c>2 <e a>4 | <c e g c>2.\ff |
  R2.*4^\markup { \hspace #10 \fermata } |
  \bar "||"
  
  \key c \minor
  \time 2/4
  
  c8( g') g( c,) | f4. es8 | d8\( f es d | c8. bes16 g4\) |
  c8.\( d16 es8 f | g8. bes16 g8 f | es8 f16 g f8 es | c4.\) r8 |
  
  <es bes'>8 <es bes'>16( <f c'> <bes es>8 <g c>) |
  <bes es>8 <bes es>16( <c f> <es g>8 <f bes>) |
  <es g>8 <es g>16( <f bes>) <c f>8 <es g>16( <f bes>) |
  <es g>4.\< r8\! |
  
  <es, g c>2\f | <f bes c>2 |
  <g bes>2
  <es g c>4. r8\fermata
  \bar "||"
  
  \showBarNumberOnce
  \tempo "Allegro con brio"
  c'2 ~ | c4 g8( bes) | c2 ~ | c4 g8( bes) |
  c8 c( bes c | es f g4) | f4( es8 d | c4) <c es g>8\ff r |

  \repeat volta 2 {
    <c es g>8\f <c es g> <c es g>16 <c es g> <c es g> <c es g> |
    <c es g>8 <c es g> <c es g> <c es g> |
    <c es g>8 <c es g> <c es g>16 <c es g> <c es g> <c es g> |
    <c es g>8 <c es g> <c es g> <c es g> |
    
    <bes es g>8-> <bes es g>16 <bes es g>  <bes es g>8 <bes es g>16 <bes es g> |
    <bes es g>8 <bes es g> <c es g>4 |
    \alternative {
      \volta 1 {
        <as c f>8 <as c f>16 <as c f>  <g c es>8 <g c es>16 <g c es> |
        r8 <es g c> <es g c> r |
        <f c' es>2\mf ~ <f c' es>\f | <c g' bes>2\mf ~ <c g' bes>\f |
        <f c' es>2\mf ~ <f c' es>\f | <c g' bes>2\mf ~ <c g' bes>\f |
      }
      \volta 2 {
        \set Score.currentBarNumber = #213
        \showBarNumberOnce
        <as' c f>8 <as c f>16 <as c f>  <g c es>8 <g c es>16 <g c es> |
        <es g c>8 <es g c> <es g c> <es g c> |
      }
    }
  }
  <es g c>16 <es g c> <es g c> <es g c> <es g c>8 <es g c> |
  R2 |
  r8 <es g c>4-> <es g c>8 |
  <es g bes>8 <es g bes> <es g bes>16 <es g bes> <es g bes> <es g bes> |
  <es g c>8 <es g c> <es g c> <es g c> |
  R2
  r8 <es g c>4 <es g c>8 |
  <c es f>8\mp <c es f> <c es f> <c es f> |
  <c es f>8 <c es f> <c es f> <c es f> |
  <c es f>8\< <c es f> <c es f> <c es f> |
  <c es f>8 <c es f> <c es f> <c es f> |
  <c' es f>8\f <c es f> <c es f> <c es f> |
  <c es f>8 <c es f> <c es f> <c es f> |
  <c es f>8 <c es f> <c es f> <c es f> |
  <c es f>8 <c es f> <c es f> <c es f> |
  <as c f>2 ~ | <as c f> ~ | <as c f> ~ | <as c f> |
  <bes es g>8 r r4 |
  R2 |
  <es, g c>8->\f r r4 |
  <es g c>8-> r r4 |
  <es g c>8-> r r4 |
  <es g c>8-> r r4 |
  <es g c>8 r <es g c>8 r |
  <es g c>8 r <es g c>8 r |
  <es g c>8\f r <es g c>8 r |
  <es g c>8 r <es g c>8 r |
  <es g c>8 <es g c>4 <es g c>8 |
  <es g c>4^\markup { \italic rit. } <es g c> |
  <es g c>2->\ff |
  <f as c>2-> |
  <g bes c es>2 |
  <f g bes d>2\fp\<^\markup { \hspace #3.5 \fermata } |
  <es g bes c>2\ff\fermata |
  <es g bes c>8 r r4 |
  \bar "|."
}

altoSheng = \relative c' {
  \global
  % Music follows here.
  \set Score.skipBars = ##t
  R2*8 |
  \repeat volta 2 {
    R2*8 |
  }
  R2*7 |
  \once \set Score.barNumberVisibility = #all-bar-numbers-visible % Bar 24
  r8\mf\< f'( g bes) |
  \repeat volta 2 {
    c,\((\f g') g( c,) | f4. es8\) | d8\( f es d | c8.\> bes16 g4\!\) |
    c8.\(\< d16 es8 f\! | g8. bes16 g8 f | es8 f16 g f8 es | c4.\>\) r8\! |
    
    <es, bes'>2\mf\cresc ~ | <es bes'>4. <es bes'>8 |
    <es bes'>2 ~ | <es bes'>\< |
    
    <es g c>2\f | <f bes c>2 |
    <es es'>4(^\markup { \italic "2nd time rit." } <d d'>8) <bes bes'> |
    <c c'>4. r8 |
  }
  
  \set Score.currentBarNumber = #57
  \once \set Score.barNumberVisibility = #all-bar-numbers-visible % Bar 57
  \tempo "Allegro non troppo"
  c8-!\mf g'-! f16-! g-! f-! es-! | c8-! es-! c-! g-! |
  c8-! g'-! f16-! g-! f-! es-! | c8-! es-! c-! g-! |
  c8-! c16-! es-! f8-! f16-! es-! | f8-! bes-! g4-! |
  f8-! g16-! f-! es8-! f16-! es-! | c4. r8 |
  
  r8 c'16( es f8) r | r8 c16( es f8) r | r8 g,16( bes c8) r | r8 g16( bes c8) r |
  r8 c16( es f8) r | r8 c16( es f8) r | r8 g,16( bes c8) r | r8 g16( bes c8) r |
  
  c2\mf( ~ | c4 g8 bes) | c2( ~ | c4 g8 bes) |
  c8( c bes c | es f g4 | f4 es8 d | c4) <c es g>8\ff r |
  
  \repeat volta 2 {
    <c es g>8 <c es g> <c es g>16 <c es g> <c es g> <c es g> |
    <c es g>8 <c es g> <c es g> <c es g> |
    <c es g>8 <c es g> <c es g>16 <c es g> <c es g> <c es g> |
    <c es g>8 <c es g> <c es g> <c es g> |
    
    <bes es g>8 <bes es g>16 <bes es g>  <bes es g>8 <bes es g>16 <bes es g> |
    <bes es g>8 <bes es g> <c es g>4 |
    <as c f>8 <as c f>16 <as c f>  <g c es>8 <g c es>16 <g c es> |
    \alternative {
      \volta 1 {
        r8 <g c es> <g c es> r |
        <f c' es>2\mf ~ <f c' es>\f | <c g' bes>2\mf ~ <c g' bes>\f |
        <f c' es>2\mf ~ <f c' es>\f | <c g' bes>2\mf ~ <c g' bes>\f |
      }
      \volta 2 {
        \set Score.currentBarNumber = #104
        r8 <g' c es> <g c es> r |
      }
    }
  }
  R2*8 |
  <c, e g c>2\fermata\mf\> |
  \bar "||"
  
  \key c \major
  \time 3/4
  
  \showBarNumberOnce
  c'2.\! ~ | c ~ | c ~ | c |
  R2.*2 |
  <a d>2.\mf\> | <a e'>2.\mp
  
  \repeat volta 2 {
    R2.*8^\markup { \hspace #10 \italic rit. } |
  }

  \set Score.currentBarNumber = #131 % Should be 130, but hand-written score says 131
  \repeat volta 2 {
    R2.*8 |
  }
  \showBarNumberOnce
  e'4 e2 | c4 c2 | c4 e2 | e4 c2 |
  <<
    { a4( c-- c-- | e2. | d2 c4 | a2.) | }
    { s2\< s8.. s32\mf\> | s2. | s2.\! | s2. | }
  >>
  R2.*8 |
  <g c e>2.\f | <g a d>2. |<e a c>2. | <g b d>2.\< |
  <a e'>4\! <g e'> <a e'> | <g c>4 <g b> a | <a d>2 <a c>4 | <c, e g c>2.\ff |
  R2.*4^\markup { \hspace #10 \fermata } |
  \bar "||"
  
  \key c \minor
  \time 2/4
  
  R2*8
  
  <bes es bes'>2\mp ~ | <bes es bes'>4. <bes es bes'>8\mf |
  <bes es bes'>2 ~ | <bes es bes'> |
  <es g c>2\f | <f bes c>2 |
  <es es'>4( <d d'>8) <bes bes'> |
  <c c'>4. r8\fermata |
  \bar "||"
  
  \tempo "Allegro con brio"
  c'2\mf ~ | c4 g8( bes) | c2 ~ | c4 g8( bes) |
  c8 c( bes c | es f g4) | f4( es8 d | c4) <c es g>8\ff r |

  \repeat volta 2 {
    <c es g>8\f <c es g> <c es g>16 <c es g> <c es g> <c es g> |
    <c es g>8 <c es g> <c es g> <c es g> |
    <c es g>8 <c es g> <c es g>16 <c es g> <c es g> <c es g> |
    <c es g>8 <c es g> <c es g> <c es g> |
    
    <bes es g>8-> <bes es g>16 <bes es g>  <bes es g>8 <bes es g>16 <bes es g> |
    <bes es g>8 <bes es g> <c es g>4 |
    \alternative {
      \volta 1 {
        <as c f>8 <as c f>16 <as c f>  <g c es>8 <g c es>16 <g c es> |
        r8 <g c es> <g c es> r |
        % Differs from 高音笙
        <es c' es>2\mf ~ <es c' es>\f | <c g' bes>2\mf ~ <c g' bes>\f |
        <es c' es>2\mf ~ <es c' es>\f | <c g' bes>2\mf ~ <c g' bes>\f |
      }
      \volta 2 {
        <as' c f>8 <as c f>16 <as c f>  <g c es>8 <g c es>16 <g c es> |
        <c es g>8\f <c es g> <c es g> <c es g> |
      }
    }
  }
  <c es g>16 <c es g> <c es g> <c es g> <c es g>8 <c es g> |
  <c, es g>8 <c es g> <c es g> <c es g> |
  r8 <c es g> <c es g> r |
  <bes' es g>8 <bes es g> <bes es g> <bes es g>16 <bes es g> |
  <c es g>8 <c es g> <c es g> <c es g> |
  <bes, es g>8 <bes es g> <bes es g> <bes es g> |
  r8 <c es g>4 <c es g>8 |
  R2*4 |
  <c' es f>8\f <c es f> <c es f> <c es f> |
  <c es f>8 <c es f> <c es f> <c es f> |
  <c es f>8 <c es f> <c es f> <c es f> |
  <c es f>8 <c es f> <c es f> <c es f> |
  <as c f>8 <as c f>4 <as c f>8 ~ |
  <as c f>8 <as c f>4 <as c f>8 ~ |
  <as c f>8 <as c f>4 <as c f>8 ~ |
  <as c f>8 <as c f>4 <as c f>8 |
  <c es g>8 r r4 |
  R2 |
  <es, g c>8->\f r r4 |
  <es g c>8-> r r4 |
  <es g c>8 r r4 |
  <es g c>8 r r4 |
  <es g c>8\mf r <es g c>8 r |
  <es g c>8 r <es g c>8 r |
  <es g c>8\f r <es g c>8 r |
  <es g c>8 r <es g c>8 r |
  <es g c>8 <es g c>4 <es g c>8 |
  <es g c>4 <es g c> |
  <es g c>2->\ff |
  <f as c>2-> |
  <g bes c es>2 |
  <f g bes d>2\fp\<^\markup { \hspace #3.5 \fermata } |
  <c es g c>2\ff\fermata |
  <c es g c>8 r r4 |
  \bar "|."
}

sopranoShengPart = \new Staff \with {
  instrumentName = "高音笙"
  midiInstrument = "oboe"
} \sopranoSheng

altoShengPart = \new Staff \with {
  instrumentName = "中音笙"
  midiInstrument = "flute"
} \altoSheng

\score {
  <<
    \sopranoShengPart
    \altoShengPart
  >>
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 72 4)
    }
  }
}
