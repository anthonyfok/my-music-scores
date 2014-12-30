% Reference:
% http://www.lilypond.org/doc/v2.18/Documentation/learning/solo-verse-and-two_002dpart-refrain

\version "2.18.0"

\header {
  title = "則濟利亞頌"
  subtitle = "Sancta Cæcilia Patrona Nostra"
  composer = "曲：Fr. Guilherme Wilheim Schmid 司馬榮神父"
  %arranger = "編：？"
  %poet = "詞：佚名？"
  % Remove default LilyPond ta	gline
  %tagline = ##f
}

% #(set-global-staff-size 24)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.75\in
  left-margin = 1.25\in
  right-margin = 0.75\in
  bottom-margin = 0.5\in
  % http://www.lilypond.org/doc/v2.18/Documentation/notation/flexible-vertical-spacing-paper-variables
  system-system-spacing #'basic-distance = #14
}

global = {
  \key f \major
  \numericTimeSignature
  \autoBeamOff
  \time 3/4
  \tempo "Andante maestato"
  s2.*8
  s2.*4 \break
  s2.*8
  \bar "|."
}

% Unfinished, incomplete, but removed because it clutters up the choir score.
chordNames = \chordmode {
  f2. | c2. | f2/a g4:m | c2. |
  f2 f4:7 | bes2./f | f2 g4:m | f2/c bes4 |
  
  f2. | bes2.:maj7
}  

solo = \relative c' {
  %\global
  f2 g8 a | a8 g g4 r8
    \set melismaBusyProperties = #'()
    \slurDashed
    g( | a4)( f)
    \slurSolid
    \unset melismaBusyProperties
  g |
  g2 c,4 |
  
  a'2 bes8 c | c8[ bes] bes2 | a4.( f8) bes[ g] | f2 e4 |
  f2. |
  R2.*11
}

women = \relative c'' {
  %\global
  R2.*8
  % Music follows here.
  %f2 g8 a | a8 g g4 r8 g( | a4) f g | g2 c,4 |
  %a'2 bes8 c | c8[ bes] bes2 | a4.( f8) bes[ g] | f2 e4 |
  
  a4 a4. bes8 | a8 f d2 | c'4 c4. d8 | d8[ c] c2 |
  bes4.( d8) c bes | bes8[ a] a2 |
  g4.( bes8) a g | g8[ f] f g a bes | c2( g4) | a4 r8 a bes g |
  f2( e4) | f2 r4 |
}

men = \relative c' {
  %\global
  \clef "treble_8"
  R2.*8
  R2.*2
  r4 r8 a8 a gis | gis8[ a] a2 |
  g4 f e | e8[ f] f2 |
  f4 d e | e8[ f] f r r4 |
  r8 c d e f[ e] | f2
    \set melismaBusyProperties = #'()
    \slurDashed
    d4( | c2.)
    \slurSolid
    \unset melismaBusyProperties
  |
  f2 r4 |
}

fpa = \once \override LyricText #'self-alignment-X = #-0.72

soloLyrics = \lyricmode {
  聖 女 則 濟 利 \fpa 亞， 我 _ 們 的 主 \fpa 保，
  在 天 主 臺 \fpa 前， 為 我 們 祈 \fpa 禱。
}

soloLyricsLatin = \lyricmode {
  San -- cta Cæ -- ci -- li -- a, pa -- tro -- _ na no -- bis,
  o -- ra pro no -- bis! o -- ra pro no -- bis!
}

womenLyrics = \lyricmode {
  %\set stanza = "【女】"
  聖 女 則 濟 利 \fpa 亞， 我 們 的 主 \fpa 保，
  在 天 主 臺 \fpa 前，
  在 天 主 臺 前 為 我 們 祈 \fpa 禱， 為 我 們 祈 \fpa 禱。
}

womenLyricsLatin = \lyricmode {
  San -- cta Cæ -- ci -- li -- a, pa -- tro -- na no -- bis,
  o -- ra pro no -- bis! o -- ra pro no -- bis!
  o -- ra pro no -- bis! o -- ra pro no -- bis!
}

menLyrics = \lyricmode {
  %\set stanza = "【男】"
  我 們 的 主 \fpa 保，
  在 天 主 臺 \fpa 前， 在 天 主 臺 \fpa 前，
  為 我 們 祈 \fpa 禱， 祈 _ \fpa 禱。
}

menLyricsLatin = \lyricmode {
  pa -- tro -- na no -- bis,
  o -- ra pro no -- bis! o -- ra pro no -- bis!
  o -- ra pro no -- bis, pro no -- bis!
}

\score {
  <<
    % \new ChordNames \chordNames
    
    \new Staff \with {
      midiInstrument = "choir aahs"
      vocalName = "獨唱 "
      %shortVocalName = "獨唱"
    } \new Voice = "solo" << \global \solo >>
    \addlyrics { \soloLyricsLatin }
    \addlyrics { \soloLyrics }
    
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        shortVocalName = "女 "
      } << \global \women >>
      \addlyrics { \womenLyricsLatin }
      \addlyrics { \womenLyrics }
      
      \new Staff \with {
        midiInstrument = "choir aahs"
        shortVocalName = "男 "
      } << \global \men >>
      \addlyrics { \menLyricsLatin }
      \addlyrics { \menLyrics }
      
    >>
  >>
  \layout {
    indent = #0
    \context { \Staff
      % these lines prevent empty staves from being printed
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
  }
  \midi {
    \tempo 4=88
  }
}
