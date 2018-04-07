SONG := 跳飛機

all: $(SONG).pdf $(SONG).jianpu.ily $(SONG).png

%.pdf: %.ly %.jianpu.ily
	lilypond $<

%.png: %.pdf
	rm -f $(SONG).png
	convert -density 139.79 $< $(SONG).png
	pngquant -f --ext .png --quality 100 $(SONG).png
	optipng $(SONG).png

%.ly: %.jianpu.ily

%.ily: % # %.ily.patch
	python ../jianpu-ly.py < $< \
		| sed -ne '/BEGIN JIANPU STAFF/,/END JIANPU STAFF/p' \
		| sed -e 's/% \?\(\\remove Staff_symbol_engraver\)/\1/' \
		> $@
	#patch -p1 -i $@.patch
