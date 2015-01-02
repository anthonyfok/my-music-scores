% Typeset with Frescobaldi 2.17.1
% by Anthony Fok in Edmonton, AB, Canada, on 2014-12-30
% Edited 2015-01-02.

\version "2.18.2"

\header {
  title = "求造物主聖神降臨"
  subtitle = "Veni Creator Spiritus"
  composer = "教會傳統額我略曲（第八調式）- 約第十世紀"
  poet = "Rabanus Maurus (766–856)"
  tagline = "舊頌恩230，新頌恩624"
}

#(set-global-staff-size 21)

\paper {
  #(set-paper-size "letter")
  indent = 0
  ragged-last = ##t
  %system-system-spacing.basic-distance = #30.5
  system-system-spacing.padding = #5
}

global = {
  \key bes \major
  %\time 4/4
  \cadenzaOn
  \autoBeamOff
}

melody = \relative c' {
  \global
  f8 g f[ es] f g[ f] bes c bes4 \bar "|"
  bes8 f g bes c[ bes] c d c4 \bar "|"
  bes8 c[ d] bes[ a] g[ f] bes[ c] f, g bes4 \bar "|"
  a8[ bes] g f[ es] g g[ a g] f es f4 \bar "||"
  \break
  f8[ g f] es4( f) \bar "|."
}

pinyinStanza = \lyricmode {
  \override LyricText.font-name = #"Gentium Book Basic"
  \override VerticalAxisGroup.nonstaff-nonstaff-spacing =
  #'((basic-distance . 0)
     (minimum-distance . 4) ;; <================ more lower space
     (padding . 0.2)
     (stretchability . 0))
}

fpa = \once \override LyricText #'self-alignment-X = #-0.72

verseOne = \lyricmode {
  \set stanza = #"1. "
  求 造 物 主 聖 神 降 \fpa 臨， 眷 顧 祢 的 信 眾 之 \fpa 心。
  \set stanza = #"1. "
  使 祢 所 造 的 眾 靈 \fpa 魂， 充 滿 上 天 聖 寵 甘 \fpa 霖。
}

verseTwo = \lyricmode {
  \pinyinStanza
  Qiú Zào -- wù -- zhǔ Shèng -- shén jiàng -- lín,
  juàn -- gù Nǐ de xìn -- zhòng zhī xīn.
  Shǐ Nǐ suǒ zào de zhòng líng -- hún,
  chōng -- mǎn shàng -- tiān shèng -- chǒng gān -- lín.
}

verseThree = \lyricmode {
  \set stanza = #"2. "
  祢 被 尊 為 安 慰 之 \fpa 神， 至 高 天 主 特 殊 寵 \fpa 恩。
  \set stanza = #"2. "
  祢 是 活 泉、 神 \fpa 火、 聖 \fpa 愛， 眾 善 靈 的 聖 德 馥 \fpa 芬。
}

verseFour = \lyricmode {
  \pinyinStanza
  Nǐ bèi zūn wéi Ān -- wèi zhī Shén,
  zhì -- gāo Tiān -- zhǔ tè -- shū chǒng -- ēn.
  Nǐ shì huó -- quán, shén -- huǒ, shèng ài,
  zhòng shàn líng de shèng -- dé fù -- fēn.  
}

verseFive = \lyricmode {
  \set stanza = #"3. "
  祢 是 七 神 恩 的 施 \fpa 主， 全 能 聖 父 堅 強 右 \fpa 臂。
  \set stanza = #"3. "
  祢 是 聖 父 慨 然 許 \fpa 諾， 作 我 喉 舌 導 我 言 \fpa 語。
}

verseSix = \lyricmode {
  \pinyinStanza
  Nǐ shì qī shén -- ēn de shī -- zhǔ,
  quán -- néng Shèng -- fù jiān -- qiáng yòu bì.
  Nǐ shì Shèng -- fù kǎi -- rán xǔ -- nuò,
  zuò wǒ hóu -- shé dǎo wǒ yán -- yǔ.
}

