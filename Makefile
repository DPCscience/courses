all: histogram.tsv

clean:
	rm -f words.txt histogram.tsv

words.txt: /usr/share/dict/words
	cp /usr/share/dict/words words.txt
	
histogram.tsv: histogram.r words.txt
	Rscript $<