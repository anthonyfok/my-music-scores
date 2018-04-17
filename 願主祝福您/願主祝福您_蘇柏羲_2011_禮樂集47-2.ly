% Typeset by Anthony Fok in Edmonton, AB, Canada
% 2016-01-16 to 2016-01-18

\version "2.18.2"
\include "definition.ily"

\header {
  title = \markup {
    \line \override #'(font-name . "HanWangMingHeavy") {
      願主祝福您
    }
  }
  composer = "蘇柏羲"
  
  % Remove default LilyPond tagline
  tagline = ##f
}


#(set-global-staff-size 23)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.5\in
  bottom-margin = 0.5\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  %markup-system-spacing.padding = #6.5
  %print-all-headers = ##t
  ragged-last-bottom = ##f
}

global = {
  \key bes \major
  \time 4/4
  % \set Score.tempoHideNote = ##t
  \tempo "Andante Moderato"
}

soprano = \relative c' {
  \global
  \autoBeamOff
  \compressFullBarRests
  R1*4
 
  \repeat volta 2 {
    % 願上主祝福您
    d4 d8[ es] f4 d'8 c | bes2 r |
    g4 g8[ a] bes4 g8 d | es2 r |
  
    d4 d8[ es] f8 g4 f8 | \time 2/4 f2 |
    \time 4/4 d'4( c) bes4. g8 |
    f4 f8[ bes] a4.( bes8) | bes2 r |
    %\time 4/4 <d' d, bes>4( <c es, c>)
    %<< { bes4. g8 } \\ { es4 f } >> 
    \bar "||"
  
    % 願上主祝福您
    d,4 d8[ es] f4 d'8 c | bes2 r |
    g4 g8[ a] bes4 g8 d | es2 r |
  
    d4 d8[ es] f8 g4 f8 | \time 2/4 f2 |
    \time 4/4 d'4( c) bes4. g8 | f4 f8[ bes] a4.( bes8) | bes1 |
  
    % 願上主轉面垂顧  
    g4 g8[ a] bes4 c8[ bes8] |
    % http://lilypond.org/doc/v2.18/Documentation/notation/modifying-shapes
    \shape #'((1.2 . 2.2) (1.6 . 2) (1 . 0.5) (0.25 . 0)) Slur
    a8( bes4) bes8 es2 |
    bes4 f8 d' d4.( c8) | bes2. r4 |
  }
  
  % 賜平安給您
  bes2. f4 | d'2 c2 | bes1 ~ | bes2. r4 |
  \bar "|."
}

bd = \once \override LyricText #'self-alignment-X = #-0.72

verse = \lyricmode {
  \set stanza = #"(女)"
  願 上 主 祝 福 \bd 您，
  願 上 主 保 護 \bd 您，
  
  願 上 主 的 慈 顏
  \set stanza = #"(合)"
  光 照 及 仁 慈 待 \bd 您。
  
  \set stanza = #"(男)"
  願 上 主 祝 福 \bd 您，
  願 上 主 保 護 \bd 您，
  
  願 上 主 的 慈 顏
  \set stanza = #"(合)"
  光 照 及 仁 慈 待 \bd 您。
  
  願 上 主 轉 面 垂 \bd 顧， 賜 平 安 給 \bd 您。
  賜 平 安 給 \bd 您。
}

pdfScore = \score {
  <<
    \include "願主祝福您_蘇柏羲_2011_禮樂集47-2_jianpu.ily"

    \new ChoirStaff \with {
      % midiInstrument = "choir aahs"
      %midiInstrument = "flute"
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
      \Staff
      \consists #merge-rests-engraver
      \consists #merge-mmrests-engraver
      %\RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
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
  }
}

midiScore = \score {
  <<
    \new ChoirStaff \with {
      % midiInstrument = "choir aahs"
      %midiInstrument = "flute"
      midiInstrument = "clarinet"
    } {
      \new Voice = "soprano" { \soprano }
    }
  
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verse
  >>
  \midi { \tempo 4 = 80 }
}

\pdfScore
\midiScore

\markup {
  \smaller
  \fill-line {
    \line { }
    \line { 詞：戶 6:24–26 }
  }
}

\markup {
  \smaller
  \fill-line {
    \line { 原版 © MMXI 天主教香港教區 }
    \line { 曲：蘇柏羲 (October MMXI 香港) }
  }
}

\markup { " " }
\markup { " " }
\markup { " " }

\markup {
  \line { 《禮樂集(47)》 第 2 首 （第 8–11 頁，三部合唱及風琴伴奏） }
}

\markup {
  \line \smaller {
    "　． 完整樂譜下載："
    \with-url #"http://www.musicasacra.org.hk/publish/PRODUCTS/LM/LM47f.pdf"
    http://www.musicasacra.org.hk/publish/PRODUCTS/LM/LM47f.pdf
  }
}
\markup {
  \line \smaller {
    "　． 「願主祝福您」CD錄音排練花絮 (2)："
    \with-url #"https://youtu.be/sH3U-FnQpWc"
    https://youtu.be/sH3U-FnQpWc
  }
}
