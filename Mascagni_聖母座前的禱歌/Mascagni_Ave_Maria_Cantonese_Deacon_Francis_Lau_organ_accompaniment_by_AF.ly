\version "2.24.3"

\include "../definition.ily"
\include "../mass-slides-mhocp.ily"
\include "../jianpu10a.ly"

date = #(strftime "%Y-%m-%d" (localtime (current-time)))

\header {
  title = \markup { Ave Maria \notoserifcjkhkbold 聖母座前的禱歌（粵語版） }
  %subtitle = \markup \vspace #1 % change this value accordingly
  
  composer = \markup {
    \notoserifcjkhksemibold 曲：Pietro Mascagni
  }
  % poet = "詞：Piero Mazzoni"
  poet = \markup {
    \notoserifcjkhksemibold 粵語歌詞：劉贊願 Francis Lau
  }
  %arranger = "詞：Francis Lau 劉贊願執士"
  copyright = \markup \tiny {
    Adapted to the celebrated \italic Intermezzo from \italic { Cavalleria Rusticana }
  }
  
  tagline = \markup {
    \tiny {

      \bold { v0.1 DRAFT } \date
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

% #(set-global-staff-size 22)
#(set-global-staff-size 19)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.3\in
  bottom-margin = 0.3\in
  left-margin = 0.7\in
  right-margin = 0.7\in
  %markup-system-spacing.padding = #1
  %system-system-spacing.padding = #5
  ragged-bottom = ##f
  ragged-last-bottom = ##f
  
  %print-first-page-number = ##t
}

global = {
  \key f \major
  \time 3/4
  % \autoBeamOff
  \tempo "Andante sostenuto" 4 = 56
}

soprano = \relative c'' {
  \global
  \autoBeamOff

  a2^\f  c4 | f,2 a4^\< | d,4 d'8\! c bes f | a2^\> g4\! | %\break
  bes2 d,4 | a'4( c) f, | a2 g4 | f2. |

  d'4 d8[ c] bes[ f] | a2^\> g4\! | bes4 bes8[ a] g[ d] | f2^\> e4\! | \break
  f4^\p^\<^\markup { \italic largamente } g8[ a] bes16[ c] d[ e] | f4.^\f\!
  f8^\markup { \italic "a tempo" } e d | a4^\> c e, | f4.\!

  f'8^\f f f | f4. f8 f f | f4. f8^\dim e d | a4 c e, | f4.^\p
  
  % \magnifyMusic 0.63 {
  f'8^\f f f | f4. f8 f f | f4. f8^\dim e d | a4 c e, | f4.^\p
  % }

  e8 f^\markup { \italic "poco a poco dim. e rall. sempre" } g |
  a4. f8 a d | d4. bes8 d f | <f a>2.^\pp~ | <f a>4 r r | R2.\fermata
  \bar "|."
}

alto = \relative c' {
  \global
  f2 g4 | d2 e4 | bes4 f' d | e2~4 |
  d2 bes4 | c2 d4 | f2 e4 | <c a>2. |
  <f d>2. | e2. | d2. | c2. |
  a2 d8 f | <f c'>2 <g bes>4 | c,2.~ |
  4. f4.~ | 4 d' c | bes2 g4 | c,2.~ |
  4. f4.~ | 4 d' c | bes2 g4 | c,2.~ |
  4. r8 r4 | f2.~ | 2. |
  <a c>2.~ | 2.~ | 2. |
}

tenor = \relative c' {
  \global
  c2~4 | a2~4 | f2 bes4 | c2 bes4 |
  g2. | f2 g4 | c2 bes4 | f2. |
  bes2 g4 | c2 bes4 | g2. | g2. |
  f2.~ | f | f4 a bes |
  a2.~ | 4 g f~ | f2. | f4 a bes |
  a2.~ | 4 g f~ | f2. | f4 a bes |
  a4. e8 f g |
  r8 a d4 c | r8 f, bes4 g | f2.~ | 2. | f'2.
}

