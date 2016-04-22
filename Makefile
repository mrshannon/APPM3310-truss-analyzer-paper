.PHONY: all
all: paper.pdf

paper.pdf: paper.tex biber images

.PHONY: biber
biber: paper.bib paper_precompile
	biber paper

.PHONY: paper_precompile
paper_precompile: paper.tex
	pdflatex paper.tex

.PHONY: clean
clean:
	rm -f *.aux *.bbl *.bcf *.blg *.log *.run.xml


