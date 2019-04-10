% 希伯來的兒童_劉志明_幻燈
% Engraved by Anthony Fok on 2018-09-22
% in Edmonton, Alberta, Canada
%
% Lyrics copied from https://www.youtube.com/watch?v=EcVprXCXYAE

\version "2.18.2"
\include "../definition.ily"
\include "../mass-slides-mhocp.ily"

\header {
  title = \markup {
    \setbgcolor
    \with-color #yellow {
      \larger\larger
      %\override #'(font-name . "HanWangLiSuMedium")
      \kai
      "希伯來的兒童"
    }
  }
  noSubtitle = \markup {
    \with-color #yellow
    \larger\larger
    %\override #'(font-name . "HanWangLiSuMedium")
    "Let the Children Come to Our Lord"
  }

  %{
  poet = \markup\with-color #white \smaller {
    \kai 頌恩 \smaller (2005)
    \concat { \kai 第 223 \kai 首 }
    " "
    \smaller { © MMV \kai 天主教香港教區 }
  }

  composer = \markup\with-color #white {
    \left-column {
      \line { \kai 詞及曲：李浩泉 (1996) }
      \smaller
      \line { \kai 編：蔡詩亞 (March 17 MMII \concat { \kai 香港 ) } }
    }
  }
  %}

  composer = \markup {
    \with-color #white {
      \concat { \kai 《頌恩》信友歌集
                \smaller {
                  " (2005" \kai 年版 )
                }
      }
      \concat { \kai 第 577 \kai 首 }
    }
  }
  
  copyright = \markup\smaller\smaller\with-color #white {
    %\smaller {
    %  \smaller { © MCMLXXVI } \kai 天主教香港教區
    %}
    \concat { \kai\larger "詞：聖枝主日【向基督君王讚歌】" }
    \hspace #1
    \concat { \kai\larger "曲：劉志明" "1975 / "
              \kai\larger "修：" "November 28 MMI "
              \kai\larger "(台北)" }
  }
  % Remove default LilyPond tagline
  tagline = ##f
}

#(set-global-staff-size 22)

\paper {
  #(set-paper-size "1280x720")
  left-margin = 0.5\in
  right-margin = 0.5\in
  top-margin = 0.2\in
  bottom-margin = 0.05\in

  ragged-bottom = ##f

  top-markup-spacing.padding = #0
  top-system-spacing.padding = #3
  markup-system-spacing.padding = #0

  system-system-spacing =
  #'((basic-distance . 10)
     (minimum-distance . 9)
     (padding . 1)
     (stretchability . 15))
  %system-system-spacing.padding = #2.5
  
  %system-system-spacing.basic-distance = #10
  %system-system-spacing.stretchability = #900
  %print-all-headers = ##t


  oddHeaderMarkup = \markup {
    \setbgcolor
    \with-color #white
    \fill-line {
      \on-the-fly \print-page-number-check-first
      {
        \concat { \kai 〈希伯來的兒童〉 }
        \fromproperty #'page:page-number-string
      }
    }
  }
  evenHeaderMarkup = \oddHeaderMarkup
}

global = {
  %\tempo \markup { Marcia religiosa }
  \key d \major
  %\partial 4
  \time 4/4
  % \set Score.tempoHideNote = ##t
}

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }

refrain = {
  \tempo \markup { Marcia religiosa }
  \time 4/4
  d8 d d e fis4 fis | a4 a8 g fis4 a |
  b4 cis d8[ e] a,4 | d4( cis8[ b]) a4. a8 |
  b4 b8 b a4( g) | fis2.
  
  \repeat volta 2 {
    d8[ e] |
    \time 3/4 fis4 fis fis8[ g] |
    \time 4/4 b4 a2 a8 a |
    \time 5/4 d4. d8 e2 b8 b |
    \time 4/4 cis4. cis8 d2 |
  }
  \pageTurn
}

melody = \relative c' {
  \global
  \autoBeamOff
  
  \refrain
  
  % Verse 1
  \tempo \markup { Cantillazione }
  \partial 4 \time 2/4
  d,8 fis | a4 a | g8[ a] b4 | d4( cis8[ b]) | a4.
  \bar "!" \break
  a8 | b4( g8[ fis]) | g4. g8 | a8[ g fis e] | fis2 |
  \bar "||" \pageTurn
  
  \refrain
  
  % Verse 2
  \tempo \markup { Cantillazione }
  \partial 4 \time 2/4
  d,8 fis | a8 a a a | g8[ a] b4 | d4 cis8 b | a4.
  \bar "!" \break
  a8 | b4( g8[ fis]) | g4. g8 | a8[ g fis e] | fis2 |
  \bar "||" \pageTurn

  \refrain
  
  % Verse 3
  \tempo \markup { Cantillazione }
  \partial 4 \time 2/4
  d,8 fis | a4 a | g8 a b4 | d8 d cis[ b] | a4.
  \bar "!" \break
  a8 | b4( g8[ fis]) | g4. g8 | a8[ g fis e] | fis2 |
  \bar "||" \pageTurn
  
  \refrain
  
  % Verse 4
  \tempo \markup { Cantillazione }
  \partial 4 \time 2/4
  d,8 fis | a8 a a a | g8 a b b | d8 d cis[ b] | a4.
  \bar "!" \break
  a8 | b4( g8[ fis]) | g4. g8 | a8[ g fis e] | fis2 |
  \bar "||" \pageTurn
  
  \refrain
  
  % Verse 5
  \tempo \markup { Cantillazione }
  \partial 4 \time 2/4
  d,8 fis | a8 a a a | g8 a b b | d8 d cis[ b] | a4.
  \bar "!" \break
  a8 | b4( g8[ fis]) | g4. g8 | a8[ g fis e] | fis2 |
  \bar "||" \pageTurn
  
  \refrain
}

