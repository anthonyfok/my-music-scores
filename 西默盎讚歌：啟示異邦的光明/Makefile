HYMN := 西默盎讚歌_幻燈

all: $(HYMN).pdf $(HYMN).jianpu.ily $(HYMN)-0.png

%.pdf: %.ly %.jianpu.ily
	lilypond $<

%-0.png: %.pdf
	rm -f $(HYMN)-*.png
	#convert -density 139.79 $< $(HYMN).png
	pdftoppm $< $(HYMN) -png -scale-to 1920
	# pdftoppm generates files with size 1921×1080?  (2019-06-14)
	# fixing with mogrify...
	mogrify -crop 1920x1080+0+0 $(HYMN)-*.png
	pngquant -f --ext .png --quality 100 $(HYMN)-*.png
	optipng $(HYMN)-*.png

%.ly: %.jianpu.ily

%.ily: %
	python ../jianpu-ly.py < $< \
		| sed -ne '/BEGIN JIANPU STAFF/,/END JIANPU STAFF/p' \
		| sed -e 's/% \?\(\\remove Staff_symbol_engraver\)/\1/' \
		> $@
	if [ -f $@.patch ]; then \
		patch -p1 -i $@.patch; \
	fi
