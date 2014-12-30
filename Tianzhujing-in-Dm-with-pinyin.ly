\version "2.18.0"

%\override Score.RehearsalMark.font-family = #'typewriter
%十、廿、卅、卌

\header {
  %dedication = "奉献于西堂"
  title = "天主經"
  subtitle = "(Pater Noster 主禱文)"
  %subtitle = "原 G 大调齐声版本"
  %subsubtitle = "Lilypond 排版初稿"
  composer = \markup { \override #'(baseline-skip . 0.5) \column { "李振邦神父 作曲" \small " (1923-1984)" } }
  copyright = \markup \column {
    \line { 天主教台灣地區主教團、天主教香港聖樂委員會 }
    \line { 《李振邦神父廿五週年紀念特輯》（禮樂集 39） }
  }
  %tagline = "《李振邦神父廿五週年紀念特輯》（禮樂集 39）"
}

#(set-global-staff-size 22)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.5\in
  left-margin = 0.8\in
  bottom-margin = 0.5\in
  right-margin = 0.8\in
  ragged-bottom = ##t
  %system-system-spacing = #'((basic-distance . 14))
  % default:
  % system-system-spacing = #'((basic-distance . 12) (minimum-distance . 8) (padding . 1) (stretchability . 60))
  system-system-spacing = #'(
                              (basic-distance . 12)
                              (minimum-distance . 8)
                              (padding . 4)
                              (stretchability . 60))
}

tempoMark = {
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  \once \override Score.RehearsalMark.break-align-symbols = #'(time-signature key-signature)
  \once \override Staff.TimeSignature.break-align-anchor-alignment = #LEFT
  \mark \markup \bold "Andante maestoso"
}

global = {
  \tempoMark
  \key a \dorian
  \time 6/4
}

voltaI = \markup { \text \small \bold { I } }
voltaII = \markup { \text \small \bold { II " " 彌撒外加唱 } }

melody = \relative c' {
  \global
  \dynamicUp
  \autoBeamOff
  % Music follows here.
  << \tiny
     { e2 g4 e~ e2 }
    \\
    \tiny { b4 a8 b d4 b8 a b2 }
  >>
  \bar "||"
  
  \time 5/4
  e4 e8 e g4 e2 |
  \time 6/4
  e4 d8 e g4 e8 d e2 |
  g4 e8 g a4 b b2 |
  \time 4/4
  b4\< a8 b g[ a] b4 | a8 b d e b2 |
  d4\f b8 d e2 | e2.\> r4 |

  e,8\p e e e g e e e | d d d e e2 |
  g8 g a a a b a g |
  a2 b8\f b a b |
  d4 d e4 b |
  a( b) b2 |
  b8-> b4-> b8 a4 a | g8 a g4 e2 |
  e4 g d e \bar "||"
  \set Score.repeatCommands = #(list(list 'volta voltaI))
  g8 g a[ g] g2
  \set Score.repeatCommands = #'((volta #f))
  \bar "||"
  
  \set Score.repeatCommands = #(list(list 'volta voltaII))
  \once \override Score.RehearsalMark.self-alignment-X = #LEFT
  %\mark \markup \small { 彌撒外加唱 }
  g8 g a[ g] g2 |
  e4( g) g2
  \set Score.repeatCommands = #'((volta #f))
  \bar "|."
}

fpa = \once \override LyricText.self-alignment-X = #-0.72

verse = \lyricmode {
  % Lyrics follow here.
  我 們 的 天 \fpa 父，
  願 祢 的 名 受 顯 \fpa 揚；
  願 祢 的 國 來 \fpa 臨；
  願 祢 的 旨 意 奉 行 在 人 \fpa 間，
  如 同 在 天 \fpa 上。
  求 祢 今 天 賞 給 我 們 日 用 的 食 \fpa 糧；
  求 祢 寬 恕 我 們 的 罪 \fpa 過；
  如 同 我 們 寬 恕 別 人 一 \fpa 樣；
  不 要 讓 我 們 陷 於 誘 \fpa 惑，
  但 救 我 們 免 於 凶 \fpa 惡。
  免 於 凶 \fpa 惡。 阿 \fpa 們！
}

