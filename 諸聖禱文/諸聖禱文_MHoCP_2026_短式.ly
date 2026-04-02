% 諸聖禱文_MHoCP_2026_短式.ly
% Litany of the Saints (Short Form) for Easter Vigil 2026 at Mary Help of Christians (Chinese) Catholic Parish
%
% 2026-03-23: Engraved with help from GPT-5.3-Codex through GitHub Copilot
% 2026-03-25: Final revisions?
% 2026-03-28: Add \pointAndClickOff
% 2026-04-01: Add missing 耶穌！生活天主之子
%             Remove some saints and petitions for this Short Form
% 2026-04-02: Add Jianpu
%             Change translation of St. Pier Giorgio Frassati to 聖傅喬治·傅拉薩提
% 
% Engraved by Anthony Fok <anthony@anthonyfok.org>. Edmonton, AB, Canada

\version "2.24.2"

\pointAndClickOff

\include "jianpu10a-afok.ly"

\header {
  title = "諸聖禱文"
  subtitle = "瑪利亞進教之佑堂華人天主堂 2026 年至聖之夜逾越節守夜禮專用"
  subsubtitle = "已加 18 位候洗者主保聖名（短式，約 6 分 55 秒）"
  composer = "李振邦 (1923–1984)"
  tagline = ##f
}

% #(set-global-staff-size 19)

\paper {
  #(set-paper-size "letter")
  top-margin = 0.4\in
  bottom-margin = 0.4\in
  left-margin = 0.75\in
  right-margin = 0.75\in
  indent = 0
  %  markup-system-spacing.padding = #3
  markup-system-spacing.padding = #0
  system-system-spacing.padding = #0
  %score-system-spacing.basic-distance = #35
  ragged-right = ##f
  %ragged-bottom = ##f
  %ragged-last-bottom = ##t

  oddFooterMarkup = \markup {
    \unless \on-first-page {
      \fill-line {
        % \on-the-fly #print-page-number-check-first
        % \fromproperty #'page:page-number-string % Page number
        "瑪利亞進教之佑堂華人天主堂 2026 年至聖之夜逾越節守夜禮專用《諸聖禱文》（短式）" % Custom text or copyright
      }
    }
  }
  evenFooterMarkup = \markup {
    \fill-line {
      % \on-the-fly #print-page-number-check-first
      % \fromproperty #'page:page-number-string % Page number
      "瑪利亞進教之佑堂華人天主堂 2026 年至聖之夜逾越節守夜禮專用《諸聖禱文》（短式）" % Custom text or copyright
    }
  }

  %print-first-page-number = ##t
  % LilyPond 2.25?
  %property-defaults.fonts.serif = "Noto Serif HK SemiBold"
  myStaffSize = #20
  #(define fonts
     (make-pango-font-tree "Noto Serif HK SemiBold"
                           "LilyPond Sans Serif"
                           "LilyPond Monospace"
                           (/ myStaffSize 20)))
}

global = {
  \key d \major
  \omit Staff.TimeSignature
  \cadenzaOn
  \autoBeamOff
}

bd = \once \override LyricText.self-alignment-X = #-0.72

kyrieMelody = \relative c'' {
  \global
  \tempo "Recitativo legato"
  a4 fis8[ a] b8 a fis[ e] fis2 \bar "|"
  a4 fis8[ a] b8 a fis[ e] fis2 \bar "||"
  \break

  b8 b4. a8 fis a[ b] b2 \bar "|"
  b8 b4. a8 fis a[ b] b2 \bar "||"
  \break

  a4 fis8[ a] b8 a fis[ e] fis2 \bar "|"
  a4 fis8[ a] b8 a fis[ e] fis2 \bar "||"
}

saintsMelody = \relative c'' {
  \global
  %b\breve a8[ b] d[ cis] b4 \bar "|"
  %\tweak style #'breve
  b1
  a8[ b] d[ cis] b4 \bar "|"
  b8 b a8 fis a8[ b] b4 \bar "||"
}

versiculus = \lyricmode { \set stanza = \markup { \with-color "red" "（領）" } }
responsum = \lyricmode { \set stanza = \markup { \with-color "red" "（眾）" } }
singInMandarin = \lyricmode { \set stanza = \markup { \with-color "red" "（國語）" } }

