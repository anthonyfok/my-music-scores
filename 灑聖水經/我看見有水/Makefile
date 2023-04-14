HYMN := 我看見有水_李振邦

all: $(HYMN).pdf $(HYMN).jianpu.ily $(HYMN)-0.png

%.pdf: %.ly %.jianpu.ily
	lilypond $<

%-0.png: %.pdf
	rm -f $(HYMN)-*.png
	#convert -density 139.79 $< $(HYMN).png
	pdftoppm $< $(HYMN) -png -scale-to 1920
	pngquant -f --ext .png --quality 100 $(HYMN)-*.png
	optipng $(HYMN)-*.png

%.ly: %.jianpu.ily

%.ily: %
	python ../jianpu-ly.py < $< \
		| sed -ne '/BEGIN JIANPU STAFF/,/END JIANPU STAFF/p' \
		| sed -e 's/% \?\(\\remove Staff_symbol_engraver\)/\1/' \
		> $@
	cp -avi $@ $@.orig
	patch -p1 -i $@.patch
