% It’s a Hundred Days of School
%
% Lyrics from http://gazette.teachers.net/gazette/wordpress/editor/25248/
% and http://teachers.net/projects/100days/topic206/2.08.03.08.23.53.html
%
% Typeset on 2015-02-06 in Edmonton, AB, Canada

\version "2.18.2"

\header {
  title = "It’s a Hundred Days of School"
  subtitle = "(Tune to “It’s a Small World”)"
  composer = "Music: Richard M. Sherman and Robert B. Sherman"
  % Remove default LilyPond tagline
  tagline = ##f
}

#(set-global-staff-size 26)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.667\in
  left-margin = 0.667\in
  right-margin = 0.667\in
  bottom-margin = 0.667\in
  indent = #0
  %system-system-spacing #'basic-distance = #15
  system-system-spacing #'padding = #3.0
  markup-system-spacing #'padding = #3.0
}

global = {
  \key g \major
  \time 2/2
  \partial 2
}

melody = \relative c' {
  \global
  % Music follows here.
  b4 c | d2 b' | g2 a4 g | g2 fis | fis2
  a,4 b | c2 a' | fis2 g4 fis | e2 d | d2
  b4 c | d2 g4 a | b2 a4 g | e2 a4 b | c2
  b4 a | d,2 c' | b2 a | g1 ~ | g2 r |
  \bar "||"
  \break
  
  g2.
  \mark \markup { \bold\italic Refrain }
  g4 | b2 g | a2. a4 | a2. r4 |
  a2. a4 | c2 a | b2. b4 | b2. r4 |
  b2. b4 | d2 b | c2. c4 | c2 b4 a |
  % d,1 | fis1 | g1 |
  d,2 c' | b2 a | g1 | r2 \bar "|."
}

verse = \lyricmode {
  \set stanza = #"1. "
  
  Oh we start -- ed school a long time a -- go,
  And there’s much we’ve learned and a lot we know.
  We can read, write, and spell;
  We do math ver -- y well.
  It’s a hun -- dred days of school.

  %\set stanza = #"Refrain: "
  It’s a hun -- dred days of school,
  It’s a hun -- dred days of school,
  It’s a hun -- dred days of school,
  It’s one hun -- dred days of school.
}

verseTwo = \lyricmode { 
  \set stanza = #"2. "
  
  Yes, we’ve stud -- ied hard and we’ve made new friends,
  And there’s much to do ’til the school year ends.
  But for now… Hip Hoo -- ray, we’ve reached our hun -- dredth day.
  It’s a hun -- dred days of school.
  %{
  It’s a hundred days of school,
  It’s a hundred days of school,
  It’s a hundred days of school,
  It’s one hundred days of school.
  %}
}



\score {
  \new Staff { \melody }
  \addlyrics { \verse }
  \addlyrics { \verseTwo }
  \layout {
  }
  \midi {
    \tempo 2=120
  }
}
