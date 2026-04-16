#HYMN := 懇求主聖神降臨_Veni_Sancte_Spiritus_頌恩626
#HYMN := 聖神降臨節繼抒詠_Veni_Sancte_Spiritus
HYMN := 聖神降臨節繼抒詠_幻燈

all: $(HYMN).pdf $(HYMN).jianpu.ily $(HYMN)-0.png

%.pdf: %.ly %.jianpu.ily
	lilypond $<

%-0.png: %.pdf
	rm -f $(HYMN)-*.png
	convert -density 139.79 $< $(HYMN).png
	pngquant -f --ext .png --quality 100 $(HYMN)-*.png
	optipng $(HYMN)-*.png

%.ly: %.jianpu.ily

%.ily: %  # %.ily.patch
	python ../jianpu-ly.py < $< \
		| sed -ne '/BEGIN JIANPU STAFF/,/END JIANPU STAFF/p' \
		| sed -e 's/% \?\(\\remove Staff_symbol_engraver\)/\1/' \
		> $@
	#patch -p1 -i $@.patch
