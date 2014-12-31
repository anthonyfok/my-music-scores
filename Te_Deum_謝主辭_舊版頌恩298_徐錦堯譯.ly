\version "2.18.2"

\header {
  title = "謝主辭"
  subtitle = "Te Deum"
  composer = "徐錦堯 譯"
  tagline = "舊版頌恩298"
}

\paper {
  #(set-paper-size "letter")
}

global = {
  \key c \major
  %\time 4/4
  \cadenzaOn
  \autoBeamOff
}

soprano = \relative c' {
  \global
  % Music follows here.
  e8 g[ a] a a a g a[ b] c b4( a) \bar "'"
  a8 a g a b a4 g \bar "||"
  
  c8 c c b a[ b] a a4 \bar "'"
  a8 a a a g a b a4 g \bar "||"
  
  c8 c c b a[ b] a4 \bar "'"
  a8 a a a g a b a4 g \bar "||"
}

alto = \relative c' {
  \global
  % Music follows here.
  
}

tenor = \relative c' {
  \global
  % Music follows here.
  
}

bass = \relative c {
  \global
  % Music follows here.
  
}

verse = \lyricmode {
  % Lyrics follow here.

%(領) 
上 主 天 主 我 們 讚 美 你，
%(全體)
讚 美 你 至 尊 天 主。
%(聖詠團)
普 世 萬 民 欽 敬 你，
無 始 無 終 永 恆 的 聖 父。

%(衆)
天 朝 九 品 天 神 高 呼
不 停 地 稱 頌 你。
聖哉，聖哉，
聖哉，皇皇上主萬軍的天主
上天下地充滿你的光榮，

充滿你的無窮尊烕。
聖父無限尊威的天主。 
可欽可敬的耶穌，
你的惟一真子，
天主聖神，
安慰世人的恩保。 

基督，你是榮耀的君王。
基督，
你是聖父的無始無終聖子。
你為拯救墮落的人類，
甘願屈尊就卑揀選
貞女為母。
你戰勝了死亡的苦痛，

為信仰你的人
重新開啓天門。
求你大發慈悲，
助佑曾以至尊寶血
所救贖的子民。

求使普世萬民列在
天朝神聖之中同享榮福。
懇求全能天主治理
我衆萬民，
奔赴永生天庭。

我等每日敬拜你，
每日感謝稱頌你。
求主佑我等今日免陷罪惡。

我主，
我們全心仰望你的仁慈，
求你對於我等廣施恩愛。 
(全體) 
上主天主我惟一的希望，
求你賜我永遠不受羞辱。
}

\score {
  \new PianoStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
    \new Staff \with {
      midiInstrument = "choir aahs"
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
  >>
  \layout { }
  \midi {
    \tempo 4=100
  }
}
