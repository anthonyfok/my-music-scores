% Slides for Mass

setbgcolor = \markup {
  \with-dimensions #'(0 . 0) #'(0 . 0)
  % specify color
  \with-color #(rgb-color 0.517647 0.235294 .047059)
  %\with-color #(x11-color 'wheat)
  % specify size
  \filled-box #'(-1000 . 1000) #'(-1000 . 4000) #0
}

#(define (override-color-for-all-grobs color)
   (lambda (context)
     (let loop ((x all-grob-descriptions))
       (if (not (null? x))
           (let ((grob-name (caar x)))
             (ly:context-pushpop-property context grob-name 'color color)
             (loop (cdr x)))))))

% Shortcut commands for setting fonts

% See http://lilypond.org/doc/v2.18/Documentation/extending/new-markup-command-definition
#(define-markup-command (kai layout props text) (markup?)
  "Set Kai font."
  (interpret-markup layout props
    (markup #:override '(font-name . "Century Schoolbook L,DFKai-SB") text)))

#(define-markup-command (lishu layout props text) (markup?)
  "Set Li Shu font."
  (interpret-markup layout props
    (markup #:override '(font-name . "HanWangLiSuMedium") text)))

#(define-markup-command (yankai layout props text) (markup?)
  "Set YanKai font."
  (interpret-markup layout props
    (markup #:override '(font-name . "HanWangYanKai") text)))

#(define-markup-command (hei layout props text) (markup?)
  "Set Hei font."
  (interpret-markup layout props
    (markup #:override '(font-name . "HanWangHeiHeavy") text)))

#(define-markup-command (ming layout props text) (markup?)
  "Set Ming font."
  (interpret-markup layout props
    (markup #:override '(font-name . "HanWangMingBold") text)))

#(define-markup-command (mingheavy layout props text) (markup?)
  "Set MingHeavy font."
  (interpret-markup layout props
    (markup #:override '(font-name . "HanWangMingHeavy") text)))

#(define-markup-command (serifbold layout props text) (markup?)
  "Set Noto Serif TC Bold font."
  (interpret-markup layout props
    (markup #:override '(font-name . "Noto Serif TC Black") text)))

% Special "paper size" for 16:9 slideshow

#(set! paper-alist (cons '("1920x1080" . (cons (* 16 in) (* 9 in))) paper-alist))

#(set! paper-alist (cons '("1280x720" . (cons (* 9.16 in) (* 5.1525 in))) paper-alist))

#(set! paper-alist (cons '("1280x480" . (cons (* 9.16 in) (* 3.435 in))) paper-alist))

#(set! paper-alist (cons '("1280x540" . (cons (* 9.16 in) (* 3.864375 in))) paper-alist))
