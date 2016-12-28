#DIRS=exports spurge storage custs
DIRS=exports storage custs

all:
	for i in $(DIRS); do \
		$(MAKE) -C $$i all || exit 1; \
	done

spurge:
	$(MAKE) -C spurge all

clean:
	for i in $(DIRS) spurge; do \
		$(MAKE) -C $$i clean || exit 1; \
	done

.PHONY: all spurge clean
