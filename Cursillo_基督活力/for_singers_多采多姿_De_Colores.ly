% Anthony Fok
% 2020-01-30 to 2020-02-01 in Edmonton

\version "2.24.0"
\include "../definition.ily"
\include "../mass-slides-mhocp.ily"
\include "../jianpu10a.ly"
%\include "articulate.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = \markup {
    \line {
      \larger\notoserifcjkhksemibold
      "多采多姿"
      \smaller
      " De Colores"
    }
  }
  %composer = "路 2:29–32"
  composer = \markup\notoserifcjkhksemibold 宋稚青譯詞

  % Remove default LilyPond tagline
  %tagline = ##f

  tagline = \markup {
    \pad-to-box #'(0 . 0) #'(0 . 3)
    \smaller
    {  \with-url

      "https://lilypond.org/"
      \line {
        \notoserifcjkhksemibold 多采多姿 •
        %% 2014 = em dash.

        #(format #f "Music engraving by LilyPond ~a~awww.lilypond.org"
           (lilypond-version)
           (ly:wide-char->utf-8 #x2014)
           )
        
        • AF
        • \date
        • Edmonton
      }
    }
  }

  %{
  copyright = \markup {
    \fill-line {
      ""
      \smaller\notoserifcjkhksemibold "af 2024-04-14" }
  }
  %}
}


% #(set-global-staff-size 22)
% #(set-global-staff-size 19)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  markup-system-spacing.padding = #3
  system-system-spacing.padding = #3.2
  ragged-bottom = ##f
  %ragged-last-bottom = ##f
  
  %print-first-page-number = ##t
}

global = {
  \key d \major
  \time 3/4
  \set Score.tempoHideNote = ##t
  %\tempo 4 = 150
  \tempo 4 = 180
  % \tempo "Moderato 中板"
}

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }

refrainSoprano = \relative c'' {
  % 「這是」啟示異邦的光明
  as8 f | bes4 g g8[( as]) bes8 bes | c4 es,2 f4 |
  g4 g as8 bes g bes | bes,4( c8[ d]) es2\fermata |
}

refrainSopranoAlt = \relative c'' {
  % 「為作」啟示異邦的光明
  g8 as | bes4 g g8[( as]) bes8 bes | c4 es,2 f4 |
  g4 g as8 bes g bes | bes,4( c8[ d]) es2\fermata
}

melody = \relative c'' {
  \global
  %\voiceOne
  a2.~ | 2 g4 | g4 fis2 | r4 fis g |
  a4 a a | a g fis |
  a4 a a | a g fis | a4 g2~ | 2 r4 | % R2. | R2. |
  %\break
  
  g2.~ | 2 fis4 | fis4 e2 | r4 g a |
  b4 b b | b a g | b4 b b | b a g | b4 a2~ | 2 r4 | % R2. | R2. |
  %\break

  a2.~ | 2 g4 | g4 fis2 | r4 fis g |
  a4 a a | a g fis | a a a | a b c | b2. | r4 g a
  %\break
  
  \repeat volta 3 {
    %r4 g a | b4 b b | b cis b | b4 a a | a b a | a g a |
    b4 b b | b cis4. b8 | b4 a a | a b4. a8 | a4 g a |
  }
  \alternative {
    { b4 a g | fis2. | r4 g a }
    %\break
    { b4 a g | fis2. | R2. }
    { b4 cis a | d2.~ | 4 }
  }
  
  \bar "|."
}

melodyJianpu = \relative c'' {
  \global
  %\omit Staff.KeySignature
  %\omit Staff.TimeSignature
  a2.( | 2) g4 | g4 fis2 | r4 fis g |
  a4 a a | a g fis |
  a4 a a | a g fis | a4 g2( | 2) r4 | % R2. | R2. |
  
  g2.( | 2) fis4 | fis4 e2 | r4 g a |
  b4 b b | b a g | b4 b b | b a g | b4 a2( | 2) r4 | % R2. | R2. |

  a2.( | 2) g4 | g4 fis2 | r4 fis g |
  a4 a a | a g fis | a a a | a b c | b2. | r4 g a |
  
  \repeat volta 3 {
    %r4 g a | b4 b b | b cis b | b4 a a | a b a | a g a |
    b4 b b | b cis4. b8 | b4 a a | a b4. a8 | a4 g a |
  }
  \alternative {
    { b4 a g | fis2. | r4 g a }
    { b4 a g | fis2. | R2. }
    { b4 cis a | d2.( | 4) }
  }
  
  \bar "|."
}

