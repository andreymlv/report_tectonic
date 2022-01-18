all:
	make compile

compile:
	sh latexdockercmd.sh latexmk -cd -f -interaction=nonstopmode -pdf main.tex
	mv main.pdf report-template.pdf

install:
	wget https://raw.githubusercontent.com/polytechnic-templates/xelatex-docker/main/latexdockercmd.sh -O latexdockercmd.sh
	wget https://raw.githubusercontent.com/polytechnic-templates/xelatex-docker/main/.latexmkrc -O .latexmkrc
	chmod a+x latexdockercmd.sh

clean:
	rm -rf _minted-main/
	rm -rf .cache/
	rm settings/*.aux
	rm templates/*.aux
	rm *.bbl
	rm *.bcf
	rm *.blg
	rm *.fdb_latexmk
	rm *.fls
	rm *.log
	rm *.out
	rm *.run.xml
	rm *.toc
	rm *.xwm
	rm *.pdf
	rm *.aux
