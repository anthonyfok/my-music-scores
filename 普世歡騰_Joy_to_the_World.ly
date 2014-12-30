\version "2.18.2"

% Merge rests, see:
% https://code.google.com/p/lilypond/issues/detail?id=1228
\include "definition.ily"

\header {
  title = "普世歡騰 Joy to the World"
  composer = \markup {
    \override #'(baseline-skip . 2)
    \column {
      \line { Lowell Mason (1792–1872) }
      \line { adapted from Handel’s \italic Messiah }
    }
  }
  poet = \markup {
    \override #'(baseline-skip . 2)
    \column {
      \line { 詞：Isaac Watts (1674–1748) • 取材自：詠 98 }
      \line { 譯：劉廷芳 1934}
    }
  }
  % Remove default LilyPond tagline
  tagline = ##f
}

%#(set-global-staff-size 20)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.175\in
  left-margin = 0.75\in
  right-margin = 0.5\in
  bottom-margin = 0.175\in
}

global = {
  \key d \major
  \numericTimeSignature
  \time 2/4
  \tempo "快板 Allegro"
  \autoBeamOff
}

soprano = \relative c'' {
  \global

  d4 cis8. b16 | a4. g8 | fis4 e | d4. a'8 | b4. b8 |
  \break
  cis4. cis8 | d2~ | d4.
  d8 | d8[ cis] b[ a] | a8.[ g16 fis8]
  d'8 | d8[ cis] b[ a] | a8.[ g16 fis8]
  \bar "||" \break
  fis8 | fis8 fis fis fis16[ g] | a4. g16[ fis] | e8 e e e16[ fis] |
  \break
  g4. fis16[ e] | d8( d'4) b8 | a8.[ g16 fis8] g | fis4 e | d2 |
  \bar "|."
}

alto = \relative c' {
  \global

  d4 d8. d16 | d4. e8 | d4 cis | d4. a'8 | g4. g8 |
  \break
  e4. e8 | fis2~ | fis4.
  fis8 | fis8[ a] g[ fis] | fis8.[ e16 d8]
  fis8 | fis8[ a] g[ fis] | fis8.[ e16 d8]
  \bar "||" \break
  d8 | d8 d d d16[ e] | fis4. e16[ d] | cis8 cis cis cis16[ d] |
  \break
  e4. d16[ cis] | d8( fis4) g8 | fis8.[ e16 d8] e | d4 cis | d2 |
  \bar "|."
}

tenor = \relative c {
  \global

  fis4 a8. g16 | fis4. b8 | a4 a8[ g] | fis4. d'8 | d4. d8 |
  \break
  a4. a8 | a2~ | a4.
  a8 | a4 d | d4. a8 | a4 d | d4.
  \bar "||" \break
  r8 | r4 r8 a | a a a a | a2~ |
  \break
  a4. a8 | fis8( a4) d8 | d4. b8 | a4 a8[ g] | fis2 |
  \bar "|."
}

men = \relative c {
  \global

  fis4 a8. g16 | fis4. b8 | a4 a8[ g] | fis4. d'8 | d4. d8 |
  \break
  a4. a8 | a2~ | a4.
  r8 | R2 * 3 | r4 r8
  \bar "||" \break
  r8 | r4 r8 a | a a a a | a2~ |
  \break
  a4. a8 | fis8( a4) d8 | d4. b8 | a4 a8[ g] | fis2 |
  \bar "|."
}

bass = \relative c {
  % Bass part in Original ChungYan
  \global

  d4 d8. d16 | d4. g,8 | a4 a | d4. fis8 | g4. g8 |
  \break
  a4. a8 | d,2~ | d4.
  d8 | d4 d | d4. d8 | d4 d | d4.
  \bar "||" \break
  r8 | r4 r8 d | d d d d | a4. a8 |
  \break
  a8 a a a | d4. d8 | d4. g,8 | a4 a | d2 |
  \bar "|."
}

