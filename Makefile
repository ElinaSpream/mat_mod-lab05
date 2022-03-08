FILES = $(patsubst %.md, %.docx, $(wildcard *.md))
FILES += $(patsubst %.md, %.pdf, $(wildcard *.md))

LATEX_FORMAT = 

FILTER = --filter pandoc-crossref
#PDF_ENGINE =
#PDF_OPTIONS =
#FORMAT_OPTIONS =

# FILTERS += -F pandoc-citeproc
#ILTERS += -F pandoc-crossref
#PDF_ENGINE += --pdf-engine=lualatex
#PDF_OPTIONS += --number-sections

%.docx: %.md
	-pandoc "$<" $(FILTER) -o "$@"
	
%.pdf: %.md
	-pandoc "$<" $(LATEX_FORMAT) $(FILTER) -o "$@"


#%.pdf: %.md
#	-pandoc "$<" $(FILTERS) $(PDF_ENGINE) $(PDF_OPTIONS) $(FORMAT_OPTIONS) -o "$@"

all: $(FILES)
	@echo $(FILES)

clean:
	-rm $(FILES) *~
