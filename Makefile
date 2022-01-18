all:
	make compile

compile:
	sh latexdockercmd.sh latexmk -cd -f -interaction=nonstopmode -pdf main.tex
