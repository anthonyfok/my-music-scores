% Typeset by Anthony Fok using Frescobaldi 2.0.16
% 2014-12-04, Edmonton, AB, Canada

\version "2.18.2"

% Merge rests, see:
% https://code.google.com/p/lilypond/issues/detail?id=1228
\include "definition.ily"

\header {
  title = "奇光燦爛"
  composer = "佚名"
  tagline = ##f
}

#(set-global-staff-size 22)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.5\in
  left-margin = 0.75\in
  right-margin = 0.5\in
  bottom-margin = 0.5\in
  system-system-spacing.basic-distance = #20.5
}

global = {
  \key c \major
  \numericTimeSignature
  \time 4/4
  %\tempo "快板 Allegro"
  \autoBeamOff
}

melody = \relative c'' {
  \global

  g8 a16[ g] c8( a16[ g]) e2 |
  g8 a16[ c] a16[ g e g] d2 |
  
  d8 g g g d16[ e d c] a4 |
  c8. e16 d16[ c] a[ c] g2 |
  
  g'8 g16[ a] c8 c a16[ c a g] e4 |
  g8 g16[ a] c8 c a16[ c a g] e4 |
  
  g8 a16[ c] a16[ g] e[ g] d2 |
  d8 g g g d16[ e d c] a4 |
  c8. e16 d16[ c] a[ c] g2 |
  
  \repeat volta 2 {
    g'8( a16[ g]) e4 c'8( a16[ g]) e4 |
    g8 a16[ c] a16[ g] e[ g] d2 |
    d8 g g4 d16[ e d c] a4 |
    c8. e16 d16[ c a c] g2 |
  
    g'8 g16[ a] c8 c a16 c a[ g] e4 |
    g8 g16[ a] c8 c a16 c a[ g] e4 |
    g8 a16[ c] a16[ g] e[ g] d2 |
    d8 g g g d16[ e] d[ c] a4 |
    c8. e16 d16[ c] a[ g] c2 |
  } % \bar "|."
}

fpa = \once \override LyricText #'self-alignment-X = #-0.6

verseOne = \lyricmode {
  奇 光 燦 \fpa 爛，
  異 星 當 \fpa 天，
  不 知 白 冷 天 \fpa 上，
  今 夜 是 何 \fpa 因？
  忽 然 空 中 奏 \fpa 樂，
  又 聽 歌 聲 四 \fpa 起，
  牧 童 好 夢 \fpa 醒，
  原 來 還 是 天 神 飛 向 報 福 \fpa 音：
  恭 喜 恭 \fpa 賀！ 誠 樸 的 人 \fpa 們，
  救 世 主 誕 生 你 們 白 \fpa 冷！
  天 主 受 享 榮 福 於 \fpa 天，
  良 人 受 享 太 平 於 \fpa 地！
  牧 童 喜 洋 \fpa 洋，
  你 來 我 來 大 家 \fpa 來，
  來 拜 主 耶 \fpa 穌。
}


verseTwo = \lyricmode {
  \override LyricText.font-name = #"Gentium Book Basic"
  
  Qí guāng càn -- làn,
  yì xīng dàng -- tiān,
  bù -- zhī Bái -- lěng tiān -- shàng,
  jīn -- yè shì hé yīn?
  Hū -- rán kōng -- zhōng zòu -- yuè,
  yòu tīng gē -- shēng sì -- qǐ,
  mù -- tóng hǎo mèng xǐng,
  yuán -- lái hái -- shì tiān -- shén fēi xiàng bào Fú -- yīn:
  
  Gōng -- xǐ gōng -- hè! Chéng -- pǔ de rén -- men,
  Jiù -- shì -- zhǔ dàn -- shēng nǐ -- men Bái -- lěng!
  Tiān -- zhǔ shòu xiǎng róng -- fú yú tiān,
  liáng rén shòu xiǎng tài -- píng yú \fpa dì!.
  Mù -- tóng xǐ -- yáng -- yáng,
  nǐ lái, wǒ lái, dà -- jiā lái,
  lái bài Zhǔ Yē -- sū.
}


\score {
  \new Staff { \melody }
  \addlyrics { \verseOne }
  \addlyrics { \verseTwo }
  \layout {
    indent = #0
    \context { \Staff \consists #merge-rests-engraver }
    \context { \Staff \consists #merge-mmrests-engraver }
  }
  \midi {
    \tempo 4=60
  }
}
