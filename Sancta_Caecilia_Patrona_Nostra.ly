% http://www.musicasacra.org.hk/publish/PDF/NC/cecilia.pdf
% http://www.musicasacra.org.hk/publish/newcomposition_tw.html

% 關於司馬榮神父：
%
% 司馬榮神父在澳門(1939-1966)的創作演唱會 - 澳門預演
% http://www.macauperosi.org.mo/index.php?option=content&task=view&id=49&catid=31&Itemid=46#
%


% Reference:
% http://www.lilypond.org/doc/v2.18/Documentation/learning/solo-verse-and-two_002dpart-refrain

\version "2.18.0"

% Merge rests, see:
% https://code.google.com/p/lilypond/issues/detail?id=1228
\include "definition.ily"

date = #(strftime "(generated %Y-%m-%d)" (localtime (current-time)))

\header {
  title = "聖女則濟利亞頌"
  subtitle = "Sancta Cæcilia Patrona Nostra"
  %composer = "曲：Fr. Guilherme Wilheim Schmid 司馬榮神父 (1910–2000)"
  composer = "G. Schmid"
  %arranger = "編：？"
  %poet = "詞：佚名？"
    
  copyright = \markup {
    % See http://lists.gnu.org/archive/html/lilypond-user/2013-01/msg00029.html
    \override #'(baseline-skip . 2)
    \tiny
    % See http://www.lilypond.org/doc/v2.18/Documentation/snippets/text#text-stand_002dalone-two_002dcolumn-markup
    \fill-line {
      \column {
        \line { © Society of St. Francis of Sales (SDB) 慈幼會 }
        \line { This edition: MMXIV Mary Help of Christians Catholic Parish }
        \line { "                     " Edmonton, AB, Canada " " \date}
        \line {
          %基於天主教香港教區 2011 年版
          based on edition MMXI Catholic Diocese of Hong Kong
        }
      }
      \hspace #1
      \right-column {
        \line { 聖樂主保：聖女則濟利亞 (Sancta Cæcilia) Nov 22 }
        \line { Music: Fr. Guilherme Wilheim Schmid, SDB }
        \line { 司馬榮神父 (1910–2000) }
        \line { November 1953 (Macau) }
      }
    }
  }
  % Remove default LilyPond tagline
  %tagline = ##f
  tagline = \markup {
    \pad-to-box #'(0 . 0) #'(0 . 3)
    {
      \with-url
      #"http://lilypond.org/"
      \tiny \line {
        %% 2014 = em dash.
        #(format #f "以 LilyPond ~a 植譜~awww.lilypond.org"
           (lilypond-version)
           (ly:wide-char->utf-8 #x2014)
           )
      }
    }
}

}

% #(set-global-staff-size 24)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.75\in
  left-margin = 1.0\in
  right-margin = 0.75\in
  bottom-margin = 0.5\in
  % http://www.lilypond.org/doc/v2.18/Documentation/notation/flexible-vertical-spacing-paper-variables
  system-system-spacing #'basic-distance = #14
}

global = {
  \key f \major
  \time 3/4
  \tempo "Andante maestoso  莊嚴的行板"
  s2.*8
  % FIXME
  %\bar "||"
  \break
  \repeat volta 2 {
  s2.*8
  s2.*4 %\break
  s2.*8
  s2.*4
  }
  s2.*2
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
  \autoBeamOff
  R2.*8
  
  \repeat volta 2 {
    f2 g8 a | a8 g g4 r8
      \set melismaBusyProperties = #'()
      \slurDashed
      g( | a4)( f)
      \slurSolid
      \unset melismaBusyProperties
    g |
    g2 c,4 |
  
    a'2 bes8 c | c8[ bes] bes2 |
    a4.( f8)
      \set melismaBusyProperties = #'()
      \slurDashed
      bes( g) | f2( e4) |
      \slurSolid
      \unset melismaBusyProperties
    f2 r4 |
    R2.*11
    R2.*4
  }
  R2.*2
}

