%
% Styles shared by all Nova Organi Harmonia scores
%
\version "2.24.0"

%
% Chant division marks
%
quarterBar = {
  \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-minima
  \once \override BreathingSign.thickness = #2.0
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)

  \breathe
}

halfBarOriginal = {
  \once \override BreathingSign.stencil = #ly:breathing-sign::divisio-maior
  \once \override BreathingSign.thickness = #2.0
  \once \override BreathingSign.Y-offset = #0
  \once \override BreathingSign.minimum-X-extent = #'(-1.0 . 0.0)
  \once \override BreathingSign.minimum-Y-extent = #'(-2.5 . 2.5)

  \breathe
}

% For compatibility with jianpu10a.ly, as coded by Google Gemini
halfBar = {
  \once \override BreathingSign.stencil =
    #(lambda (grob)
       (let* ((staff-space (ly:staff-symbol-staff-space grob))
              (th (* 0.2 staff-space))
              (h (* 3.0 staff-space)))

         (make-filled-box-stencil
           (cons (/ th -2) (/ th 2))
           (cons (/ h -2) (/ h 2)))))

  \once \override BreathingSign.Y-offset = #0
  \once \override BreathingSign.X-extent = #'(-0.5 . 0.5)
  \breathe
}

%
% Voice leading lines are drawn as dotted glissandi
%
voiceLineStyle = {
  \override Glissando.style = #'dotted-line
  \override Glissando.thickness = #2.0
  \override NoteColumn.force-hshift = #0
  \override NoteHead.transparent = ##t
}

voiceLine =
#(define-music-function
  (staffA staffB noteA noteB)
  (string? string? ly:music? ly:music?)
  #{
    \change Staff = #staffA <>\glissando #noteA
    \change Staff = #staffB #noteB
  #})

allowVoiceLineBreak = {
  \once \override Glissando.breakable = ##t
  \once \override Glissando.after-line-breaking = ##t
}

offsetVoiceLineY = { \once \overrideProperty Glissando.Y-offset #0.2 }

%
% Functions to create groups of notes, connected with a slur
%

% Group of two notes (duration: quarter note)
ga =
#(define-music-function
  (pa pb) (ly:pitch? ly:pitch?)
  #{ $pa 16( $pb 16*3) #})

% Group of three notes (duration: dotted quarter note)
gb =
#(define-music-function
  (pa pb pc) (ly:pitch? ly:pitch? ly:pitch?)
  #{ $pa 16( $pb $pc 4)) #})

% Group of four notes (duration: dotted quarter note)
gc =
#(define-music-function
  (pa pb pc pd) (ly:pitch? ly:pitch? ly:pitch? ly:pitch?)
  #{ $pa 16( $pb $pc $pd 16*3)) #})

%
% Additional macros
%
singleBar   = { \bar "|" }
doubleBar   = { \bar "||" }
forceBreak  = { \bar "" \break }
shiftRight  = { \once \override NoteColumn.force-hshift = #0.9 }
shiftRightB = { \once \override NoteColumn.force-hshift = #1.6 }

%
% Default layout
%
\layout {
  indent = 1.7\cm
  ragged-last = ##f
  \context {
    \Staff
    \remove "Time_signature_engraver"
    \omit Flag
    \omit Stem
    \accidentalStyle forget
  }
  \context {
    \Lyrics
    \with { alignAboveContext = "up" }
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.minimum-distance = #4
    \override LyricText.font-size = #-1
  }
}

%
% Default paper
%
\paper {
  #(set-paper-size "letter")
  line-width = 6.5\in
}
