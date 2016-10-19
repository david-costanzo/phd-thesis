# LaTeX Makefile
FILE=thesis

all: $(FILE).pdf

$(FILE).pdf: $(FILE).tex local.tex infrule.tex bnf.tex abstract.tex intro.tex security.tex ifc.bib locality.tex concrete.tex abslogic.tex metatheory.tex pldi/methodology.tex pldi/informal.tex pldi/casestudy-def.tex pldi/casestudy-proof.tex pldi/related.tex pldi/limitations.tex pldi/intro.tex pldi/appendix.tex pldi/policies.tex timing.tex semantics-post.tex logic-post.tex ack.tex
	pdflatex $(FILE)
	pdflatex $(FILE)
	bibtex $(FILE)
	pdflatex $(FILE)
	pdflatex $(FILE)