versePinyin = \lyricmode {
  Wǒ -- men de Tiān -- fù,
  yuàn Nǐ de míng shòu xiǎn -- yáng;
  yuàn Nǐ de guó lái -- lín;
  yuàn Nǐ de zhǐ -- yì fèng -- xíng zài rén -- jiān,
  rú -- tóng zài tiān -- shàng.
  Qiú Nǐ jīn -- tiān shǎng gěi wǒ -- men rì yòng de shí -- liáng;
  qiú Nǐ kuān -- shù wǒ -- men de zuì -- guo;
  rú -- tóng wǒ -- men kuān -- shù bié -- rén yí -- yàng;
  bú -- yào ràng wǒ -- men xiàn -- yú yòu -- huò,
  dàn jiù wǒ -- men miǎn yú xiōng -- ’è.
  Miǎn yú xiōng -- ’è. Ā -- men!
}

rightUpper = \relative c' {
  \time 6/4
  e2 g4 e ~ e2 \bar "||"
  \time 5/4
  e4~ e g4 e2 |
  \time 6/4
  e4 d8 e g4 e8 d e2 |
  g4 e8 g a4 b b2 |
  \time 4/4
  b4 a8 b g a b4 |
  a8 b d e b2 |
  d4 b8 d e2 |
  <e b>2 ~ <e b>4 r4 |
  
  e,2 g8 e e4 |
  d4 ~ d8 e e2 |
  g4 a ~ a8 b a g |
  a2 b4 a8 b |
  d2 e4 b |
  a4 b ~ b2 ~ |
  b a |
  g8 a g4 e2 ~ |
  e4 g d e \bar "||"
  g4 a8 g g2 \bar "||"
  g4 a8 g g2 |
  e4 g ~ g2 \bar "|."
}

rightLower = \relative c' {
  b4 a8 b d4 b8 a b2 \bar "||"
  
  \time 5/4
  r4 b2~ b |
  \time 6/4
  a4 d ~ d c b a8 b |
  d2 c d4 e8 fis |
  \time 4/4
  d1 ~ |
  d ~ |
  d4 g c b8 a ~ |
  a4 g8 fis fis4 g |
  c,1 ~|
  c4 b ~ b2 |
  d c ~|
  c d ~|
  d4 e g fis |
  e fis8 e dis2 |
  e4 d c2 |
  d1 |
  c |
  d2 b |
  d2. c8 b |
  c2 <b d> |
}

right = {
  \global
  <<
    \rightUpper
    \\
    \rightLower
  >>
}

leftUpper = \relative c' {
  g1 ~ g2 \bar "||"
  
  \time 5/4
  r4 g2 ~ g2 ~|
  \time 6/4
  g1. ~|
  g1. |
  \time 4/4
  fis2 e |
  fis g ~|
  g2 ~ g4 fis |
  e1 ~|
  
  e |
  fis2 g ~|
  g1 |
  fis4 e g2 ~|
  g1 |
  c4 a ~ a g8 fis |
  g2 ~ g4 fis |
  g1 ~|
  g4 e a2 \bar "||"
  g2 ~ g \bar "||"
  g1 ~|
  g2 ~ g \bar "|."
}

leftLower = \relative c' {
  e,2 b e \bar "||"

  \time 5/4
  e4 ~ e d ~ d c ~|
  \time 6/4
  c b ~ b2 e |
  b a g |
  \time 4/4
  b1 ~|
  b4 a g a |
  b2 a |
  e'4 b e,2 |
  
  a b4 c |
  d2 ~ d4 c |
  b2 a ~|
  a2 g |
  b c ~|
  c b |
  e a, |
  b2 a4 b |
  c1 \bar "||"
  b2 <e e,> \bar "||"
  b2 e |
  c g \bar "|."
}

