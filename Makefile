#DIRS=exports spurge storage custs speed
DIRS=exports storage custs speed

catchall: all

all plot open png clean::
	-for i in $(DIRS); do \
		echo $(MAKE) -C $$i $@; \
		$(MAKE) -C $$i $@ || exit 1; \
	done

spurge:
	$(MAKE) -C spurge all

clean::
	$(MAKE) -C spurge clean

.PHONY: all spurge clean png open plot