women = \relative c'' {
  %\global
  \autoBeamOff
  R2.*8
  
  \repeat volta 2 {
    R2.*8
    % Music follows here.
    %f2 g8 a | a8 g g4 r8 g( | a4) f g | g2 c,4 |
    %a'2 bes8 c | c8[ bes] bes2 | a4.( f8) bes[ g] | f2 e4 |

    a4 a4. bes8 | a8 f d2 | c'4 c4. d8 | d8[ c] c2 |
    bes4.( d8) c bes | bes8[ a] a2 |
    g4.( bes8) a g | g8[ f] f g a bes | c2( g4) | a4 r8 a bes g |
    f2( e4) | f2 r4 |
    R2.*4
  }
  R2.*2
}

men = \relative c' {
  %\global
  \autoBeamOff
  \clef "treble_8"
  R2.*8
  
  \repeat volta 2 {
    R2.*8
    R2.*2
    r4 r8 a8 a gis | gis8[ a] a2 |
    g4 f e | e8[ f] f2 |
    f2 d8 e | e8[ f] f r r4 |
    r8 c d e f[ e] | f2
      \set melismaBusyProperties = #'()
      \slurDashed
      d4( | c2.)
      \slurSolid
      \unset melismaBusyProperties
    |
    f2 r4 |
    R2.*4
  }
  R2.*2
}

rightOne = \relative c' {
  f2 e8 f | e8 d cis d e d |
  g2 a4~ | a8 g fis g e c |
  c'2 cis4 | d4~ d8 bes a g |
  f8 a c4~ c8 e, | f8 c <f a> c <f a> c |
  
  \repeat volta 2 {
    \oneVoice
    r8 c <f a> c <f a> c | r8 c <e g> c <e g> c |
    r8 a <d f> a <d f> b | r8 bes <c e> bes <e g> bes |
    r8 c <f a> c <f a> c | r8 c <g' bes> c, <g' bes> c, |
    r8 c <f a> c <d g> bes | r8 a <c f> a <c e> bes |
  
    \voiceOne
    f'2 g4 | f4 d8 e f a | c2~ c8 d~ | d8 c c f, a c |
    g8 a bes d c bes~ | bes8 a a c, f a | g f g bes a g | g8 f f g a bes |
    c2 g4 | a4. a8 bes g | f2 e4 | f4 g a |
    bes2 c8 d~ | d8 g, g4 a8 bes | c8 f, f g a bes | g2. |
  }

  f2 e16 f a c | f2. |
}

rightTwo = \relative c' {
  a2. | bes2. | b2. | bes2 c4~ |
  c4 f ees | d2. | c2. | s2. |
  
  \repeat volta 2 {
    s2.*8
  
    <a c>2 <bes e>4 | <a d>4 s2 | e'4 f a | <gis b>8 a a f a c |
    g4 f e | f4 s2 | s2. | s2. |
    r8 e d e f e | c4 d2 | c2 bes4 | a4 bes c |
  
    d2 f4 | f4. e8 e4 | ees4 d2 | f4 e8 d e4 |
  }
  
  f2 s4 | <f a c>2. |
}

leftOne = \relative c {
  f2.~ | f2.~ | f2. | e2 g4 |
  f2.~ | f4 fis g | a2 bes4 | a8 r r4 r |
  
  \repeat volta 2 {
    s2.*8

    s2. | s2. | c2 r4 | f,2.~ |
    f4 g2 | f2.~ | f2 d8 e | f4 a2 |
    s2. | f2 g4 | a2 g4 | f4 e ees |

    d4 f bes | b4 c2 | a4 bes2 | c2. |
  }
  
  a2. | c2. |
}

leftTwo = \relative c, {
  f2. | bes2. | g2. | c2 bes4 |
  a2. | bes2 b4 | c2 g'4 | f8 r r4 r |

  \repeat volta 2 {
    \oneVoice
    f2 r4 | c2 r4 | d2 g,4 | c2 r4 |
    f2 r4 | e2 r4 | f2 bes,4 | c2 c,4 |

    f2 c'4 | d2 r4 | \voiceFour bes'4 a r4 | f,2. |
    bes2 c4 | f,2 a4 | c2. | d2. |
    \oneVoice c2 c'4 \voiceFour | f,4 d bes | c2. | f,4 r r |

    bes2. | <\tweak font-size #-1 g g'>4 c e | f4 bes, g' | c,2. |
  }
  
  f2. | f,2. |
}


