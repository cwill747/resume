.PHONY: all test

all: resume.pdf resume.png

resume.pdf:
	xelatex resume.tex

resume.png:
	convert -density 576 resume.pdf resume.png

test:
	cd examples/ ; for f in *.tex; do xelatex $$f; done

clean:
	$(RM) resume.pdf resume.png