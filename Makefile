
DOCS=	draft-ietf-opsawg-sbom-access.txt \
	draft-ietf-opsawg-sbom-access.xml \
	draft-ietf-opsawg-sbom-access.html

all: $(DOCS)

%.xml:	%.mkd yang.tree
	kramdown-rfc2629 $< > $@
%.html %.txt:	%.xml
	xml2rfc --html $<
	xml2rfc --text $<


yang.tree: ietf-mud-transparency.yang
	pyang -f tree --ietf ietf-mud-transparency.yang > yang.tree
