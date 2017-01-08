#DIRS=exports spurge storage custs speed
DIRS=exports storage custs speed

catchall: all

all png:
	for i in $(DIRS); do \
		$(MAKE) -C $$i $(MAKECMDGOALS) || exit 1; \
	done

spurge:
	$(MAKE) -C spurge all

clean:
	for i in $(DIRS) spurge; do \
		$(MAKE) -C $$i clean || exit 1; \
	done

.PHONY: all spurge clean png
