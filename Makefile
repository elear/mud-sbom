
DOCS=	draft-lear-opsawg-sbom-access.txt \
	draft-lear-opsawg-sbom-access.xml \
	draft-lear-opsawg-sbom-access.html

all: $(DOCS)

%.xml:	%.mkd
	kramdown-rfc2629 $< > $@
%.html %.txt:	%.xml
	xml2rfc --html $<
	xml2rfc --text $<


