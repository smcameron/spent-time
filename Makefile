# 'Makefile'
# This makefile taken from here: https://stackoverflow.com/questions/7694887/is-there-a-command-line-utility-for-rendering-github-flavored-markdown
MARKDOWN = pandoc --from markdown_github --to html --standalone
all:	$(patsubst %.md,%.html,$(wildcard *.md)) Makefile

clean:
	rm -f $(patsubst %.md,%.html,$(wildcard *.md))
	rm -f *.bak *~

%.html:	%.md
	@echo "This may take awhile, pandoc is slow..."
	$(MARKDOWN) $< --output $@
