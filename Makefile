
TMUX_VERSION := 2.8

.PHONY: default bootstrap build

default:

bootstrap: tmux/configure

build:
	cd tmux/; ./configure; make; DESTDIR=/target make install

tmux/configure:
	mkdir -p tmux/
	curl -L "https://github.com/tmux/tmux/releases/download/$(TMUX_VERSION)/tmux-$(TMUX_VERSION).tar.gz" | tar xz -C ./tmux/ --strip-components 1


