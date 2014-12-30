\version "2.18.2"

\header {
  title = "聖誕歌（一輪明月）"
  composer = "范天祥 (Bliss Wiant) 曲 1934"
  poet = "田景福 詞 1933"
  % Remove default LilyPond tagline
  tagline = ##f
  % tagline = "原詞為「伯利恆」"
}

#(set-global-staff-size 22)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.6\in
  left-margin = 0.75\in
  right-margin = 0.5\in
  bottom-margin = 0.6\in
  markup-system-spacing.basic-distance = #13
  system-system-spacing.basic-distance = #30
  indent = #0
}

global = {
  \key g \major
  \numericTimeSignature
  \time 4/4
  
  % http://lilypond.1069038.n5.nabble.com/changing-size-of-tempo-marks-td150916.html
  %\tweak font-name #"HanWangHeiHeavy"
  %\tempo "齊唱"
}

melody = \relative c'' {
  \global
  \autoBeamOff
  d4. b8 a4 g8 e | d4 e8[ b] d2 | d4. fis8 e4 g8[ a] | b4 e8[ d] b2 |
  a4. b8 d[ b] a4 | g4. b8 a[ g] e4 | d4. g8 a4 b | a4 g e2 |
  d'4. b8 a4 g8 e | d4 e8[ b] d2 | b'4 d8 e b4 a8 g | e1 |
  
  e'4 g8[ e] d4 e8[ d] | b4 d8 b a2 |
  d,8[ e] g[ a] b4 d8[ e] | a,4 d8[ b] g2 |
  \bar "|."
}

fpa = \once \override LyricText.self-alignment-X = #-0.6

verseOne = \lyricmode {
  \set stanza = "1."
  一 輪 明 \fpa 月， 數 點 寒 \fpa 星， 映 照 羊 身 色 如 \fpa 銀，
  數 位 牧 \fpa 人， 和 藹 可 \fpa 親， 圍 坐 草 地 敘 寒 \fpa 溫；
  奇 光 燦 \fpa 爛， 歌 聲 綿 \fpa 蠻， 牧 人 俯 伏 愕 且 \fpa 驚！
  雲 中 天 \fpa 使， 報 告 同 \fpa 聲， 神 子 已 生 白 冷 \fpa 郡。
}

verseTwo = \lyricmode {
  \override LyricText.font-name = #"Gentium Book Basic"
  
  \override VerticalAxisGroup.nonstaff-nonstaff-spacing =
  #'((basic-distance . 0)
     (minimum-distance . 4) ;; <================ more lower space
     (padding . 0.2)
     (stretchability . 0))

  Yī lún míng -- yuè, shù diǎn hán -- xīng,
  yìng -- zhào yáng shēn sè rú yín,
  shù -- wèi mù -- rén, hé -- ’ǎi -- kě -- qīn,
  wéi zuò cǎo -- dì xù hán wēn;
  qí guāng càn -- làn, gē -- shēng mián -- mán,
  mù -- rén fǔ -- fú è qiě jīng!
  Yún zhōng tiān -- shǐ, bào -- gào tóng shēng,
  Shén Zǐ yǐ shēng Bái -- lěng Jùn.
}

verseThree = \lyricmode {
  \set stanza = "2."
  % Lyrics follow here.
  歌 聲 完 \fpa 畢， 奇 光 漸 \fpa 斂， 牧 人 躍 起 同 欣 \fpa 然，
  拋 棄 羊 \fpa 群， 向 前 飛 \fpa 奔， 尋 覓 聖 嬰 去 拜 \fpa 參；
  人 聲 鼎 \fpa 沸， 佳 報 頻 \fpa 傳， 滿 城 歡 樂 齊 頌 \fpa 讚，
  平 民 良 \fpa 友， 萬 眾 救 \fpa 星， 今 日 降 生 人 世 \fpa 間。
}

verseFour = \lyricmode {
  \override LyricText.font-name = #"Gentium Book Basic"
  
  \override VerticalAxisGroup.nonstaff-nonstaff-spacing =
  #'((basic-distance . 0)
     (minimum-distance . 4) ;; <================ more lower space
     (padding . 0.2)
     (stretchability . 0))

  Gē -- shēng wán -- bì, qí guāng jiàn liǎn,
  mù -- rén yuè -- qǐ tóng xīn -- rán,
  pāo -- qì yáng qún, xiàng qián fēi bēn,
  xún -- mì Shèng Yīng qù bài cān;
  rén -- shēng dǐng -- fèi, jiā bào pín -- chuán,
  mǎn chéng huān -- lè qí sòng -- zàn,
  píng -- mín liáng -- yǒu, wàn -- zhòng jiù -- xīng,
  jīn -- rì jiàng -- shēng rén shì -- jiān.
}

verseFive = \lyricmode {
  \set stanza = "3."
  旅 店 數 \fpa 椽， 兀 立 古 \fpa 城； 幾 度 滄 桑 廢 與 \fpa 興！
  今 日 何 \fpa 幸， 聖 母 投 \fpa 宿， 降 生 救 主 在 其 \fpa 中；
  東 方 學 \fpa 者， 不 遠 千 \fpa 里， 來 獻 禮 物 豐 且 \fpa 隆，
  博 愛 救 \fpa 主， 和 平 真 \fpa 神， 今 日 降 生 白 冷 \fpa 郡。
}

verseSix = \lyricmode {
  \override LyricText.font-name = #"Gentium Book Basic"
  
  \override VerticalAxisGroup.nonstaff-nonstaff-spacing =
  #'((basic-distance . 0)
     (minimum-distance . 4) ;; <================ more lower space
     (padding . 0.2)
     (stretchability . 0))

  Lǚ -- diàn shù chuán, wù -- lì gǔ -- chéng;
  jǐ -- dù cāng -- sāng fèi yǔ xìng!
  Jīn -- rì hé xìng, Shèng Mǔ tóu -- sù,
  jiàng -- shēng Jiù Zhǔ zài qí -- zhōng;
  dōng -- fāng xué -- zhě, bù yuǎn qiān -- lǐ,
  lái xiàn -- lǐ wù fēng qiě lóng,
  bó -- ’ài Jiù Zhǔ, hé -- píng zhēn Shén,
  jīn -- rì jiàng -- shēng Bái -- lěng Jùn.
}

\score {
  \new Staff { \melody }
  \addlyrics { \verseOne }
  \addlyrics { \verseTwo }
  \addlyrics { \verseThree }
  \addlyrics { \verseFour }
  \addlyrics { \verseFive }
  \addlyrics { \verseSix }
  \layout { }
  \midi {
    \tempo 4=100
  }
}