left = {
  \global \clef bass
  <<
    \leftUpper
    \\
    \leftLower
  >>
}

melodyPart = \new Staff \with {
  midiInstrument = "choir aahs"
} { \melody }
\addlyrics { \verse }

organPart = \new PianoStaff <<
  \new Staff = "right" \with {
    midiInstrument = "church organ"
  } \right
  \new Staff = "left" \with {
    midiInstrument = "church organ"
  } \left
>>

%\paper {
%  myStaffSize = #20
%  #(define fonts
%    (make-pango-font-tree "华文中宋"
%                          "Nimbus Sans"
%                          "Luxi Mono"
%                           (/ myStaffSize 20)))
%}

dynamics = {
  s1. \bar "||"
  \time 5/4
  s4 s s s s |
  \time 6/4
  s1. | s1. |
  \time 4/4
  s1\< | s | s\f | s\> |

  s1\p | s | s |
  s2 s\f | s1 | s |
  s | s |
  s \bar "||"
  %\set Score.repeatCommands = #'((volta "I"))
  s8 s\> s2 s4\!
  %\set Score.repeatCommands = #'((volta #f))
  \bar "||"
  %\set Score.repeatCommands = #'((volta "II"))
  s8 s\> s2. | s2. s4\!
  %\set Score.repeatCommands = #'((volta #f))
  \bar "|."
}

pedal = {
  s1. \bar "||"
  \time 5/4
  s4 s s s s |
  \time 6/4
  s1. | s1. |
  \time 4/4
  s1 | s | s | s |

  s1 | s | s |
  s | s | s |
  s | s |
  s \bar "||"
  %\set Score.repeatCommands = #'((volta "I"))
  s2.\sustainOn s4\sustainOff
  %\set Score.repeatCommands = #'((volta #f))
  \bar "||"
  %\set Score.repeatCommands = #'((volta "II"))
  s1\sustainOn | s2. s4\sustainOff
  %\set Score.repeatCommands = #'((volta #f))
  \bar "|."
  %\set Staff.pedalSustainStyle = #'mixed
}

\paper {
  indent = 0
}

\score {
  \transpose e d
  <<
    \new Staff = "VoiceStaff_pf" { \melody }
    \addlyrics { \small \versePinyin }
    \addlyrics { \verse }
  >>

  \layout {
    % define Dynamics context
    % [Convert-ly] The Dynamics context is now included by default.
    % modify PianoStaff context to accept Dynamics context
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
}



\score {
  \relative c' {
    \autoBeamOff
    \tempo "Moderato maestoso"
    \key g \major
    \time 3/4
    d8 e g4 g | e8 fis e4 d | g8 a b4 g | e8 g a4 g\fermata \bar "|."
  }
  \addlyrics {
    天 下 萬 \fpa 國， 普 世 權 \fpa 威， 一 切 榮 \fpa 耀， 永 歸 於 \fpa 祢。
  }
  \layout {
  }
  \header {
    subtitle = "AAA"
    piece = "天下萬國"
  }
}

\pageBreak


\score {
    %<<
    %  \melodyPart
    %  \organPart
    %>>
  <<
    \new Staff = "VoiceStaff_pf" { \melody }
    \addlyrics { \verse }
    \addlyrics { \versePinyin }
    \new PianoStaff = "PianoStaff_pf" <<
      \new Staff = "Staff_pfUpper" << \global \right >>
      \new Dynamics = "Dynamics_pf" \dynamics
      \new Staff = "Staff_pfLower" << \global \left >>
      \new Dynamics = "pedal" \pedal
    >>
  >>

  \layout {
    % define Dynamics context
    % [Convert-ly] The Dynamics context is now included by default.
    % modify PianoStaff context to accept Dynamics context
    \context {
      \PianoStaff
      \accepts Dynamics
    }
  }
}

\score {
  <<
    \melodyPart
    \organPart
  >>
  \midi {
    \tempo 4 = 72
  }
}
