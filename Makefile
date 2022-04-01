
# Linux - gs
# Windows - gswin64c
GHOSTSCRIPT = gswin64c
# Linux - zathura
# Windows - SumatraPDF
PDFPROG = SumatraPDF

all: compile copy compress delete-largest

watch:
	tectonic -X watch

clean:
	rm -rf build/

look:
	$(PDFPROG) default.pdf

compile:
	tectonic -X build

compress:
	$(GHOSTSCRIPT) -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default \
		-dCompressFonts=true -dDetectDuplicateImages -dNOPAUSE -dQUIET \
		-dBATCH -sOutputFile=compressed.pdf build/default/default.pdf

copy:
	cp build/default/default.pdf .

delete-largest:
	delete_largest compressed.pdf default.pdf