HYMN := 基督的召喚_新頌恩397_幻燈

all: $(HYMN).pdf $(HYMN).jianpu.ily $(HYMN)-0.png

%-0.png: %.pdf
	rm -f $(HYMN)-*.png
	convert -density 139.79 $< $(HYMN).png
	pngquant -f --ext .png --quality 100 $(HYMN)-*.png
	optipng $(HYMN)-*.png

%.pdf: %.ly %.jianpu.ily
	lilypond $<

%.ly: %.jianpu.ily

%.ily: %
	python ../jianpu-ly.py < $< \
		| sed -ne '/BEGIN JIANPU STAFF/,/END JIANPU STAFF/p' \
		| sed -e 's/% \?\(\\remove Staff_symbol_engraver\)/\1/' \
		> $@