fpa = \once \override LyricText #'self-alignment-X = #-0.72

soloLyrics = \lyricmode {
  聖 女 則 濟 利 \fpa 亞， 我 _ 們 的 主 \fpa 保，
  在 天 主 臺 \fpa 前， 為 我 _ 們 祈 \fpa 禱。
}

soloLyricsLatin = \lyricmode {
  San -- cta Cæ -- cí -- li -- a, pa -- tró -- _ na no -- stra,
  o -- ra pro no -- bis! o -- ra pro no -- _ bis!
}

womenLyrics = \lyricmode {
  %\set stanza = "【女】"
  聖 女 則 濟 利 \fpa 亞， 我 們 的 主 \fpa 保，
  在 天 主 臺 \fpa 前，
  在 天 主 臺 前 為 我 們 祈 \fpa 禱， 為 我 們 祈 \fpa 禱。
}

womenLyricsLatin = \lyricmode {
  San -- cta Cæ -- cí -- li -- a, pa -- tró -- na no -- stra,
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
  pa -- tró -- na no -- stra,
  o -- ra pro no -- bis! o -- ra pro no -- bis!
  o -- ra pro no -- bis, pro no -- bis!
}


choirPart = <<
    \new Staff \with {
      midiInstrument = "choir aahs"
      %vocalName = "獨唱 "
      %shortVocalName = "獨唱"
      shortVocalName = \markup \center-column {
        \line { Solo }
        \line { 獨唱 }
      }
    } \new Voice = "solo" { << \global \solo >> }
    \addlyrics { \soloLyricsLatin }
    \addlyrics { \soloLyrics }
    
    \new ChoirStaff <<
      \new Staff \with {
        midiInstrument = "choir aahs"
        %shortVocalName = "女 "
        shortVocalName = \markup \center-column {
          \line { SA }
          \line { 女 }
        }
      } << \global \women >>
      \addlyrics { \womenLyricsLatin }
      \addlyrics { \womenLyrics }
      
      \new Staff \with {
        midiInstrument = "choir aahs"
        %shortVocalName = "男 "
        shortVocalName = \markup \center-column {
          \line { TB }
          \line { 男 }
        }
      } << \global \men >>
      \addlyrics { \menLyricsLatin }
      \addlyrics { \menLyrics }
      
    >>
>>

dynamicPart = \new Dynamics {
  s2.*8 |
  \repeat volta 2 {
    s2.*24 |
  }
  \override Hairpin.to-barline = ##f
  s2 s4-"rit."\> |
  s2.\! |
}

organPart = \new PianoStaff \with {
  %instrumentName = "Organ"
  %shortInstrumentName = "Organ"
} <<
  \new Staff = "right" \with {
    midiInstrument = "church organ"
  } << << \global \rightOne >> \\ << \global \rightTwo >> >>
  \dynamicPart
  \new Staff = "left" \with {
    midiInstrument = "church organ"
  } { \clef bass << << \global \leftOne >> \\ << \global \leftTwo >> >> }
>>


\score {
  %\unfoldRepeats
  <<
    % \new ChordNames \chordNames
    \choirPart
    \organPart
  >>
  \layout {
    indent = #0
    \context { \Staff
      % these lines prevent empty staves from being printed
      \RemoveEmptyStaves
      \override VerticalAxisGroup.remove-first = ##t
    }
    \context { \Staff \consists #merge-rests-engraver }
    \context { \Staff \consists #merge-mmrests-engraver }
  }
}

\score {
  \unfoldRepeats <<
    % \new ChordNames \chordNames
    \choirPart
    \organPart
  >>
  \midi {
    \tempo 4=76
  }
}
