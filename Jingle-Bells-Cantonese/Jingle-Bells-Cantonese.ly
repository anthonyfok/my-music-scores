% For Christmas Celebration at Salesian Chinese School
% Thanks to Maggie Leung for providing the Cantonese lyrics on 2026-10-27
% Typeset by Anthony Fok, 2026-11-07

\version "2.24.0"

\include "../AMDG/jianpu10a-afok.ly"

\header {
  title = "叮噹叮 (Jingle Bells)"
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
  myStaffSize = #23
  #(define fonts
     (make-pango-font-tree "C059, Noto Serif HK SemiBold"
                           "LilyPond Sans Serif"
                           "LilyPond Monospace"
                           (/ myStaffSize 20)))
  top-margin = 0.75\in
  bottom-margin = 0.75\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  indent = 0
  ragged-last-bottom = ##f
}

global = {
  \key g \major
  \time 2/4
  \autoBeamOff
}

melody = \relative c'' {
  \global

  \repeat volta 2 {
    b8 b b4 | b8 b b4 | b8 d g, a | b2 |
    c8 c c4 | c8 b b4 | b8 a a b | a4 d |
    b8 b b4 | b8 b b4 | b8 d g, a | b2 |
    c8 c c4 | c8 b b8. b16 | d8 d c a | g2 |
    \fine
    \bar "|."
    \break

    d8 b' a g | d4. d16 d | d8 b' a g | e2 |
    e8 c' b a | fis2 | d'8 d c a | b2 |
    d,8 b' a g | d4. d16 d | d8 b' a g | e2 |
    e8 c' b a | d8 d d4 | e8 d c a | g2 |
  }
}

jianpuMelody = {
  \omit Staff.TimeSignature \melody
}


bd = \once \override LyricText.self-alignment-X = #-0.72

verse = \lyricmode {
  叮 噹 \bd 叮， 叮 噹 \bd 叮， 歌 聲 與 笑 \bd 聲；
  聖 誕 到 真 開 \bd 心， 一 起 同 歌 \bd 唱，
  Hey!
  叮 噹 \bd 叮， 叮 噹 \bd 叮， 歌 聲 與 笑 \bd 聲；
  聖 誕 到 真 開 \bd 心， 把 歡 欣 分 給 \bd 你！

  齊 聽 這 雪 \bd 鈴， 齊 齊 來 歡 欣 唱 \bd 詠。
  在 這 聖 誕 \bd 夜， 開 心 笑 瑩 \bd 瑩。
  鈴 聲 不 會 \bd 停， 齊 齊 來 歡 欣 唱 \bd 詠。
  大 家 快 樂 過 聖 \bd 誕， 今 晚 真 高 \bd 興。

  叮 噹 \bd 叮， 叮 噹 \bd 叮， 歌 聲 與 笑 \bd 聲；
  聖 誕 到 真 開 \bd 心， 一 起 同 歌 \bd 唱，
  Hey!
  叮 噹 \bd 叮， 叮 噹 \bd 叮， 歌 聲 與 笑 \bd 聲；
  聖 誕 到 真 開 \bd 心， 把 歡 欣 分 給 \bd 你！
}

jyutping = \lyricmode {
  \override LyricText.self-alignment-X = #-0.3

  "Ding1" "dong1" "ding1," "ding1" "dong1" "ding1," "go1" "sing1" "jyu5" "siu3" "sing1;"
  "Sing3" "daan3" "dou3" "zan1" "hoi1" "sam1," "jat1" "hei2" "tung4" "go1" "coeng3,"
  "Hey!"
  "Ding1" "dong1" "ding1," "ding1" "dong1" "ding1," "go1" "sing1" "jyu5" "siu3" "sing1"
  "Sing3" "daan3" "dou3" "zan1" "hoi1" "sam1," "baa2" "fun1" "jan1" "fan1" "kap1" "nei5!"

  "Cai4" "ting1" "ze5" "syut3" "ling4," "cai4" "cai4" "loi4" "fun1" "jan1" "coeng3" "wing6."
  "Zoi6" "ze5" "Sing3" "daan3" "je6," "hoi1" "sam1" "siu3" "jing4" "jing4"
  "Ling4" "sing1" "bat1" "wui5" "ting4" "cai4" "cai4" "loi4" "fun1" "jan1" "coeng3" "wing6."
  "Daai6" "gaa1" "faai3" "lok6" "gwo3" "Sing3" "daan3," "gam1" "maan5" "zan1" "gou1" "hing3."
}

\score {
  <<
    \new JianpuStaff \with {
      \override VerticalAxisGroup.default-staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 0)
         (padding . 0.4))
      fontSize = #-2
      \override StaffSymbol.staff-space = #(magstep -1.7)
      %\override Flag.staff-space = #(magstep -2)
      %\override Flag.color = red
      %\flagStyleStacked
    }{
      \jianpuMusic { \jianpuMelody }
    }
    \new Staff {
      \clef treble
      \melody
    }
    \addlyrics {
      \override LyricText.font-size = #4
      \override LyricText.font-name = #"Noto Serif HK SemiBold"
      \verse
    }
    \addlyrics {
      \override LyricText.font-size = #-2
      \jyutping
    }
  >>
  \layout {
    \context {
      \Score
      % Force the "D.S." or "D.C." jump text above the staff
      \override JumpScript.direction = #UP
      % Force the "Fine" text above the staff
      \override FineScript.direction = #UP
      % Force section text (like Coda marks or labels) above the staff
      \override SectionLabel.direction = #UP
    }
  }
}

\score {
  <<
    \new Staff {
      \clef treble
      \melody
    }
    \addlyrics { \verse }
  >>
  \midi {
    \tempo 4 = 96
  }
}