bd = \once \override LyricText.self-alignment-X = #-0.5

century = \override LyricText.font-name = #"C059"
%century = \override LyricText.font-name = #"Noto Serif"
serifSemiBold = \override LyricText.font-name = #"Noto Serif CJK HK SemiBold"

verseEsOne = \lyricmode {
  \set stanza = #"1."
  %\override LyricText.font-name = #"C059"
  %\override LyricText.font-size = #0
  De __ co -- lo -- res, de co -- lo -- res
  se vis -- ten los cam -- pos de la pri -- ma -- ve -- ra. __
  De __ co -- lo -- res, de co -- lo -- res
  son los pa -- ja -- ri -- tos que vie -- nen de~a -- fue -- ra. __
  De __ co -- lo -- res, de co -- lo -- res
  es el ar -- co i -- ris que ve -- mos lu -- cir.
  
  Y por e -- so los gran -- des a -- mo -- res
  de mu -- chos co -- lo -- res me gus -- tan a mí.

  Y por
  
  gus -- tan a mí.
  
  gus -- tan a mí.
}

verseZhOne = \lyricmode {
  %\set stanza = #"1."
  \serifSemiBold
  多 __ 采 多 \bd 姿， 多 采 多 姿 田 野 披 著 春 裝 多 麼 嬌 豔 芬 芳。 __
  多 __ 采 多 \bd 姿， 多 采 多 姿 一 群 小 鳥 在 天 空 翩 翩 地 飛 翔。 __
  多 __ 采 多 \bd 姿， 多 采 多 姿 一 道 彩 虹 映 在 天 上 射 光 \bd 芒。

  宇 宙 之 間  一 切 偉 大 的 愛 如 此 多 采 多 姿 我 都 願 欣 \bd 賞。

  宇 宙

  都 願 欣 \bd 賞。
  
  都 願 欣 \bd 賞。
}

verseEsTwo = \lyricmode { 
  \set stanza = #"2."
  %\override LyricText.font-size = #0
  Can -- ta~el ga -- llo, can -- ta~el ga -- llo
  con el qui -- ri, qui -- ri, qui -- ri, qui -- ri, qui -- ri. __
  La __ ga -- lli -- na, la ga -- lli -- na
  con el ca -- ra, ca -- ra, ca -- ra, ca -- ra, ca -- ra. __
  Los __ po -- llue -- los, los po -- llue -- los
  con el pí -- o, pí -- o, pí -- o, pí -- o, pí.
}

verseZhTwo = \lyricmode {
  %\set stanza = #"2."
  \serifSemiBold	公 __ 雞 在 \bd 啼， 公 雞 在 啼  一 起
  \century	qui -- ri, qui -- ri, qui -- ri, qui -- ri, qui -- ri。 __
  \serifSemiBold	母 __ 雞 在 \bd 唱， 母 雞 在 唱  一 起
  \century	ca -- ra, ca -- ra, ca -- ra, ca -- ra, ca -- ra。 __
  \serifSemiBold	一 __ 群 小 \bd 雞， 一 群 小 雞  一 起
  \century	pí -- o, pí -- o, pí -- o, pí -- o \bd pí。
}

refrainAlto = \relative c' {
  d4 | es1 ~ | es2 c2 | es1 | bes4 as bes2 |
}

alto = \relative c' {
  \global
  \voiceTwo

}

refrainTenor = \relative c' {
  as4 | g4 bes2 des4 | c2 f,2 | g2 as4 bes | f2 g2 |
}

refrainTenorAlt = \relative c' {
  g8 f | g4 bes2 des4 | c2 f,2 | g2 as4 bes | f2 g2 |
}

