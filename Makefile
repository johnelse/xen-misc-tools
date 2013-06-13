BINDIR ?= /usr/bin
SBINDIR ?= /usr/sbin
ETCDIR ?= /etc

.PHONY: build install uninstall clean

build:
	obuild configure
	obuild build

install:
	install -D dist/build/dbgring/dbgring $(DESTDIR)$(SBINDIR)/dbgring
	install -D dist/build/fence/fence $(DESTDIR)$(SBINDIR)/fence
	install -D dist/build/memory-summary/memory-summary $(DESTDIR)$(SBINDIR)/memory-summary

uninstall:
	rm -f $(DESTDIR)$(SBINDIR)/dbgring
	rm -f $(DESTDIR)$(SBINDIR)/fence
	rm -f $(DESTDIR)$(SBINDIR)/memory-summary

clean:
	rm -rf dist
