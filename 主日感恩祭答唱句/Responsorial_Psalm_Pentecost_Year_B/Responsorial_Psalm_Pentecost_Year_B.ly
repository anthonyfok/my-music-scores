\version "2.24.3"

\include "../definition.ily"
\include "../mass-slides-mhocp.ily"
\include "../jianpu10a.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  Ttitle = \markup { \notoserifcjkhkbold 五旬節主日（當日感恩祭）乙年答唱詠 }
  Ssubtitle = \markup \vspace #1 % change this value accordingly
  
  Ccomposer = \markup {
    \notoserifcjkhksemibold 曲：Pietro Mascagni
  }
  % poet = "詞：Piero Mazzoni"
  Ppoet = \markup {
    \notoserifcjkhksemibold 粵語歌詞：劉贊願 Francis Lau
  }
  %arranger = "詞：Francis Lau 劉贊願執士"
  Ccopyright = \markup {
    Adapted to the celebrated \italic Intermezzo from \italic { Cavalleria Rusticana }
  }
  
  tagline = ##f
  tTagline = \markup {
    \smaller {

      \bold { v0.2 } \date
      (af)
      • Edmonton AB
      •
      \pad-to-box #'(0 . 0) #'(0 . 3)
      
      \with-url

      "https://lilypond.org/"
      \line {
        %\notoserifcjkhksemibold 多采多姿 •
        
        %% 2014 = em dash.

        #(format #f "Music engraving by LilyPond ~a~awww.lilypond.org"
           (lilypond-version)
           (ly:wide-char->utf-8 #x2014)
           )

      }
    }
  }
}

#(set-global-staff-size 22)
% #(set-global-staff-size 19)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.5\in
  %top-margin = 0.8\in
  bottom-margin = 0.5\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  markup-system-spacing.padding = #1
  system-system-spacing.padding = #8
  ragged-bottom = ##f
  ragged-right = ##f
  ragged-last-bottom = ##f
  
  %print-first-page-number = ##t
}

global = {
  \key g \major
  \time 4/4
  \autoBeamOff
  %\tempo "Andante sostenuto" 4 = 56
}

soprano = \relative c' {
  \global
  e8[ g] a2. | a8 g b8[ a] g2 |
  a4 e8 e  b'8[ a g b] | d2. r4 |
  \bar "|."
}

sopranoJianpu = \relative c' {
  %\global
  \key g \major
  \autoBeamOff
  \tempo "五旬節主日（當日感恩祭）乙年答唱詠"
  e8[( g]) a2. | a8 g b8[( a]) g2 |
  a4 e8 e  b'8[( a g b]) | d2. r4 |
  \bar "|."
}

alto = \relative c' {
  \global
  % Music follows here.
  \bar "|."
}

tenor = \relative c' {
  \global
  % Music follows here.
  
}

bass = \relative c {
  \global
  % Music follows here.
  
}

bd = \once \override LyricText.self-alignment-X = #-0.7
serifSemiBold = \override LyricText.font-name = #"Noto Serif CJK HK SemiBold"

verse = \lyricmode {
  % Lyrics follow here.
  \serifSemiBold
  上 \bd 主！ 請 祢 噓 \bd 氣， 使 大 地 更 \bd 新。
}

pianoReduction = \new PianoStaff \with {
  fontSize = #-1
  \override StaffSymbol.staff-space = #(magstep -1)
} <<
  \new Staff \with {
    \consists "Mark_engraver"
    \consists "Metronome_mark_engraver"
    \remove "Staff_performer"
  } {
    #(set-accidental-style 'piano)
    <<
      \soprano \\
      \alto
    >>
  }
  \new Staff \with {
    \remove "Staff_performer"
  } {
    \clef bass
    #(set-accidental-style 'piano)
    <<
      \tenor \\
      \bass
    >>
  }
>>

rehearsalMidi = #
(define-music-function
 (parser location name midiInstrument lyrics) (string? string? ly:music?)
 #{
   \unfoldRepeats <<
     \new Staff = "soprano" \new Voice = "soprano" { \soprano }
     \new Staff = "alto" \new Voice = "alto" { \alto }
     \new Staff = "tenor" \new Voice = "tenor" { \tenor }
     \new Staff = "bass" \new Voice = "bass" { \bass }
     \context Staff = $name {
       \set Score.midiMinimumVolume = #0.5
       \set Score.midiMaximumVolume = #0.5
       \set Score.tempoWholesPerMinute = #(ly:make-moment 100 4)
       \set Staff.midiMinimumVolume = #0.8
       \set Staff.midiMaximumVolume = #1.0
       \set Staff.midiInstrument = $midiInstrument
     }
     \new Lyrics \with {
       alignBelowContext = $name
     } \lyricsto $name $lyrics
   >>
 #})

responsorialPsalm = \score {
  <<
%    \new ChoirStaff <<
      
      \new JianpuStaff {
        \set Staff.midiMaximumVolume = #0
        \jianpuMusic {
          { \sopranoJianpu }
        }
      }

      \new Staff \with {
        midiInstrument = "choir aahs"
        %instrumentName = \markup \center-column { "Soprano" "Alto" }
      } <<
        \new Voice = "soprano" { { \soprano } }
        %\new Voice = "soprano" { \voiceOne \soprano }
        %\new Voice = "alto" { \voiceTwo \alto }
      >>
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verse
      \new Staff \with {
        midiInstrument = "choir aahs"
        instrumentName = \markup \center-column { "Tenor" "Bass" }
      } <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
 %   >>
    % \pianoReduction
  >>

  \layout {
    indent = #0
    \context {
      \Voice
      \consists "Melody_engraver"
      \override Stem.neutral-direction = #'()
    }
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
      \override NoteHead.Y-offset = #-1.65
      \override VerticalAxisGroup.default-staff-staff-spacing =
        #'((basic-distance . 6)
           (padding . 0))
    }
  }
  \midi {
    \tempo 4=100
  }
}

  \responsorialPsalm
  \responsorialPsalm
  \responsorialPsalm
  \responsorialPsalm
  \responsorialPsalm
  \responsorialPsalm


% Rehearsal MIDI files:
\book {
  \bookOutputSuffix "soprano"
  \score {
    \rehearsalMidi "soprano" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "alto"
  \score {
    \rehearsalMidi "alto" "soprano sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "tenor"
  \score {
    \rehearsalMidi "tenor" "tenor sax" \verse
    \midi { }
  }
}

\book {
  \bookOutputSuffix "bass"
  \score {
    \rehearsalMidi "bass" "tenor sax" \verse
    \midi { }
  }
}