fpa = \once \override LyricText #'self-alignment-X = #-0.72

verseFour = \lyricmode {
  \set stanza = "3."
  Joy to the world!  the Lord is come;
  Let earth re -- ceive her King;
  Let ev -- ’ry heart pre -- pare Him room,
  And heav’n and na -- ture sing,
  And heav’n and na -- ture sing,
  And heav’n, and heav’n and na -- ture sing,
}

verseOne = \lyricmode {
  \override VerticalAxisGroup.nonstaff-nonstaff-spacing =
  #'((basic-distance . 0)
     (minimum-distance . 3.25) ;; <================ more lower space
     (padding . 0.2)
     (stretchability . 0))

  \set stanza = "1."
  普 世 歡 \fpa 騰！ 救 主 下 \fpa 降： 大 地 接 她 君 王，
  惟 願 眾 心 預 備 地 方，
  諸 天 萬 物 歌 \fpa 唱，
  諸 天 萬 物 歌 \fpa 唱，
  諸 天， 諸 天 萬 物 歌 \fpa 唱。
}

%\new Voice = "men" { \voiceOne \men }

verseOneMen = \lyricmode {
  _ _ _ _ _ _ _ _
  _ _ _ _ _ _
  _ _ _ _ _ _ _ _
  諸 天 萬 物 歌 \fpa 唱，
  諸 天 萬 物 歌 \fpa 唱，
  諸 天 萬 物 歌 \fpa 唱。
}

verseTwo = \lyricmode {
  \set stanza = #"2."
  % Lyrics follow here.
  普 世 歡 \fpa 騰， 主 治 萬 \fpa 方， 民 眾 首 當 歌 唱；
  沃 野、 洪 濤、 山 石、 平 原，
  響 應 歌 聲 嘹 \fpa 亮，
  響 應 歌 聲 嘹 \fpa 亮，
  響 應， 響 應 歌 聲 嘹 \fpa 亮。
}

verseThree = \lyricmode {
  %\set stanza = "2."
  %Pǔ shì huān -- téng! Jiù zhǔ xià -- jiàng: Dà -- dì jiē tā jūn -- wáng,
  %wéi yuàn zhòng xīn yù -- bèi dì -- fāng,
  %zhū tiān wàn -- wù gē -- chàng,
  %zhū tiān wàn -- wù gē -- chàng,
  %zhū tiān, zhū tiān wàn -- wù gē -- chàng.
  \override LyricText.font-name = #"Gentium Book Basic"
  
  \override VerticalAxisGroup.nonstaff-nonstaff-spacing =
  #'((basic-distance . 0)
     (minimum-distance . 3.25) ;; <================ more lower space
     (padding . 0.2)
     (stretchability . 0))

  Pǔ -- shì huān -- téng, Zhǔ zhì wàn fāng, mín -- zhòng shǒu dāng gē -- chàng;
  Wò -- yě, hóng -- tāo, shān -- shí, píng -- yuán,
  Xiǎng -- yìng gē -- shēng liáo -- liàng,
  Xiǎng -- yìng gē -- shēng liáo -- liàng,
  Xiǎng -- yìng, xiǎng -- yìng gē -- shēng liáo -- liàng.

}

\score {
  \new ChoirStaff <<
    \new Staff \with {
      midiInstrument = "choir aahs"
    } <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseOne
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseTwo
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseThree
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "soprano" \verseFour
    \new Staff \with {
      midiInstrument = "choir aahs"
    } <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
    >>
    \new Lyrics \with {
      \override VerticalAxisGroup #'staff-affinity = #CENTER
    } \lyricsto "bass" \verseOneMen
  >>
  \layout {
    indent = #0
    \context { \Staff \consists #merge-rests-engraver }
    \context { \Staff \consists #merge-mmrests-engraver }
  }
  \midi {
    \tempo 4=108
  }
}
