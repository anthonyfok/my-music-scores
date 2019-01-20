% 加納婚筵歌_頌恩291_幻燈
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
      "加納婚筵歌"
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
      \concat { \kai 《頌恩》
                \smaller {
                  (1976 \kai 年版 )
                }
      }
      \concat { \kai 第 291 \kai 首 }
    }
  }
  
  copyright = \markup\smaller\smaller\with-color #white {
    %\smaller {
    %  \smaller { © MCMLXXVI } \kai 天主教香港教區
    %}
    \concat { \kai\larger 詞： "Adelaide Thrupp (1853)" }
    \hspace #1
    \concat { \kai\larger 譯：戴調侯 "(?)" }
    \hspace #1
    \concat { \kai\larger 修： "?" }
    \hspace #1
    \concat { \kai\larger 曲： "Forest Green (English traditional melody)" }
    \hspace #1
    \concat { \kai\larger 和聲： "Ralph Williams Vaugh (1906)" }
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

  ragged-bottom = ##t

  top-markup-spacing.padding = #0
  top-system-spacing.padding = #3
  markup-system-spacing.padding = #0
  system-system-spacing.padding = #2.5
  %system-system-spacing.basic-distance = #10
  %system-system-spacing.stretchability = #900
  %print-all-headers = ##t


  oddHeaderMarkup = \markup {
    \setbgcolor
    \with-color #white
    \fill-line {
      \on-the-fly \print-page-number-check-first
      {
        \concat { \kai 〈加納婚筵歌〉 "Lord, Who at Cana’s Wedding Feast" }
        \fromproperty #'page:page-number-string
      }
    }
  }
  evenHeaderMarkup = \oddHeaderMarkup
}

global = {
  \key f \major
  \partial 4
  \time 4/4
  % \set Score.tempoHideNote = ##t
  %\tempo \markup { Andante con espressione \kai 富有表情的行板 }
}

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }

soprano = \relative c' {
  \global
  \autoBeamOff
  
  \repeat unfold 2 {
    c4 | f4 f f g | a8[( g]) a[( bes]) c4 a |
    bes4 a8[( f]) g4 g | f2. \bar "" \break
  
    c4 | f4 f f g | a8[( g]) a[( bes]) c4 a |
    bes4 a8[( f]) g4 g | f2. \bar "" \break
  
    f8[( a]) | c4. d8 c[( bes]) a[( g]) | f8[( g]) a[(bes ]) c4 c, |
    f4 a g f | c2. \bar "" \break
  
    c4 | f4 f f g | a8[( g]) a[( bes]) c4 a |
    bes4 a8[( f]) g4 g | f2.
  }
  \alternative {
    { \bar "||" \break }
    { \bar "|." }
  }
}

alto = \relative c' {
  \global
  \repeat unfold 2 {
    c4 | c d c d8[ e] | f4 f e d | d4 f f e | f2.
    c4 | c d c d8[ e] | f4 f e d | d4 f f e | f2.
    f4 | e4. d8 e4 c | c4 f e c | c4 c bes a8[ bes] | c2.
    c4 | c d c d8[ e] | f4 f e d | d4 f f e | f2.
  }
}

tenor = \relative c' {
  \global
  \repeat unfold 2 {
    g4 | a4 bes c bes | c4 f, g f | bes4 c d c8[ bes] | a2.
    g4 | a4 bes c bes | c4 f, g f | bes4 c d c8[ bes] | a2.
    a4 | a4. f8 c'4 c8[ bes] | a4 f g e | f4 f d8[ e] f4 | e2.
    f8[ g] | a4 bes c bes | c4 f, g f | bes4 c8[ a] c4 c8[ bes] | a2.
  }
}

bass = \relative c {
  \global
  \repeat unfold 2 {
    e4 | f4 bes a g | f4 d c d | g,4 a bes c4 | f2.
    e4 | f4 bes a g | f4 d c d | g,4 a bes c4 | f2.
    d4 | a4. bes8 c4 d8[ e] | f4 d c c8[ bes] | a4 f bes d | c2.
    d8[ e] | f4 bes a g | f4 d c d | g,4 a8[ d] c4 c | f2.
  }
}

bd = \once \override LyricText #'self-alignment-X = #-0.72

verses = \lyricmode {
  \set stanza = #"1. "
  在 昔 加 納 婚 筵 席 \bd 上， 主 曾 親 作 嘉 \bd 賓，
  可 愛 之 \bd 主， 耶 穌 基 \bd 督， 此 間 求 賜 惠 \bd 臨；
  \set stanza = #"1. "
  婚 姻 盟 \bd 約， 主 已 祝 \bd 聖， 永 遠 莊 嚴 神 \bd 聖，
  主 曾 宣 佈 夫 婦 愛 \bd 情， 教 會 與 主 象 \bd 徵。

  \set stanza = #"2. "
  在 上 主 \bd 前， 雙 雙 屈 \bd 膝， 求 主 沛 降 天 \bd 福，
  求 使 二 人 互 相 互 \bd 勉， 愛 主 之 心 日 \bd 篤：
  \set stanza = #"2. "
  又 使 二 \bd 人， 永 享 平 \bd 安， 仁 \bd 愛， 聖 \bd 潔， 和 \bd 睦，
  日 後 賜 予 天 上 榮 \bd 冠， 長 享 永 恆 歡 \bd 樂。
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
    \include "加納婚筵歌_頌恩291_幻燈.jianpu.ily"

    \new ChoirStaff \with {
      midiInstrument = "clarinet"
    } <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { S A }
      } <<
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup #'staff-affinity = #CENTER
      } \lyricsto "soprano" \verses
      %{
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
      %}
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { T B }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
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

      fontSize = #-1.9
      \override StaffSymbol.staff-space = #(magstep -1.9)
      \override StaffSymbol.thickness = #(magstep -1.9)
    }
    \context {
      \RhythmicStaff
      \remove "Time_signature_engraver"
      \override VerticalAxisGroup.
      default-staff-staff-spacing =
      #'((basic-distance . 3.8)
         (minimum-distance . 0)
         (padding . 0)
         (stretchability . 0))
      fontSize = #2.5
    }
    \context {
      \Lyrics
      %\override LyricText.font-name = #"DFKai-SB"
      \override LyricText.font-name = #"DFHKStdKai-B5"
      %\override LyricText.font-name = #"HanWangYanKai"
      %\override LyricText.font-name = #"cwTeXKai"
      \override LyricText.font-size = #6.8
      \override LyricText.color = #white
      %\override LyricExtender.color = #white
      \override StanzaNumber.color = #yellow

      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }
  }
  \midi { \tempo 4 = 80 }
}
