# Work with Node.js, SpiderMonkey and Rhino
JS = node
SRCS = problem01.js problem02.js problem03.js problem04.js problem05.js

.PHONY: all
all: $(SRCS)
	@for src in $(SRCS); do \
		printf '[%s]\n' $$src; \
		$(JS) $$src; \
		echo; \
	done
