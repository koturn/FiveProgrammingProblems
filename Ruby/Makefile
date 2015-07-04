RUBY = ruby
SRCS = problem01.rb problem02.rb problem03.rb problem04.rb problem05.rb

.PHONY: all
all: $(SRCS)
	@for src in $(SRCS); do \
		printf '[%s]\n' $$src; \
		$(RUBY) $$src; \
		echo; \
	done