kyrieText = \lyricmode {
  \versiculus
  上 主！ 求 祢 垂 \bd 憐。
  \responsum
  上 主！ 求 祢 垂 \bd 憐。

  \versiculus
  基 \bd 督！ 求 祢 垂 \bd 憐。
  \responsum
  基 \bd 督！ 求 祢 垂 \bd 憐。

  \versiculus
  上 主！ 求 祢 垂 \bd 憐。
  \responsum
  上 主！ 求 祢 垂 \bd 憐。
}

% reciting tone
rt = \once \override LyricText.self-alignment-X = #LEFT

saintsResponseText = \lyricmode {
  請 為 我 們 祈 \bd 禱。
}

% Our Lady

ourladyText = \lyricmode {
  \versiculus
  \rt 天主之母聖 瑪 利 \bd 亞，
  \responsum
  \saintsResponseText
}

ourladyMHoCText = \lyricmode {
  \rt 聖瑪利亞進 教 之 \bd 佑，
  \saintsResponseText
}

angelMichaelText = \lyricmode {
  \versiculus
  \rt 聖 彌 額 \bd 爾，
  \responsum
  \saintsResponseText
}

angelRaphaelText = \lyricmode {
  \rt 聖 辣 法 \bd 耳，
  \saintsResponseText
}

allAngelsText = \lyricmode {
  \rt 天主的諸 聖 天 \bd 使，
  \saintsResponseText
}

% Patriarchs

stJohnBaptistText = \lyricmode {
  \versiculus
  \rt 聖若 翰 洗 \bd 者，
  \responsum
  \saintsResponseText
}

stJosephText = \lyricmode {
  _ 聖 若 \bd 瑟，
  \saintsResponseText
}

% Apostles and Disciples of the Lord

stPeterStPaulText = \lyricmode {
  \versiculus
  \rt 聖伯多祿及 聖 保 \bd 祿，
  \responsum
  \saintsResponseText
}

stAndrewStJohnText = \lyricmode {
  \rt 聖安德肋及 聖 若 \bd 望，
  \saintsResponseText
}

stMaryMagdaleneText = \lyricmode {
  \rt 聖瑪利亞瑪 達 肋 \bd 納，
  \saintsResponseText
}

% Martyrs
stStephenText = \lyricmode {
  \versiculus
  % Saint Stephen, (34)  
  \rt 聖 斯 德 \bd 望，
  \responsum
  \saintsResponseText
}

stIgnatiusStLawrenceText = \lyricmode {
  \rt 聖依納爵及聖 老 楞 \bd 佐，
  % St. Ignatius of Antioch (108), St. Lawrence (258)
  \saintsResponseText
}

stJohnBrebeufHolyCanadianMartyrsText = \lyricmode {
  \rt 聖若望·貝巴及加拿大殉 道 聖 \bd 人，
  % Saint John de Brebeuf, and the Holy Canadian Martyrs (1649)
  \saintsResponseText
}

stZhangDapengText = \lyricmode {
  \rt 聖 張 大 \bd 鵬，
  % Saint Joseph Zhang Dapeng (1815)
  \saintsResponseText
}

stPerpetuaStFelicityText = \lyricmode {
  \rt 聖女伯爾都亞及聖女 斐 利 \bd 琪，
  % Saint Perpetua and Saint Felicity, (165)
  \saintsResponseText
}

stAgnesText = \lyricmode {
  \rt 聖女 依 溺 \bd 斯，
  % Saint Agnes, (304)
  \saintsResponseText
}

stCatherineAlexandriaText = \lyricmode {
  \rt "Saint Catherine of Alex" -- an -- dri -- a,
  %\rt 聖女加大利納·亞 歷 山 \bd 大，
  % St. Catherine of Alexandria, (305)
  \saintsResponseText
}

stAnnaWangText = \lyricmode {
  \rt 聖女 王 亞 \bd 納，
  % St. Anna Wang (1900)
  \saintsResponseText
}

stEdithSteinText = \lyricmode {
  \rt 聖女埃迪特 施 泰 \bd 因，
  % St. Edith (Stein) (1942) ^^2026^^
  \saintsResponseText
}

% Bishops and Doctors of the Church

stGregoryStAugustineText = \lyricmode {
  \versiculus
  \rt 聖額我略及聖 奧 思 \bd 定，
  % Saint Gregory, // Saint Augustine,
  \responsum
  \saintsResponseText
}

stAthanasiusStBasilText = \lyricmode {
  \rt 聖亞大納修及聖 巴 西 \bd 略，
  % Saint Athanasius, // Saint Basil,
  \saintsResponseText
}

stMartinText = \lyricmode {
  \rt 聖 瑪 爾 \bd 定，
  % Saint Martin,  (Bishop of Tours, 397)
  \saintsResponseText
}

