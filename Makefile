all:
	make compile

compile:
	sh latexdockercmd.sh latexmk -cd -f -interaction=nonstopmode -pdf main.tex
	mv main.pdf report-template.pdf

install:
	wget https://raw.githubusercontent.com/polytechnic-templates/xelatex-docker/main/latexdockercmd.sh -O latexdockercmd.sh
	wget https://raw.githubusercontent.com/polytechnic-templates/xelatex-docker/main/.latexmkrc -O .latexmkrc
	chmod a+x latexdockercmd.sh
