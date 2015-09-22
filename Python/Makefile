PYTHON = python
SRCS = problem01.py problem02.py problem03.py problem04.py problem05.py

.PHONY: all
all: $(SRCS)
	@for src in $(SRCS); do \
		printf '[%s]\n' $$src; \
		$(PYTHON) $$src; \
		echo; \
	done
