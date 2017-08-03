% Engraved by Anthony Fok on 2017-08-03 in Edmonton

\version "2.18.2"
\include "../definition.ily"
\include "../mass-slides-mhocp.ily"
%\include "articulate.ly"

\header {
  title = \markup {
    \setbgcolor
    \with-color #yellow
    \mingheavy
    "願 望"
  }
  composer = \markup {
    \with-color #white {
      \kai "曲：孫達浩"
    }
  }
  poet = \markup {
    \with-color #white {      
      \concat { \kai 《頌恩》 \smaller (2005) }
      \concat { \kai 第 410 \kai 首 }
    }
  }
  copyright = \markup\smaller\with-color #white {
    \smaller { © MMV }
    \kai 天主教香港教區
    \hspace #30
    \kai "編：蘇柏羲　詞：胡建挺" \smaller OFM
  }
  % Remove default LilyPond tagline
  tagline = ##f
}


#(set-global-staff-size 28)

\paper {
  #(set-paper-size "1280x720")
  top-margin = 0.25\in
  bottom-margin = 0.25\in
  left-margin = 0.25\in	%0.75\in
  right-margin = 0.25\in
  %markup-system-spacing.padding = #6.5
  %print-all-headers = ##t
  top-system-spacing.padding = #5
  system-system-spacing.padding = #5.0
  ragged-bottom = ##t

  oddHeaderMarkup = \markup {
    \setbgcolor
    \with-color #white
    \fill-line {
      \on-the-fly \print-page-number-check-first
      {
        \line { \kai "〈願望〉" }
        \fromproperty #'page:page-number-string
      }
    }
  }
  evenHeaderMarkup = \oddHeaderMarkup
}

global = {
  \key d \major
  \time 2/4
  % \set Score.tempoHideNote = ##t
  \tempo \markup { Andante \kai 行版 }
}

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }

soprano = \relative c' {
  \global
  \autoBeamOff

  \repeat unfold 4 {
    fis4 fis8[ g] | a4 b8[ cis] | d4 cis8 b | a2 |
    fis4 fis8[ g] | a4 g8[ fis] | e2 ~ | e2 |

    fis4 fis8[ g] | a4 b8[ cis] | d4 g,8 b | a4. fis8 |
    fis4 fis | e4. d8 | d2 ~ | d4.
    \bar "" \break

    d8 |
    b'4 g8 b | a4 d | a4. g8 | fis4 fis8 e |
    d4 d | cis8[ d] e g | fis2 ~ | fis2 |

    b4. cis8 | d4 cis8[ b] | a4. fis8 | d2 |
    g4. fis8 | cis4 e | d2 ~ | d2 |
    \bar "||" \break
  }
  \bar "|."
}


bd = \once \override LyricText #'self-alignment-X = #-0.72

verseOne = \lyricmode {
  \set stanza = #"1. "
  願 望 福 音 加 添 興 \bd 奮， 服 務 主 與 \bd 人。
  \set stanza = #"1. "
  願 望 從 此 不 再 空 \bd 等， 使 主 恩 得 透 \bd 滲。
  \set stanza = #"1. "
  唯 一 所 必 須 的 只 有 \bd 是： 一 起 奮 \bd 鬥， 共 尋 意 \bd 義。
  \set stanza = #"1. "
  獻 出 身 心 趁 合 \bd 時， 努 力 盡 一 \bd 試。
}

verseTwo = \lyricmode {
  \set stanza = #"2. "
  願 望 唱 出 新 的 音 \bd 韻， 共 立 新 約 \bd 盟。
  \set stanza = #"2. "
  願 望 我 等 相 愛 相 \bd 親， 使 衷 心 得 証 \bd 印。
  \set stanza = #"2. "
  團 體 決 心 發 展 天 國 \bd 事： 一 起 奮 \bd 鬥， 力 行 正 \bd 義。
  \set stanza = #"2. "
  信 心 堅 穩 更 莫 \bd 疑， 主 恩 是 依 \bd 恃。
}

verseThree = \lyricmode {
  \set stanza = #"3. "
  願 望 體 恤 蒼 生 苦 \bd 困， 誓 立 身 社 \bd 群。
  \set stanza = #"3. "
  願 望 拓 展 廣 闊 胸 \bd 襟， 使 鄉 親 得 庇 \bd 蔭。
  \set stanza = #"3. "
  誠 心 掃 趕 世 間 險 惡 \bd 事： 一 起 奮 \bd 鬥， 成 全 禮 \bd 義。
  \set stanza = #"3. "
  兩 三 知 己 也 自 \bd 如， 堅 剛 定 心 \bd 志。
}

verseFour = \lyricmode {
  \set stanza = #"4. "
  願 望 救 主 多 加 俯 \bd 聽， 悅 納 天 國 \bd 情。
  \set stanza = #"4. "
  願 望 唱 出 心 裡 禱 \bd 聲， 使 歡 欣 添 愛 \bd 敬。
  \set stanza = #"4. "
  勞 碌 痛 苦 也 享 安 與 \bd 靜： 一 起 奮 \bd 鬥， 樂 意 聽 \bd 命。
  \set stanza = #"4. "
  高 天 恩 寵 滿 又 \bd 盈， 衷 心 是 感 \bd 銘。
}

rightOne = \relative c' {
  \global
}

rightTwo = \relative c' {
  \global
}

\score {
  <<
    \include "願望_新頌恩410_幻燈.jianpu.ily"

    \new ChoirStaff \with {
      % midiInstrument = "choir aahs"
      %midiInstrument = "flute"
      midiInstrument = "clarinet"
    } {
      \new Voice = "soprano" { \soprano }
    }

    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" { \verseOne \verseTwo \verseThree \verseFour }

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
      #'((basic-distance . 4.3)
         (minimum-distance . 0)
         (padding . 0)
         (stretchability . 0))
    }
    \context {
      \Lyrics
      %\override LyricText.font-name = #"DFKai-SB"
      %\override LyricText.font-name = #"DFHKStdKai-B5"
      %\override LyricText.font-name = #"HanWangYanKai"
      \override LyricText.font-name = #"cwTeXKai"
      \override LyricText.font-size = #4.75

      \override LyricText.color = #white
      %\override LyricExtender.color = #white
      \override LyricHyphen.color = #white
      \override StanzaNumber.color = #yellow

      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }

  }
  \midi { \tempo 4 = 80 }
}
