DIRS=exports spurge storage

all:
	for i in $(DIRS); do \
		$(MAKE) -C $$i all || exit 1; \
	done

clean:
	for i in $(DIRS); do \
		$(MAKE) -C $$i clean || exit 1; \
	done
