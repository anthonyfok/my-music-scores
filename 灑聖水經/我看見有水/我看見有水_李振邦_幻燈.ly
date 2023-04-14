% 希伯來的兒童_劉志明_幻燈
% Engraved by Anthony Fok on 2018-09-22
% in Edmonton, Alberta, Canada
%
% Lyrics copied from https://www.youtube.com/watch?v=EcVprXCXYAE

\version "2.18.2"
\include "../definition.ily"
\include "../mass-slides-mhocp.ily"

title = 復活期灑聖水歌：我看見有水

\header {
  title = \markup {
    \setbgcolor
    \with-color #yellow {
      \larger\larger
      %\override #'(font-name . "HanWangLiSuMedium")
      \kai
      \title
    }
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
  %{
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
  %}
  copyright = \markup\smaller\smaller\with-color #white {
    %\smaller {
    %  \smaller { © MCMLXXVI } \kai 天主教香港教區
    %}
    \concat { \kai\larger "詞：" "Vidi Aquam " \kai\larger 我看見有水 }
    \hspace #10
    \concat { \kai\larger "曲：李振邦" }
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
  bottom-margin = 0.1\in

  ragged-bottom = ##f

  top-markup-spacing.padding = #0
  top-system-spacing.padding = #3
  %markup-system-spacing.basic-distance = #0
  markup-system-spacing.padding = #0
  last-bottom-spacing.padding = #3

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
        \kai\concat { 〈 \title 〉 }
        \fromproperty #'page:page-number-string
      }
    }
  }
  evenHeaderMarkup = \oddHeaderMarkup
}

global = {
  %\tempo \markup { Marcia religiosa }
  \key bes \major
  \cadenzaOn
  %\partial 4
  %\time 4/4
  % \set Score.tempoHideNote = ##t
}

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }

refrain = {
  f8 g bes bes[ c] bes4 | \bar "|"
  bes8 bes bes bes g bes[ c] c4 | \bar "|"
  f,8 a g[ f] f2 | \bar "|"
  
  f8 f f g es4 | \bar "|"
  es8 f4 f8 g4 | \bar "|"
  bes8 bes a[ g] f4 | \bar "|"
  es8 g f4 f2 | \bar "|"
  
  f8 g bes bes c[ d] c4 | \bar "|"
  bes8 c c[ d] bes4 | \bar "|"
  g8 bes c[ bes] bes2 | \bar "||"
  \break
}

melody = \relative c' {
  \global
  \autoBeamOff
  
  \refrain
  \pageTurn
  
  f\breve g8 bes4 bes2 | \bar "|"
  bes\breve g8 bes a[ g] f2 | \bar "|"
  \pageTurn
  
  f\breve g8 bes4 bes2 | \bar "|"
  bes\breve g8 bes a[ g] f2 | \bar "||"
  \pageTurn
  
  \refrain
}

bd = \once \override LyricText.self-alignment-X = #-0.72
al = \once \override LyricText.self-alignment-X = #-0.95

refrainText = \lyricmode {
  \set stanza = #"(重唱) "
  我 看 見 有 \bd 水， 從 聖 殿 右 邊 流 \bd 出。 阿 肋 路 \bd 亞。
  所 有 被 這 水 洗 潔 的 \bd 人， 都 已 得 \bd 救。 阿 肋 路 \bd 亞。
  他 們 齊 聲 高 \bd 唱， 阿 肋 路 \bd 亞， 阿 肋 路 \bd 亞。
}

verses = \lyricmode {
  \refrainText 
  
  \set stanza = #"1. "
  \al 請你們稱謝上主，因為祂美 善 寬 \bd 仁，
  \al 祂的仁慈 永 遠 常 \bd 存。
  
  \set stanza = #"2. "
  \al 願光榮歸於父、及子 及 聖 \bd 神，
  \al 起初如何今日亦然，直到 永 \bd 遠。 阿 \bd 們。
  
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
    \include "我看見有水_李振邦_幻燈.jianpu.ily"

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
      \override LyricText.font-name = #"Times New Roman,DFHKStdKai-B5"
      \override LyricText.font-size = #6
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
