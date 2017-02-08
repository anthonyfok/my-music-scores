% Engraved by Anthony Fok on 2017-02-07 in Edmonton, Alberta, Canada

\version "2.18.2"
\include "../definition.ily"
\include "../mass-slides-mhocp.ily"

\header {
  title = \markup {
    \setbgcolor
    \with-color #yellow
    \override #'(font-name . "HanWangYanKai")
    "我要領受主"
  }

  poet = \markup\with-color #white \smaller {
    \kai 頌恩 \smaller (2005)
    \concat { \kai 第 458 \kai 首 }
    " "
    \smaller { © MMV \kai 天主教香港教區 }
  }

  composer = \markup\with-color #white {
    \kai 詞及曲：徐錦堯
    \smaller \concat { (1991 \kai 香港 ) }
  }

  %copyright = \markup\with-color #white {
  %  © MMV \kai 天主教香港教區 \kai 詞及曲：徐錦堯 (1991 香港)
  %}

  % Remove default LilyPond tagline
  tagline = ##f
}

#(set-global-staff-size 28)

\paper {
  #(set-paper-size "1280x720")
  left-margin = 0.45\in
  right-margin = 0.4\in
  top-margin = 0.1\in
  bottom-margin = 0.1\in

  %ragged-bottom = ##t

  %top-markup-spacing.padding = #1
  top-system-spacing.padding = #2
  markup-system-spacing.padding = #1
  %system-system-spacing.padding = #5
  %print-all-headers = ##t

  oddHeaderMarkup = \markup {
    \setbgcolor
    \with-color #white
    \fill-line {
      \on-the-fly \print-page-number-check-first
      {
        \yankai 〈我要領受主〉
        \fromproperty #'page:page-number-string
      }
    }
  }
  evenHeaderMarkup = \oddHeaderMarkup
}

global = {
  \key f \major
  \time 4/4 \partial 4
  % \set Score.tempoHideNote = ##t
  \tempo \markup { Andante maestoso \kai 莊嚴的行板 }
}

sd = { \set melismaBusyProperties = #'() \slurDashed }
ss = { \slurSolid \unset melismaBusyProperties }

soprano = \relative c' {
  \global
  \autoBeamOff

  \repeat unfold 4 {
    c4 |
    a'4 f g4. e8 | f4 c8[ d] c4 c |
    a'4 f g4. f8 | f4 e8[ d] e2 |
    \bar "||"
    \break

    f4. f8 c4 d8[ e] | f4 e8[ f] g2 |
    c,4. d8 e4 d | c1 |
    f4. f8 c4 d8[ e] | f4 e8[ f] g2 |
    g4. c8 bes4 a8[ g] | f2. \bar "||" \break
    \pageBreak
  }

  % Refrain and Verse 5
  c4 |
  a'4 f g4. e8 | f4 c8[ d] c4 c |
  a'4 f g4. f8 | f4 e8[ d] e2 |
  \bar "||"

  f4. f8 c4 d8[ e] | f4 e8[ f] g2 |
  c,4. d8 e4 d | c1 |
  f4. f8 c4 d8[ e] | f4 e8[ f] g2 |
  g4. c8 bes4 a8[ g] | f2.-\fermata
  \bar "|."
}

bd = \once \override LyricText #'self-alignment-X = #-0.72

stanzaRefrain = \set stanza = \markup {
  \lishu (重句)
}

verse = \lyricmode {
  \stanzaRefrain
  耶 穌 聖 體 是 我 神 \bd 糧，
  耶 穌 聖 體 賜 我 力 \bd 量。

  \set stanza = #"1. "
  我 要 常 常 領 受 \bd 主， 活 得 更 康 \bd 強；
  我 要 常 常 領 受 \bd 主， 活 得 更 康 \bd 強。

  \stanzaRefrain
  耶 穌 聖 體 是 我 神 \bd 糧，
  耶 穌 聖 體 賜 我 力 \bd 量。

  \set stanza = #"2. "
  我 要 常 常 愛 慕 \bd 主， 從 此 要 自 \bd 強；
  我 要 常 常 愛 慕 \bd 主， 從 此 要 自 \bd 強。

  \stanzaRefrain
  耶 穌 聖 體 是 我 神 \bd 糧，
  耶 穌 聖 體 賜 我 力 \bd 量。

  \set stanza = #"3. "
  我 要 常 常 接 近 \bd 主， 毋 須 再 徬 \bd 徨；
  我 要 常 常 接 近 \bd 主， 毋 須 再 徬 \bd 徨。

  \stanzaRefrain
  耶 穌 聖 體 是 我 神 \bd 糧，
  耶 穌 聖 體 賜 我 力 \bd 量。

  \set stanza = #"4. "
  我 要 常 常 信 賴 \bd 主， 從 不 怕 驚 \bd 惶；
  我 要 常 常 信 賴 \bd 主， 從 不 怕 驚 \bd 惶。

  \stanzaRefrain
  耶 穌 聖 體 是 我 神 \bd 糧，
  耶 穌 聖 體 賜 我 力 \bd 量。

  \set stanza = #"5. "
  我 要 常 常 仰 望 \bd 主， 仰 首 氣 昂 \bd 昂；
  我 要 常 常 仰 望 \bd 主， 仰 首 氣 昂 \bd 昂。
}

\score {
  <<
    \include "我要領受主_頌恩458_幻燈.jianpu.ily"

    \new ChoirStaff \with {
      midiInstrument = "clarinet"
    } {
      \new Voice = "soprano" { \soprano }
    }

    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
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
      \override LyricText.font-name = #"DFHKStdKai-B5"
      %\override LyricText.font-name = #"HanWangYanKai"
      %\override LyricText.font-name = #"cwTeXKai"
      \override LyricText.font-size = #5
      \override LyricText.color = #white
      %\override LyricExtender.color = #white
      \override StanzaNumber.color = #yellow

      \override VerticalAxisGroup #'staff-affinity = #CENTER
    }
  }
  \midi { \tempo 4 = 80 }
}
