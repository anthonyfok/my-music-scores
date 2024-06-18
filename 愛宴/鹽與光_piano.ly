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
  r2.. c16 c
}

verse = \lyricmode {
  % Lyrics follow here.
  求 能
  
  %{ 滿 載 信 望 愛，
  求 能 拋 開 心 裏 哀，
  求能不惜犧牲奉獻將來。
我願發亮，這路縱長， 照耀旅途，福音與你分享。

常懷勇氣與謙遜，常懷歡欣不歎息， 常懷堅忍的心面對艱辛。
所有是主賜與，主愛常在我心裏，縱遇障礙，基督與我共去。

求我可成為鹽與光， 傳送愛念到達各地光照四方。
我願我能驅散黑暗， 完全彰顯基督以愛解困。

而你可成為鹽與光， 傳送愛念到達各地光照四方，
你若去尋世上最真， 只需信賴基督照耀人群，

你若去尋，世上最真， 只需信賴基督繼續前行
  %}
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
  <d bes> f, as <es' c>
  <c as> es, f <d' bes>
  <bes g> es, f <c' as>
  
  <g d bes>2
  %<<{f,16 g bes d} \\ f,4>> <<{bes16 d f g} \\ bes,4>>
  %<<{f'16 g bes d} \\ f,4>> <<{bes16 d f g} \\ bes,4>>
  %<<{f'16 g bes d} \\ f,4>> <<{bes16 d f g} \\ bes,4>>
  <<{f,32 g bes d} \\ f,8>> <<{bes32 d f g} \\ bes,8>>
  <<{f'32 g bes d} \\ f,8>> <<{bes32 d f g} \\ bes,8>>
  <<{f'32 g bes d} \\ f,8>> <<{bes32 d f g} \\ bes,8>>
  <d' bes>4
  %f'4 bes d2
  
  e,,,2.
  
  
}

left = \relative c' {
  \global
  % Music follows here.
  r8
  <bes d f a>1 |
  <a cis f a> |
  <g c d f>1 |
  %\time 2/4
  %R2 |
  %\time 4/4
  R1 |
  R1 |
  r2 c,2~ |
  c1
  c2.
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
