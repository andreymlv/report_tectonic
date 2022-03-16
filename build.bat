@echo off

tectonic -X build

gswin64c -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/default -dCompressFonts=true -dDetectDuplicateImages -dNOPAUSE -dQUIET -dBATCH -sOutputFile=default.pdf build/default/default.pdf
