
DOCS=	draft-lear-opsawg-mud-sbom.txt \
	draft-lear-opsawg-mud-sbom.xml \
	draft-lear-opsawg-mud-sbom.html

all: $(DOCS)

%.xml:	%.mkd
	kramdown-rfc2629 $< > $@
%.html %.txt:	%.xml
	xml2rfc --html $<
	xml2rfc --text $<


