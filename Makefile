BINDIR ?= /usr/bin
SBINDIR ?= /usr/sbin
ETCDIR ?= /etc

.PHONY: build install uninstall clean

build:
	obuild configure
	obuild build

install:
	install -D dist/build/fence/fence $(DESTDIR)$(SBINDIR)/fence

uninstall:
	rm -f $(DESTDIR)$(SBINDIR)/fence

clean:
	rm -rf dist
