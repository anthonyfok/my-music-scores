HYMN := 基督聖體聖血節繼抒詠_幻燈

all: $(HYMN).pdf $(HYMN).jianpu.ily $(HYMN)-1.png

%.pdf: %.ly %.jianpu.ily
	lilypond $<

%-1.png: %.pdf
	rm -f $(HYMN)-*.png
	pdftoppm $< $(HYMN) -png -scale-to 1280
	pngquant -f --ext .png --quality 100 $(HYMN)-*.png
	optipng $(HYMN)-*.png

%.ly: %.jianpu.ily

%.ily: %  # %.ily.patch
	python ../jianpu-ly.py < $< \
		| sed -ne '/BEGIN JIANPU STAFF/,/END JIANPU STAFF/p' \
		| sed -e 's/% \?\(\\remove Staff_symbol_engraver\)/\1/' \
		> $@
	#patch -p1 -i $@.patch
