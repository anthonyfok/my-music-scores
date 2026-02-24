\version "2.24"
\include "../noh.ily"
\include "../jianpu10a-small.ly"

% #(ly:font-config-display-fonts)

\header {
  title = \markup { \override #'(font-name . "Noto Serif HK Bold" 天皇后喜樂 }
  subtitle = \markup { \override #'(font-name . "Noto Serif HK Bold") 傳統粵語誦唱版 }
  subsubtitle = "A traditional Cantonese chant setting of Regina Cæli"
  copyright = \markup {
    %\override #'(baseline-skip . 2)
    \override #'(font-name . "Noto Serif HK Medium")
    \center-column {
      \small
      \line {
        感謝劉贊願執事獻唱及錄製此曲，並惠允據其錄音植譜。
      }
      \tiny
      \line {
        加拿大愛民頓瑪利亞進教之佑華人天主堂聖詠團
      }
      \teeny
      \line {
        2026年2月以 LilyPond 植譜
      }
    }
  }
  tagline = ##f
}

\paper {
  #(set-paper-size "letter")
  %ragged-bottom = ##f
  %ragged-last-bottom = ##f
  ragged-last = ##f
  top-margin = 0.65\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  bottom-margin = 0.65\in
  markup-system-spacing.padding = #2.5
  %system-system-spacing.padding = #1
  % print-all-headers = ##t
}

#(set-global-staff-size 23)

global = {
  \key f \major
  \cadenzaOn
  %\time 2/4
}

melodyWithDotUnused = \relative c'' {
  \global
  % Music follows here.
  c4 g a c g4.  c4 a f g4. \halfBar
  a4 c a a c4.  c4 a f g4. \bar "|"
  c4 a a c g4.  c4 a f g4. \halfBar
  a4 c c a c g4. \halfBar c4 a f g4. \bar "|"
  
  a4 c a a a c a c4.  c4 a f g4. \halfBar
  a4 c c a g4.        c4 a f g4. \doubleBar
  
  \break
  c4 a f g4. \bar "|"
  
  c4 c4. a4 c a c a c c a c c-- a4 c c c a g4. \halfBar
  \break
  a4 c a a f a g4. | \bar "|"
  c4 a a a a c a a a f g a c a g4. \halfBar
  \break
  a4 a c4-- a4 c a c c a g4. \halfBar
  a4 a a c c c c a c c4. \doubleBar
  f,4. g \doubleBar
}

melody = \relative c'' {
  \global
  % Music follows here.
  c4 g a c g2  c4 a f g2 \halfBar
  a4 c a a c2  c4 a f g2 \bar "|"
  c4 a a c g2    c4 a f g2 \halfBar
  a4 c c a c g2  c4 a f g2 \bar "|"
  
  a4 c a a a c a c2  c4 a f g2 \halfBar
  a4 c c a g2        c4 a f g2 \doubleBar
  
  \break
  c4 a f g2 \doubleBar
  
  c4 c2 a4 c a c a c c a c c-- a4 c c c a g2 \halfBar
  \break
  a4 c a a f a g2 | \bar "|"
  c4 a a a a c a a a f g a c a g2 \halfBar
  \break
  a4 a c4-- a4 c a c c a g2 \halfBar
  a4 a a c c c c a c c2 \doubleBar
  f,2 g \doubleBar
}

bd = \once \override LyricText.self-alignment-X = #-0.72

verse = \lyricmode {
  % Lyrics follow here.
  %天 皇 后 喜 樂
  天 皇 后 喜 \bd 樂， 亞 肋 路 \bd 亞！
  % 3 5 3 3 5 - 5 3 1 2 -
  蓋 爾 攸 孕 \bd 者， 亞 肋 路 \bd 亞！
  % 5 3 3 5 2 - 5 3 1 2 -
  如 前 云 復 \bd 活， 亞 肋 路 \bd 亞！
  % 3 5 5 3 5 2 - 5 3 1 2 -
  為 我 等 祈 天 \bd 主， 亞 肋 路 \bd 亞！

  % 3 5 3 3 3   5 3 5 - 5 3 1 2 -
  童 貞 瑪 利 \bd 亞， 喜 樂 \bd 哉！ 亞 肋 路 \bd 亞！
  % 3 5 5 3 2 - 5 3 1 2 -
  為 主 真 復 \bd 活， 亞 肋 路 \bd 亞！

  % 5 3 1 2 -
  請 眾 同 \bd 禱：

  % 5 5 - 3 5 3 5 3 5 5 3 5 5 - 3 5 5 5 3 2 -
  天 \bd 主， 為 爾 聖 子 耶 穌 基 利 斯 督  我 等 主 之 復 \bd 活，
  % 3 5 3 3 1 3 2 -
  令 天 下 萬 民 喜 \bd 慶。
  % 5 3 3 3 3 5 3 3 3 1 2 3 5 3 2 -
  懇 祈 爾 為 童 貞 聖 母 瑪 利 亞 天 主 之 \bd 母，
  % 3 3 5 - 3 5 3 5 5 3 2 -
  賜 我 等  永 享 常 生 之 喜 \bd 樂，
  % 3 3 3 5 5 5 5 3 5 5 -
  亦 為 是 我 等 主 基 利 斯 \bd 督。
  % 1 - 2 -
  亞 \bd 孟。
}

\score {
  <<
    %
    \new JianpuStaff {
      \jianpuMusic {
        \melody
      }
    }
    %
    \new Staff \with {
      %instrumentName = "Soprano"
      midiInstrument = "choir aahs"
    } { \melody }
    \addlyrics { \verse }
  >>
  \layout {
    indent = #0
    \context {
      \JianpuStaff
      \magnifyStaff #5/7
      %\override Accidental.font-size = #2.5
      %\override NoteHead.font-size = #-2
      %fontSize = #5/7
      \override VerticalAxisGroup.default-staff-staff-spacing =
      #'((basic-distance . 0)
         (minimum-distance . 0)
         (padding . -0))
    }
    \context {
      \Lyrics
      \override LyricText.font-size = #2
      %\override LyricText.font-name = "Noto Sans CJK TC"
      \override LyricText.font-name = #"DFKai-SB"
    }
  }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 100 4)
    }
  }
}
