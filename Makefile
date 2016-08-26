.PHONY: frontg8.pdf all clean

all: frontg8.pdf

frontg8.pdf: latex/frontg8.tex
	@cd latex && \
	latexmk -output-directory=build \
					-pdf \
					-pdflatex="pdflatex -shell-escape -interaction=errorstopmode" \
					-quiet \
					-use-make \
					frontg8 >/dev/null && \
	cp build/frontg8.pdf ..

clean:
	@cd latex && \
	latexmk -CA -output-directory=build >/dev/null && \
	rm -rf build/minted
