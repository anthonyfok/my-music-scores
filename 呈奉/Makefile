all: 呈奉_頌恩223.pdf 呈奉_頌恩223.jianpu.ily

%.pdf: %.ly %.jianpu.ily
	lilypond $<

%.ly: %.jianpu.ily

%.ily: %
	python ../jianpu-ly.py < $< \
		| sed -ne '/BEGIN JIANPU STAFF/,/END JIANPU STAFF/p' \
		| sed -e 's/% \?\(\\remove Staff_symbol_engraver\)/\1/' \
		> $@
