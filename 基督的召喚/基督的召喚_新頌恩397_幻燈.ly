% Engraved by Anthony Fok on 2018-01-18 in Edmonton

\version "2.18.2"
\include "../definition.ily"
\include "../mass-slides-mhocp.ily"
%\include "articulate.ly"

\header {
  title = \markup {
    \setbgcolor
    \with-color #yellow {
      %\mingheavy
      \larger\larger
      \kai
      "基督的召喚"
    }
  }
  %{
  composer = \markup {
    \with-color #white {
      \kai "曲：旋律素材採自中國民謠"
    }
  }
  %}
  composer = \markup {
    \with-color #white {
      \concat { \kai 《頌恩》
                \smaller {
                  (2011 \kai 年 11 \kai 月修正版 )
                }
      }
      \concat { \kai 第 397 \kai 首 }
    }
  }
  copyright = \markup\smaller\with-color #white {
    \smaller { © MMXI }
    \kai 天主教香港教區
    \hspace #5
    \kai "詞：莊宗澤" \smaller {
      OCSO (July 1999 \concat { \kai 香港 ) }
    }
    \hspace #3
    \override #`(direction . ,UP)
    \dir-column {
      \line {
        \kai "編：伍星洪" \smaller {
        (May 2, 2002 \concat { \kai 澳門 ) }
        }
      }
      \line {
        \kai "曲：旋律素材採自中國民謠"
      }
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
  left-margin = 0.28\in
  right-margin = 0.25\in
  markup-system-spacing.padding = #1.5
  %print-all-headers = ##t
  top-system-spacing.padding = #0.2
  system-system-spacing.padding = #1.5
  ragged-bottom = ##t

  oddHeaderMarkup = \markup {
    \setbgcolor
    \with-color #white
    \fill-line {
      \on-the-fly \print-page-number-check-first
      {
        \line { \kai "〈基督的召喚〉" }
        \fromproperty #'page:page-number-string
      }
    }
  }
  evenHeaderMarkup = \oddHeaderMarkup
}

global = {
  \key b \minor
  \time 4/4
  % \set Score.tempoHideNote = ##t
  \tempo \markup { \kai 中庸的行板 Andante Moderato }
}

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }

soprano = \relative c' {
  \global
  \autoBeamOff

  b4 b8 b d e fis a | b2. a8[ fis] |
  a8[ b] a fis e4 fis8[ a] | fis2. r4 |
  \break
  fis4 fis8 a b4. a8 | fis4 fis8[ a] e4( b) |
  e4 fis8[ a] fis e d[ e] | b2. r4 |
  \break

  fis'8([ a] b2.) |
  b4 b8 d b4 \tuplet 3/2 { a8[ b a] } | fis2. r4 |
  \break
  fis4 a b4.( d8) | b4 a8[ fis] e4( b) |
  e4 fis8 a fis8[ e] d8[ e] | b2. r4 |
  \bar "||"
  \break
  
  \pageBreak

  b4 b8 d e4( fis8[ a]) | b2. a8[ fis] |
  a8[ b] a fis e4 fis8[ a] | fis2. r4 |
  \break
  fis4 fis8 a b4. a8 | fis4 fis8[ a] e4 b |
  e4 fis8 a fis[ e] d[ e] | b2. r4 |
  \break

  \pageBreak

  fis'8([ a] b2.) |
  b4 b8 d b4 \tuplet 3/2 { a8[ b a] } | fis2. r4 |
  \break
  fis4 a b4.( d8) | b4 a8[ fis] e4( b) |
  e4 fis8 a fis8[ e] d8[ e] | b2. r4 |
  \break

  e4^\markup { \italic "rit." } fis8 a fis8[ e] d8[ e] | b1-\fermata |
  \bar "|."
}


bd = \once \override LyricText #'self-alignment-X = #-0.72

verse = \lyricmode {

  美 麗 的 加 里 肋 亞 \bd 湖！
  \bd 喲！
  安 睡 於 群 山 \bd 間，
  碧 綠 的 湖 水 映 藍 \bd 天，
  耶 穌 漫 步 湖 \bd 邊。

  \bd 啊！
  基 督 的 召 喚 \bd 呀！
  跟 隨 \bd 我！ 跟 隨 \bd 我！
  你 們 要 跟 隨 \bd 我！

  碧 綠 的 湖 \bd 水！
  \bd 喲！
  蕩 漾 著 捕 魚 \bd 船，
  基 督 的 召 喚 打 動 心 \bd 弦，
  拋 棄 了 捕 魚 \bd 船。

  \bd 啊！
  可 愛 的 救 主 \bd 啊！
  我 們 要 跟 隨 \bd 祢！
  我 們 要 跟 隨 \bd 祢！
  我 們 要 跟 隨 \bd 祢！
}

rightOne = \relative c' {
  \global
}

rightTwo = \relative c' {
  \global
}

\score {
  <<
    \include "基督的召喚_新頌恩397_幻燈.jianpu.ily"

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
      #'((basic-distance . 5)
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
