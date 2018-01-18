% Engraved by Anthony Fok on 2017-12-27 in Edmonton
% Corrected typo on 2018-01-18 (仁慈教主→仁慈救主)

\version "2.18.2"
\include "../definition.ily"
\include "../mass-slides-mhocp.ily"
%\include "articulate.ly"

\header {
  title = \markup {
    \setbgcolor
    \with-color #yellow {
      %\mingheavy
      \kai
      "朝拜聖嬰"
    }
  }
  composer = \markup {
    \with-color #white {
      \kai "曲：法國傳統聖誕民謠 "
      Il est né, le divin Enfant
      \smaller\kai "（十七世紀）"
    }
  }
  poet = \markup {
    \with-color #white {
      \concat { \kai 《頌恩》 \smaller (2005) }
      \concat { \kai 第 540 \kai 首 }
    }
  }
  copyright = \markup\smaller\with-color #white {
    \smaller { © MMV }
    \kai 天主教香港教區
    \hspace #10
    \kai "詞：初田" \smaller {
      SDB (July 26, 1996 \concat { \kai 香港 ) \kai ， }
    }
    \smaller {
      \kai 取材自：路 \concat { 2:1–18 \kai ；瑪 } 2:1–15
    }    
  }
  % Remove default LilyPond tagline
  tagline = ##f
}


#(set-global-staff-size 28)

\paper {
  #(set-paper-size "1280x720")
  top-margin = 0.15\in
  bottom-margin = 0.15\in
  left-margin = 0.4\in	%0.75\in
  right-margin = 0.25\in
  markup-system-spacing.padding = #4.5
  %print-all-headers = ##t
  top-system-spacing.padding = #1.0
  system-system-spacing.padding = #2.0
  ragged-bottom = ##t

  oddHeaderMarkup = \markup {
    \setbgcolor
    \with-color #white
    \fill-line {
      \on-the-fly \print-page-number-check-first
      {
        \line { \kai "〈朝拜聖嬰〉" }
        \fromproperty #'page:page-number-string
      }
    }
  }
  evenHeaderMarkup = \oddHeaderMarkup
}

global = {
  \key f \major
  \time 2/4
  % \set Score.tempoHideNote = ##t
  \tempo \markup { \kai 中板 Moderato }
}

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }

refrain = \relative c' {
  c4 f | f4 a8 f | c4 f | f2 |
  f4 f8 g | a4 bes8[ a] | g4 f | g2 |
  c,4 f | f4 a8 f | c4 f | f2 |
  f4 f8 g | a4 bes8[ a] | g4 c | f,2 |
  \bar "||" \break
}

refrainFinal = \relative c' {
  c4 f | f4 a8 f | c4 f | f2 |
  f4 f8 g | a4 bes8[ a] | g4 f | g2 |
  c,4 f | f4 a8 f | c4 f | f2 |
  f4 f8 g | a4 bes8[ a] | g4 c | f,2 |
  \bar "|."
}

soprano = \relative c'' {
  \global
  \autoBeamOff

  \refrain
  % 1
  a4 c | c bes8 a | bes4 d | c2 |
  a4 bes | c4 d8[ c] | bes4 a | a4( g) |
  a4 c | c bes8 a | bes4 d | c2 |
  a4 bes | c4 d8[ c] | bes4 a | g2 |
  \bar "||" \break

  \refrain
  % 2
  a4 c | c bes8[ a] | bes4 d | c2 |
  a4 bes | c4 d8[ c] | bes4 a | a4( g) |
  a4 c | c bes8 a | bes4 d | c2 |
  a4 bes | c4 d8[ c] | bes4 a | g2 |
  \bar "||" \break

  \refrain
  % 3
  a4 c | c bes8[ a] | bes4 d | c2 |
  a4 bes | c4 d8[ c] | bes4 a | a4 g |
  a4 c | c bes8 a | bes4 d | c2 |
  a4 bes | c4 d8[ c] | bes4 a | g2 |
  \bar "||" \break

  \refrain
  % 4
  a4 c | c bes8 a | bes4 d | c2 |
  a4 bes | c4 d8[ c] | bes4 a | a4( g) |
  a4 c | c bes8[ a] | bes4 d | c2 |
  a4 bes | c4 d8[ c] | bes4 a | g2 |
  \bar "||" \break
  
  \refrain
  % 5
  a4 c | c bes8 a | bes4 d | c2 |
  a4 bes | c4 d8[ c] | bes4 a | a4 g |
  a4 c | c bes8[ a] | bes4 d | c2 |
  a4 bes | c4 d8[ c] | bes4 a | g2 |
  \bar "||" \break
  
  \refrain
  % 6
  a4 c | c bes8[ a] | bes4 d | c2 |
  a4 bes | c4 d8[ c] | bes4 a | a4 g |
  a4 c | c bes8[ a] | bes4 d | c2 |
  a4 bes | c4 d8[ c] | bes4 a | g2 |
  \bar "||" \break

  \refrainFinal
  \bar "|."
}