stPatrickText = \lyricmode {
  _ Saint Pat -- rick,
  % 聖 博 \bd 德，
  % St. Patrick, (c. 460 or c. 493) ^^2026^^
  \saintsResponseText
}

stAidanText = \lyricmode {
  _ 聖 艾 \bd 丹，
  % St. Aidan (651) ^^2026^^
  \saintsResponseText
}

stEugeneText = \lyricmode {
  _ 聖 猶 \bd 真，
  % St. Eugene, (657) ^^2026^^
  \saintsResponseText
}

stFrançoisLavalText = \lyricmode {
  \rt "聖方濟各" 拉 瓦 \bd 爾，
  % St. François de Laval, (1708) ^^Canada, first Bishop of Québec^^ (Diocese of Calgary Guide)
  \saintsResponseText
}

stPopeJohnXXIIIText = \lyricmode {
  \rt 聖若望二 十 三 \bd 世，
  % Saint Pope John the Twenty-third,~~ (Diocese of Calgary Guide)
  \saintsResponseText
}

stPopeJohnPaulIIText = \lyricmode {
  \rt 聖若望保 祿 二 \bd 世，
  % Saint Pope John Paul the Second, ^^2026^^
  \saintsResponseText
}

% Priests and Religious

stBenedictText = \lyricmode {
  \versiculus
  _ 聖 本 \bd 篤，
  % Saint Benedict,
  \responsum
  \saintsResponseText
}

stFrancisStDominicText = \lyricmode {
  \rt 聖方濟及 聖 道 \bd 明，
  % Saint Francis and Saint Dominic,
  \saintsResponseText
}

stFrancisXavierText = \lyricmode {
  \rt 聖方濟各 沙 勿 \bd 略，
  % Saint Francis Xavier, (1552)
  \saintsResponseText
}

stJohnVianneyText = \lyricmode {
  \rt 聖若翰 維 雅 \bd 納，
  % Saint John Vianney, (1859)
  \saintsResponseText
}

stBrotherAndréText = \lyricmode {
  \rt 聖安德 \bd "烈     ·" 貝 \bd 塞，
  % Saint Brother André, (1937) ^^Canada^^ (canonized 2010)
  \saintsResponseText
}

stGenevièveText = \lyricmode {
  \rt 聖女 珍 妮 \bd 維，
  % (熱納維耶芙)
  % St. Geneviève (consecrated virgin, 502–512) ^^2026^^
  \saintsResponseText
}

stHildegardBingenText = \lyricmode {
  \rt 聖女 賀 德 \bd 佳，
  % St. Hildegard of Bingen (1179)  ^^2026^^ (virgin, and religious; Doctor of the Church, but very recent addition by Pope Benedict XVI)
  \saintsResponseText
}

stClareText = \lyricmode {
  \rt 聖 女 嘉 \bd 勒，
  % St. Clare (1253) ^^2026^^
  \saintsResponseText
}