tenor = \relative c {
  \global
  %\autoBeamOn
  \voiceThree
  \repeat unfold 8 { s4 <<fis a>> <<fis a>> | }
  \repeat unfold 2 { s4 <<g a>> <<g a>> | }
  %\repeat unfold 4 { s4 <<e a>> <<e a>> | s4 <<g a>> <<g a>> | }
  \repeat unfold 4 { s4 <<g a>> <<g a>> | s4 <<e a>> <<e a>> | }
  s4 <<fis a>> <<fis a>> | a,4 b cis |
  \repeat unfold 6 { s4 <<fis a>> <<fis a>> | }
  \repeat unfold 2 { s4 <<fis a c>> <<fis, a c>> | }
  s4 <<b d>> <<b d>> | <<b d>> r r
  s4 <<b d>> <<b d>> | s4 <<gis, b d>> <<gis, b d>> | 
  s4 <<d fis>> <<d fis>> | s4 <<dis, fis>> <<dis fis>> |
  s4 <<g b>> <<g b>> | s4 <<cis, e g>> <<cis, e g>>
  s4 <<fis a>> <<fis a>> | <<fis a c>> r r |
  
  { s4 <<fis, a>> <<fis a>> | s4 <<fis a>> <<fis a>> | s2. }
  { \tempo 4 = 90
    s4 <<e g a>> <<e g a>> |
    <<fis2 a>> <<e4 g a>> | <<a, fis'>>
  }
}

refrainBass = \relative c {
  bes4 | es2 ~ es8 f g4 | as2 a, |
  bes2 c |
  d4 bes \tempo 4 = 40 es,2 \tempo 4 = 80 |
}

bass = \relative c {
  \global
  \voiceFour
  d2. a | d a | d a | d a | e' a, |
  %a2. e' | a, e' | a, e' | a, e' | d2. a |
  e' a, | e' a, | e' a, | cis a | d2. a4 b cis |
  d2. a | d a | d a | d d | g g4 r r |
  g2. e | a b, | e
  { a, | d | d4 e fis | }
  % ending
  { a,2. | d2. | a4 b cis }
  { a2. | d2 a4 | d,4 }
}

\score {
  <<
    \new JianpuStaff {
      %\set Staff.
      \set Staff.midiMaximumVolume = #0
      \jianpuMusic {
        \melodyJianpu
      }
    }
    
    %  \new PianoStaff
    %  <<
    \new Staff = "upperStaff" {
      \set Staff.midiInstrument = "string ensemble 1"
      %\set Staff.midiInstrument = #"flute"
      <<
        \new Voice = "melody" { \melody }
        \new Voice = "alto" { \alto }
      >>
    }
    \new Lyrics \with {
      \override VerticalAxisGroup.nonstaff-relatedstaff-spacing =
        #'((padding . 1))
    } \lyricsto "melody" { \verseEsOne }
    \new Lyrics \with {
      \override VerticalAxisGroup.nonstaff-nonstaff-spacing =
        #'((padding . 1.5))
    } \lyricsto "melody" { \omit LyricExtender \verseZhOne }
    
    \new Lyrics \lyricsto "melody" { \verseEsTwo }
    \new Lyrics \lyricsto "melody" { \omit LyricExtender \verseZhTwo }
    %{
    \new Staff {
      %\set Staff.midiInstrument = "string ensemble 1"
      %\set Staff.midiInstrument = #"recorder"
      \clef bass
      <<
        \new Voice = "tenor" { \tenor }
        \new Voice = "bass" { \bass }
      >>
    } 
    %}
    %  >>
  >>

  \layout {
    indent = #0
    \context {
      \Staff
      \consists #merge-rests-engraver
      \consists #merge-mmrests-engraver
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
    \context {
      \JianpuStaff
      \magnifyStaff #4/5
      \override VerticalAxisGroup.default-staff-staff-spacing =
        #'((basic-distance . 3.5)
           (padding . 0))
    }
    %{
    \context {
      \RhythmicStaff
      \remove "Time_signature_engraver"
      \override VerticalAxisGroup.
      default-staff-staff-spacing =
      #'((basic-distance . 1)
         (minimum-distance . 0)
         (padding . 0)
         (stretchability . 0))
      fontSize = #1.3
    }
    %}
    \context {
      \Lyrics
      %alignAboveContext = "upperStaff"
      \override LyricHyphen.minimum-distance = #0.7
      %\omit LyricExtender
    }
  }
  \midi { }
}
