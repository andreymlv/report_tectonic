
all: compile compress

watch:
	tectonic -X watch

clean:
	rm -rf build/

look:
	zathura default.pdf --fork

compile:
	tectonic -X build

compress:
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default \
		-dCompressFonts=true -dDetectDuplicateImages -dNOPAUSE -dQUIET \
		-dBATCH -sOutputFile=default.pdf build/default/default.pdf