stCatherineSienaText = \lyricmode {
  \singInMandarin
  \rt "聖女加大利納 ·" 錫 耶 \bd 納，
  % Saint Catherine of Siena, (1380) ^^2026^^ (also in Diocese of Calgary's guide; in XXIV (2009)
  \saintsResponseText
}

stTeresaJesusText = \lyricmode {
  \rt 聖女 大 德 \bd 蘭，
  % Saint Teresa of Jesus, (1582)
  \saintsResponseText
}

% Combined to save time
stMarieIncarnationText = \lyricmode {
  \singInMandarin
  \rt 降生聖言的聖女瑪利亞，
  \once \override LyricText.color = #white 白
}
stMargueriteBourgeoysText = \lyricmode {
  \rt 聖女瑪加利大·布勒瓦，及
  \once \override LyricText.color = #white 白
}
stMargueriteDYouvilleText = \lyricmode {
  \rt 聖女瑪加利大·德 尤 維 \bd 爾，
  % \responsum
  \saintsResponseText
}

stThereseLisieuxText = \lyricmode {
  \rt 聖女 小 德 \bd 蘭，
  % Saint Thérèsa of Lisieux, (1897)  ^^2026^^ (also in 李振邦神父諸聖禱文)
  \saintsResponseText
}

% Laity

stPierGiorgioFrassatiText = \lyricmode {
  \versiculus
  %\rt "聖伯鐸·喬治 ·" 梵 薩 \bd 蒂，
  % Chinese translation from https://www.facebook.com/reel/800534115985835
  \rt "聖傅喬治 · 傅" 拉 薩 \bd 提，
  % St. Pier Giorgio Frassati (1925) ^^2026^^
  \responsum
  \saintsResponseText
}

stMonicaText = \lyricmode {
  \rt 聖婦 莫 尼 \bd 加，
  % Saint Monica, (387) ^^2026^^
  \saintsResponseText
}

stKateriTekakwithaText = \lyricmode {
  %\rt 聖女加特麗·泰 卡 維 \bd 達，
  \rt "Saint Kateri Te" -- ka -- kwi -- tha,
  % Saint Kateri Tekakwitha, (1680) ^^2026^^ ^^Canada^^
  \saintsResponseText
}

allHolyMenWomenText = \lyricmode {
  \rt 天上諸 位 聖 \bd 人，
  % All holy men and women, saints of God,
  \saintsResponseText
}

saveUsMelody = \relative c'' {
  \global
  % a\breve
  a1
  b4 fis \bar "|"
  a8 b a fis e4 fis \bar "||"
}

saveUsResponseText = \lyricmode {
  求 主 拯 救 我 \bd 們。
}

saveUsTextA = \lyricmode {
  \versiculus
  \rt 望主 垂 \bd 憐，
  \responsum
  \saveUsResponseText
}
saveUsTextB = \lyricmode {
  \rt 從一切災 禍 \bd 中，
  \saveUsResponseText
}
saveUsTextC = \lyricmode {
  \rt 從罪 惡 \bd 中，
  \saveUsResponseText
}
saveUsTextD = \lyricmode {
  \rt 從永 死 \bd 中，
  \saveUsResponseText
}
saveUsTextE = \lyricmode {
  \rt 因主降生成人的 奧 \bd 蹟，
  \saveUsResponseText
}
saveUsTextF = \lyricmode {
  \rt 因主的聖死與 復 \bd 活，
  \saveUsResponseText
}
saveUsTextG = \lyricmode {
  \rt 因聖神的 降 \bd 臨，
  \saveUsResponseText
}

hearUsMelody = \relative c'' {
  \global
  % a\breve
  a1
  fis8[ a] b4 fis \bar "|"
  a8 b a fis e4 fis \bar "||"
}

hearUsResponseText = \lyricmode {
  求 主 俯 聽 我 \bd 們。
}

hearUsTextA = \lyricmode {
  \versiculus
  \rt 我 們 罪 \bd 人，
  \responsum
  \hearUsResponseText
}
hearUsTextB = \lyricmode {
  \rt 求主管理和保存祂的 聖 教 \bd 會，
  \hearUsResponseText
}
hearUsTextC = \lyricmode {
  \rt 求主保護教宗及教會各級聖 職 人 \bd 員，
  \hearUsResponseText
}
hearUsTextD = \lyricmode {
  \rt 求主賜全人類獲享和平與真正 的 和 \bd 諧，
  \hearUsResponseText
}
hearUsTextE = \lyricmode {
  \rt 求主激勵我們，誠心 的 奉 \bd 獻，
  \hearUsResponseText
}
hearUsTextF = \lyricmode {
  \rt 求主以恩寵祝聖這賜人新 生 的 \bd 水，
  \hearUsResponseText
}
hearUsTextG = \lyricmode {
  \rt 求主藉聖洗聖事賜給這些特選者再生 的 恩 \bd 寵，
  \hearUsResponseText
}
hearUsTextH = \lyricmode {
  \rt 耶穌！生活天 主 之 \bd 子，
  \hearUsResponseText
}

closingMelody = \relative c'' {
  \global
  b8 b4. b8 b8 a8 fis8 a8[ b] b4 \bar "|"
  b8 b4. b8 b8 a8 fis8 a8[ b] b4 \bar "||"

  b8 b4. b8 b8 a8 fis8 a8[ b] b4 \bar "|"
  b8 b4. b8 b8 a8 fis8 a8[ b] b4 \bar "|."
}

closingText = \lyricmode {
  \versiculus
  基 \bd 督！ 求 祢 俯 聽 我 們。
  \responsum
  基 \bd 督！ 求 祢 俯 聽 我 們。

  \versiculus
  基 \bd 督！ 求 祢 垂 允 我 \bd 們。
  \responsum
  基 \bd 督！ 求 祢 垂 允 我 \bd 們。
}

\layout {
  \context {
    \Lyrics
    \override LyricText.font-size = #1
    \override VerticalAxisGroup.nonstaff-nonstaff-spacing.padding = #0.825
    %\override VerticalAxisGroup.staff-affinity = #DOWN
    %\override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #2
    %\override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #2
  }
  \context {
    \Staff
    \override VerticalAxisGroup.staff-padding = #1
  }
}

spaceBetweenScores = \markup { \vspace #0.0 }
%spaceBetweenScores = \markup {}

jianpuStaff = #(define-music-function (melody) (ly:music?)
                 #{
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
                   } {
                     \jianpuMusic { $melody }
                   }
                 #})

\score {
  <<
    \jianpuStaff { \kyrieMelody }
    \new Staff \with {
      % instrumentName = "領/眾"
    } {
      \new Voice = "kyrie" { \kyrieMelody }
    }
    \new Lyrics \lyricsto "kyrie" { \kyrieText }
  >>
}

\spaceBetweenScores

\score {
  <<
    \jianpuStaff { \saintsMelody }
    \new Staff \with {
      % instrumentName = "領/眾"
    } {
      \new Voice = "ourlady" {
        \textMark \markup { \small \with-color "teal" "聖母瑪利亞 Our Lady" }
        \saintsMelody
      }
    }
    \new Lyrics \lyricsto "ourlady" { \ourladyText }
    \new Lyrics \lyricsto "ourlady" { \ourladyMHoCText }
  >>
}

\spaceBetweenScores

\score {
  <<
    \jianpuStaff { \saintsMelody }
    \new Staff {
      \new Voice = "angels" {
        \textMark \markup { \small \with-color "teal" "天使 Angels" }
        \saintsMelody
      }
    }
    \new Lyrics \lyricsto "angels" { \angelMichaelText }
    \new Lyrics \lyricsto "angels" { \angelRaphaelText }
    \new Lyrics \lyricsto "angels" { \allAngelsText }
  >>
}

\spaceBetweenScores

\score {
  <<
    \jianpuStaff { \saintsMelody }
    \new Staff {
      \new Voice = "patriarchsProphets" {
        \textMark \markup { \small \with-color "teal" "聖祖及先知 Patriarchs and Prophets" }
        \saintsMelody
      }
    }
    \new Lyrics \lyricsto "patriarchsProphets" { \stJohnBaptistText }
    \new Lyrics \lyricsto "patriarchsProphets" { \stJosephText }
  >>
}

\spaceBetweenScores

\score {
  <<
    \jianpuStaff { \saintsMelody }
    \new Staff {
      \new Voice = "apostles" {
        \textMark \markup { \small \with-color "teal" "宗徒及聖徒 Apostles and Disciples of the Lord" }
        \saintsMelody
      }
    }
    \new Lyrics \lyricsto "apostles" { \stPeterStPaulText }
    \new Lyrics \lyricsto "apostles" { \stAndrewStJohnText }
    \new Lyrics \lyricsto "apostles" { \stMaryMagdaleneText }
  >>
}

%\spaceBetweenScores

\score {
  <<
    \jianpuStaff { \saintsMelody }
    \new Staff {
      \new Voice = "martyrs" {
        \textMark \markup { \small \with-color "teal" "殉道聖人 Martyrs" }
        \saintsMelody
      }
    }
    \new Lyrics \lyricsto "martyrs" { \stStephenText }
    \new Lyrics \lyricsto "martyrs" { \stIgnatiusStLawrenceText }
    \new Lyrics \lyricsto "martyrs" { \stJohnBrebeufHolyCanadianMartyrsText }
    \new Lyrics \lyricsto "martyrs" { \stZhangDapengText }
    \new Lyrics \lyricsto "martyrs" { \stPerpetuaStFelicityText }
    \new Lyrics \lyricsto "martyrs" { \stAgnesText }
    \new Lyrics \lyricsto "martyrs" { \stCatherineAlexandriaText }
    \new Lyrics \lyricsto "martyrs" { \stAnnaWangText }
    \new Lyrics \lyricsto "martyrs" { \stEdithSteinText }
  >>
}

\spaceBetweenScores

\score {
  <<
    \jianpuStaff { \saintsMelody }
    \new Staff {
      \new Voice = "bishops" {
        \textMark \markup { \small \with-color "teal" "主教及聖師 Bishops and Doctors of the Church" }
        \saintsMelody
      }
    }
    \new Lyrics \lyricsto "bishops" { \stGregoryStAugustineText }
    \new Lyrics \lyricsto "bishops" { \stAthanasiusStBasilText }
    \new Lyrics \lyricsto "bishops" { \stMartinText }
    \new Lyrics \lyricsto "bishops" { \stPatrickText }
    \new Lyrics \lyricsto "bishops" { \stAidanText }
    \new Lyrics \lyricsto "bishops" { \stEugeneText }
    % \new Lyrics \lyricsto "bishops" { \stFrançoisLavalText }
    % \new Lyrics \lyricsto "bishops" { \stPopeJohnXXIIIText }
    \new Lyrics \lyricsto "bishops" { \stPopeJohnPaulIIText }
  >>
}

\spaceBetweenScores

\score {
  <<
    \jianpuStaff { \saintsMelody }
    \new Staff {
      \new Voice = "priestsReligious" {
        \textMark \markup { \small \with-color "teal" "司鐸及修道聖人 Priests and Religious" }
        \saintsMelody
      }
    }
    \new Lyrics \lyricsto "priestsReligious" { \stBenedictText }
    \new Lyrics \lyricsto "priestsReligious" { \stFrancisStDominicText }
    \new Lyrics \lyricsto "priestsReligious" { \stFrancisXavierText }
    \new Lyrics \lyricsto "priestsReligious" { \stJohnVianneyText }
    % \new Lyrics \lyricsto "priestsReligious" { \stBrotherAndréText }
    \new Lyrics \lyricsto "priestsReligious" { \stGenevièveText }
    \new Lyrics \lyricsto "priestsReligious" { \stHildegardBingenText }
    \new Lyrics \lyricsto "priestsReligious" { \stClareText }
    \new Lyrics \lyricsto "priestsReligious" { \stCatherineSienaText }
    \new Lyrics \lyricsto "priestsReligious" { \stTeresaJesusText }
    % \new Lyrics \lyricsto "priestsReligious" { \stMarieIncarnationText }
    % \new Lyrics \lyricsto "priestsReligious" { \stMargueriteBourgeoysText }
    % \new Lyrics \lyricsto "priestsReligious" { \stMargueriteDYouvilleText }
    \new Lyrics \lyricsto "priestsReligious" { \stThereseLisieuxText }
  >>
}

\spaceBetweenScores

\score {
  <<
    \jianpuStaff { \saintsMelody }
    \new Staff {
      \new Voice = "laity" {
        \textMark \markup { \small \with-color "teal" "平信徒 Laity" }
        \saintsMelody
      }
    }
    \new Lyrics \lyricsto "laity" { \stPierGiorgioFrassatiText }
    \new Lyrics \lyricsto "laity" { \stMonicaText }
    \new Lyrics \lyricsto "laity" { \stKateriTekakwithaText }
    \new Lyrics \lyricsto "laity" { \allHolyMenWomenText }
  >>
}

\spaceBetweenScores

\score {
  <<
    \jianpuStaff { \saveUsMelody }
    \new Staff {
      \new Voice = "saveus" { \saveUsMelody }
    }
    \new Lyrics \lyricsto "saveus" { \saveUsTextA }
    \new Lyrics \lyricsto "saveus" { \saveUsTextB }
    \new Lyrics \lyricsto "saveus" { \saveUsTextC }
    \new Lyrics \lyricsto "saveus" { \saveUsTextD }
    \new Lyrics \lyricsto "saveus" { \saveUsTextE }
    \new Lyrics \lyricsto "saveus" { \saveUsTextF }
    \new Lyrics \lyricsto "saveus" { \saveUsTextG }
  >>
}

\spaceBetweenScores

\score {
  <<
    \jianpuStaff { \hearUsMelody }
    \new Staff {
      \new Voice = "hearus" { \hearUsMelody }
    }
    \new Lyrics \lyricsto "hearus" { \hearUsTextA }
    % \new Lyrics \lyricsto "hearus" { \hearUsTextB }
    % \new Lyrics \lyricsto "hearus" { \hearUsTextC }
    % \new Lyrics \lyricsto "hearus" { \hearUsTextD }
    % \new Lyrics \lyricsto "hearus" { \hearUsTextE }
    \new Lyrics \lyricsto "hearus" { \hearUsTextF }
    \new Lyrics \lyricsto "hearus" { \hearUsTextG }
    \new Lyrics \lyricsto "hearus" { \hearUsTextH }
  >>
}

\spaceBetweenScores

\score {
  <<
    \jianpuStaff { \closingMelody }
    \new Staff {
      \new Voice = "closing" { \closingMelody }
    }
    \new Lyrics \lyricsto "closing" { \closingText }
  >>
}

\spaceBetweenScores
