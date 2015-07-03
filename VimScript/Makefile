VIM = vim
VIMFLAGS = -X -N -u NONE -i NONE -V1 -e --cmd
SRCS = problem01.vim problem02.vim problem03.vim problem04.vim problem05.vim

.PHONY: all
all: $(SRCS)
	@for src in $(SRCS); do \
		printf '[%s]\n' $$src; \
		$(VIM) $(VIMFLAGS) "source $$src | quitall!"; \
		echo; \
	done