bass = \relative c {
  \global
  f2 e4 | d2 c4 | bes2 g'4 | c,2. |
  r4 g bes | f4 a b | c2. | f,4. g8 a c |
  bes2 g4 | c2. | g4. a8 bes4 | c g c, |
  d'4 c bes | a4 a bes | c2. |
  f4 e d | c bes a | g2 bes4 | c2. |
  f4 e d | c bes a | g2 bes4 | c2. |
  f4. r8 r4 |
  d2 c4 | bes2 g4 | f2.~ | 2. | f'2. |
}

sopranoJianpu = \relative c'' {
  \global

  a2 c4 | f,2 a4 | d,4 d'8 c bes f | a2 g4 |
  bes2 d,4 | a'4( c) f, | a2 g4 | f2. |

  d'4 d8([ c]) bes([ f]) | a2 g4 | bes4 bes8([ a]) g([ d]) | f2 e4 |
  f4 g8([ a]) bes16([ c]) d([ e]) | f4. f8 e d | a4 c e, | f4.

  f'8 f f | f4. f8 f f | f4. f8 e d | a4 c e, | f4.
  
  f'8 f f | f4. f8 f f | f4. f8 e d | a4 c e, | f4 r8

  e8 f g | a4. f8 a d | d4. bes8 d f | a2.( | a4) r r | r4 r r\fermata
  \bar "|."
}

mysteriousAlto = \relative c' {
  \global
  % Music follows here.
  c2 c4 | d2 e4 | d4 d8 d d d | e2 e4 |
  d2 d4 | c4( f) f | f2 e4 | f2. |

  %f4 d8( d) d( d) | e2 c4 | f4 f8( f) d( d) | c2 c4 |
  f4 d d | e2 c4 | f4 f d | c2 c4 |
  f4 f f8 f | f4. f8 g a | c,4 f c | c4 a' bes8 a |

  a4 bes c | bes2 g4 | f4. f8 e d | a4 c e, | f4.
  
  f'8 f f | f4. f8 f f | f4. f8 e d | a4 c e, | f4 r8

  e8 f g | a4. f8 a d | d4. bes8 d f | a2.~ | a2 r4-\fermata
  \bar "|."
}

bd = \once \override LyricText.self-alignment-X = #-0.7
serifSemiBold = \override LyricText.font-name = #"Noto Serif CJK HK SemiBold"

verse = \lyricmode {
  % Lyrics follow here.
  \serifSemiBold
  聖 母 看 我 \bd 淚，
  看 我 淚 正 下 \bd 垂，
  妳 仁 慈 俯 聽 我 \bd 禱。
  吁 仁 慈 之 \bd 母，
  可 憐 我 罪 \bd 人，
  勿 棄 我 不 \bd 顧，
  引 導 我 走 上 正 \bd 途。
  
  罪 人 之 \bd 托， 為 我 等 \bd 祈，
  引 導 我 走 上 正 \bd 途。
  
  罪 人 之 \bd 托， 為 我 等 \bd 祈，
  引 導 我 走 上 正 \bd 途。
  
  % _ _ _ _ _ _ _ _
  % _ _ _ _ _ _ _
  
  抹 掉 我 \bd 淚， 使 我 堪 當
  承 受 主 \bd 恩。 
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

\score {
  \new PianoStaff <<
      
      %{
      \new JianpuStaff {
        \set Staff.midiMaximumVolume = #0
        \jianpuMusic {
          \transpose f f { \sopranoJianpu }
        }
      }
      %}

      \new Staff \with {
        midiInstrument = "choir aahs"
        %instrumentName = \markup \center-column { "Soprano" "Alto" }
      }
        \transpose f d
      <<
        %\new Voice = "soprano" { \transpose f f { \soprano } }
        \new Voice = "soprano" { \voiceOne \soprano }
        \new Voice = "alto" { \voiceTwo \alto }
      >>
      
      \new Lyrics \with {
        \override VerticalAxisGroup.staff-affinity = #CENTER
      } \lyricsto "soprano" \verse
      
      \new Staff \with {
        midiInstrument = "choir aahs"
        % instrumentName = \markup \center-column { "Tenor" "Bass" }
      } \transpose f d
      <<
        \clef bass
        \new Voice = "tenor" { \voiceOne \tenor }
        \new Voice = "bass" { \voiceTwo \bass }
      >>
    >>
    % \pianoReduction
  
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
      %\RemoveEmptyStaves
      %\override VerticalAxisGroup.remove-first = ##t
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
