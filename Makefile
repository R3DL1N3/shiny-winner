SOBJ = $(PACKSODIR)/cmsgpack.$(SOEXT)
OBJ = c/cmsgpack.o

CFLAGS += -O2 -fomit-frame-pointer

all: $(SOBJ)

$(SOBJ): $(OBJ)
	mkdir -p $(PACKSODIR)
	$(LD) $(LDSOFLAGS) -o $@ $(OBJ) $(SWISOLIB)

check::
install::
clean:
	rm -f $(OBJ)
distclean: clean
	rm -f $(SOBJ)