bd = \once \override LyricText #'self-alignment-X = #-0.72

verseRefrain = \lyricmode {
  \set stanza = \markup {
    %\lishu
    \kai
    (重句)
  }
  朝 拜 叩 首 至 誠 至 \bd 敬，
  仁 慈 救 主 可 愛 聖 \bd 嬰；
  求 賜 世 間 主 名 見 \bd 聖，
  人 人 活 在 世 常 安 \bd 寧。
}

verse = \lyricmode {
  \verseRefrain
  \set stanza = #"1. "
  事 因 凱 撒 大 帝 執 \bd 政， 治 世 發 出 惡 諭 \bd 令；
  實 施 普 世 戶 口 登 \bd 記， 二 聖 也 須 趕 路 \bd 程。
  
  \verseRefrain
  \set stanza = #"2. "
  夜 深 郊 野 救 主 \bd 誕， 慈 母 襁 褓 置 洞 \bd 穴；
  萬 千 天 使 頌 讚 歌 \bd 唱， 贖 世 救 主 已 來 \bd 臨。

  \verseRefrain
  \set stanza = #"3. "
  幸 得 天 使 報 喜 \bd 訊， 純 樸 野 郊 守 夜 牧 \bd 人；
  立 刻 高 興 地 往 參 \bd 拜， 奉 獻 愛 心 作 順 \bd 民。

  \verseRefrain
  \set stanza = #"4. "
  異 星 光 燦 導 引 訪 \bd 客， 別 了 故 鄉 往 朝 \bd 覲；
  暴 君 驚 怕 暗 偵 \bd 探， 為 把 聖 嬰 殺 戮 \bd 除。

  \verseRefrain
  \set stanza = #"5. "
  若 瑟 不 怕 路 遠 崎 \bd 嶇， 為 救 母 子 趁 夜 遁 \bd 藏；
  避 開 魔 爪 免 災 \bd 劫， 萬 世 至 尊 要 逃 \bd 亡。
  
  \verseRefrain
  \set stanza = #"6. "
  萬 軍 天 主 降 苦 \bd 世， 自 作 犧 牲 救 贖 萬 \bd 民；
  內 心 謹 記 主 深 \bd 恩， 立 志 此 生 永 效 \bd 勤。

  \verseRefrain
}

rightOne = \relative c' {
  \global
}

rightTwo = \relative c' {
  \global
}

\score {
  <<
    \include "朝拜聖嬰_新頌恩540_幻燈.jianpu.ily"

    \new ChoirStaff \with {
      % midiInstrument = "choir aahs"
      %midiInstrument = "flute"
      midiInstrument = "clarinet"
    } {
      \new Voice = "soprano" { \soprano }
    }

    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" { \verse }

    %{
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFour
    %}
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

      fontSize = #-2
      \override StaffSymbol.staff-space = #(magstep -2)
      \override StaffSymbol.thickness = #(magstep -2)
    }
    \context {
      \RhythmicStaff
      \remove "Time_signature_engraver"
      \override VerticalAxisGroup.
      default-staff-staff-spacing =
      #'((basic-distance . 4)
         (minimum-distance . 0)
         (padding . 0)
         (stretchability . 0))
    }
    \context {
      \Lyrics
      \override LyricText.font-name = #"DFKai-SB"
      %\override LyricText.font-name = #"DFHKStdKai-B5"
      %\override LyricText.font-name = #"HanWangYanKai"
      %\override LyricText.font-name = #"cwTeXKai"
      \override LyricText.font-size = #5

      \override LyricText.color = #white
      %\override LyricExtender.color = #white
      \override LyricHyphen.color = #white
      \override StanzaNumber.color = #yellow

      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }

  }
  \midi { \tempo 4 = 80 }
}
