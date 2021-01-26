
DOCS=	draft-ietf-opsawg-sbom-access.txt \
	draft-ietf-opsawg-sbom-access.xml \
	draft-ietf-opsawg-sbom-access.html

all: $(DOCS)

%.xml:	%.mkd
	kramdown-rfc2629 $< > $@
%.html %.txt:	%.xml
	xml2rfc --html $<
	xml2rfc --text $<