verseSeven = \lyricmode {
  \set stanza = #"4. "
  求 光 照 我 三 司 五 \fpa 官， 以 祢 聖 愛 充 我 心 \fpa 靈，
  \set stanza = #"4. "
  更 以 祢 的 超 人 力 \fpa 量， 堅 我 積 弱 補 我 諸 \fpa 短。
}

verseEight = \lyricmode {
  \pinyinStanza
  Qiú guāng -- zhào wǒ sān -- sī wǔ -- guān,
  yǐ Nǐ shèng ài chōng wǒ xīn -- líng,
  gèng yǐ Nǐ de chāo -- rén lì -- liàng,
  jiān wǒ jī ruò bǔ wǒ zhū duǎn.
}

verseNine = \lyricmode {
  \set stanza = #"5. "
  驅 逐 敵 仇 悉 使 遠 \fpa 遁， 惠 賜 我 們 諸 事 平 \fpa 順，
  \set stanza = #"5. "
  俾 能 避 免 諸 般 危 \fpa 害， 賴 祢 領 導 安 穩 前 \fpa 進。
}

verseTen = \lyricmode {
  \pinyinStanza
  Qū -- zhú dí -- chóu xī shǐ yuǎn dùn,
  huì cì wǒ -- men zhū -- shì píng -- shùn,
  bǐ néng bì -- miǎn zhū -- bān wéi -- hài,
  lài Nǐ lǐng -- dǎo ān -- wěn qián -- jìn.
}

verseEleven = \lyricmode {
  \set stanza = #"6. "
  使 能 藉 祢 獲 識 聖 \fpa 父， 與 其 唯 一 所 生 聖 \fpa 子。
  \set stanza = #"6. "
  祢 是 父 子 共 發 之 \fpa 神， 我 虔 信 祢 畢 生 不 \fpa 渝。
}

verseTwelve = \lyricmode {
  \pinyinStanza
  Shǐ néng jiè Nǐ huò shí Shèng -- fù,
  yǔ -- qí wéi -- yī suǒ shēng Shèng -- zǐ.
  Nǐ shì Fù Zǐ gòng fā zhī shén,
  wǒ qián xìn Nǐ bì -- shēng bù yú.
}

verseThirteen = \lyricmode {
  \set stanza = #"7. "
  但 願 至 尊 天 主 聖 \fpa 父， 死 而 復 活 天 主 聖 \fpa 子，
  \set stanza = #"7. "
  偕 同 施 慰 天 主 聖 \fpa 神， 獲 享 光 榮 萬 世 無 \fpa 已。
  \set stanza = #"7. "
  阿 門。
}

verseFourteen = \lyricmode {
  \pinyinStanza
  Dàn yuàn zhì -- zūn Tiān -- zhǔ Shèng -- fù,
  sǐ ér fù -- huó Tiān -- zhǔ Shèng -- zǐ,
  xié -- tóng shī wèi Tiān -- zhǔ Shèng -- shén,
  huò xiǎng guāng -- róng wàn -- shì wú yǐ.
  Ā -- mén.
}

\score {
  \new Staff { \melody }
  \addlyrics { \verseOne }
  \addlyrics { \verseTwo }
  \addlyrics { \verseThree }
  \addlyrics { \verseFour }
  \addlyrics { \verseFive }
  \addlyrics { \verseSix }
  \addlyrics { \verseSeven }
  \addlyrics { \verseEight }
  \addlyrics { \verseNine }
  \addlyrics { \verseTen }
  \addlyrics { \verseEleven }
  \addlyrics { \verseTwelve }
  \addlyrics { \verseThirteen }
  \addlyrics { \verseFourteen }
  \layout {
    \context {
      \Staff
      %\override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.basic-distance = #30
      \override VerticalAxisGroup.default-staff-staff-spacing.padding = #50
      \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #30
    }
  }
  \midi {
    \tempo 4=100
  }
}