bd = \once \override LyricText #'self-alignment-X = #-0.72

refrainText = \lyricmode {
  \set stanza = #"(重唱) "
  希 伯 來 的 兒 童 手 拿 著 樹 \bd 枝，
  前 來 歡 迎 救 \bd 主， 向 祂 高 聲 歡 \bd 呼：
  Ho -- san -- na!  Ho -- san -- na!
  於 至 高 之 \bd 天！ 於 至 高 之 \bd 天！
}

verses = \lyricmode {
  \refrainText 
  
  \set stanza = #"(領) 1. "
  請 來 讚 頌 救 主 基 \bd 督。
  \set stanza = #"(眾) "
  Ho -- san -- na!  Ho -- san -- na!
  
  \refrainText
  
  \set stanza = #"(領) 2. "
  祢 是 以 色 列 的 君 \bd 王、 達 味 之 \bd 子。
  \set stanza = #"(眾) "
  Ho -- san -- na!  Ho -- san -- na!
  
  \refrainText
  
  \set stanza = #"(領) 3. "
  宇 宙 萬 物 都 向 祢 高 聲 讚 \bd 頌。
  \set stanza = #"(眾) "
  Ho -- san -- na!  Ho -- san -- na!
  
  \refrainText
  
  \set stanza = #"(領) 4. "
  希 伯 來 的 子 民 前 來 歡 \bd 迎， 高 聲 歌 \bd 唱。
  \set stanza = #"(眾) "
  Ho -- san -- na!  Ho -- san -- na!
  
  \refrainText
  
  \set stanza = #"(領) 5. "
  現 在 我 們 來 到 祢 的 面 \bd 前， 高 聲 稱 \bd 讚。
  \set stanza = #"(眾) "
  Ho -- san -- na!  Ho -- san -- na!
  
  \refrainText
}

verseOne = \lyricmode {
  \set stanza = #"1. "
  在 昔 加 納 婚 筵 席 \bd 上， 主 曾 親 作 嘉 \bd 賓，
  可 愛 之 \bd 主， 遠 勝 他 \bd 人， 此 間 懇 求 惠 \bd 臨；
  婚 姻 盟 \bd 約， 主 已 證 \bd 明， 永 遠 莊 嚴 神 \bd 聖，
  主 曾 宣 佈 夫 婦 愛 \bd 情， 教 會 與 主 象 \bd 徵。
}

verseTwo = \lyricmode {
  \set stanza = #"2. "
  在 主 壇 \bd 前， 雙 雙 屈 \bd 膝， 求 主 沛 降 天 \bd 福，
  求 使 二 人 互 相 警 \bd 醒， 愛 主 之 心 日 \bd 篤：
  又 使 二 \bd 人， 永 享 平 \bd 安、 仁 \bd 愛、 潔 \bd 清、 和 \bd 睦，
  日 後 求 賜 天 上 榮 \bd 冠， 長 享 永 恆 歡 \bd 樂。
}


\score {
  <<
    \include "希伯來的兒童_劉志明_幻燈.jianpu.ily"

    \new Staff {
      \set Staff.midiInstrument = #"choir aahs"
      \new Voice = "melody" { \melody }
    }
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "melody" \verses
  >>
  \layout {
    indent = #0
    \context {
      \Score
      \applyContext #(override-color-for-all-grobs (x11-color 'wheat))
      % Colour the whole score, not just the staff;
      % See http://lilypond.1069038.n5.nabble.com/Coloring-volta-bracket-td189493.html
    }
    \context {
      \Staff
      \consists #merge-rests-engraver
      \consists #merge-mmrests-engraver
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t

      %{
      fontSize = #-1.9
      \override StaffSymbol.staff-space = #(magstep -1.9)
      \override StaffSymbol.thickness = #(magstep -1.9)
      %}
    }
    \context {
      \RhythmicStaff
      \remove "Time_signature_engraver"
      \override VerticalAxisGroup.
      default-staff-staff-spacing =
      #'((basic-distance . 5)
         (minimum-distance . 0)
         (padding . 0)
         (stretchability . 0))
      fontSize = #2.5
    }
    \context {
      \Lyrics
      %\override LyricText.font-name = #"DFKai-SB"
      \override LyricText.font-name = #"Times New Roman,DFHKStdKai-B5"
      %\override LyricText.font-name = #"HanWangYanKai"
      %\override LyricText.font-name = #"cwTeXKai"
      \override LyricText.font-size = #6.8
      \override LyricText.color = #white
      \override LyricExtender.color = #white
      \override LyricHyphen.color = #white
      \override LyricHyphen.height = #1
      \override LyricHyphen.thickness = #3
      \override LyricHyphen.length = #1
      
      \override StanzaNumber.color = #yellow
      \override StanzaNumber.font-name = #"Century Schoolbook L,王漢宗中隸書繁 Bold"
      \override StanzaNumber.font-series = #'bold
      \override StanzaNumber.font-size = #3

      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }
  }
  \midi { \tempo 4 = 80 }
}
