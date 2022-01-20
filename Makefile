
all:
	make compile
	make compress

watch:
	tectonic -X watch

clean:
	rm -rf build/

look:
	zathura default.pdf &

compile:
	tectonic -X build

compress:
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=default.pdf build/default/default.pdf
