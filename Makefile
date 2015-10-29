LIB = lzf.so
OBJS = llzf.o \
	lzf_c.o \
	lzf_d.o

LLIBS = -llua -lm
CFLAGS = -c -O3 -Wall
LDFLAGS = -O3 --shared -fPIC

all : $(LIB)

$(LIB): $(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS) $(LLIBS)

$(OBJS) : %.o : %.c
	$(CC) -o $@ $(CFLAGS) $<

clean : 
	rm -f $(OBJS) $(LIB)

.PHONY : clean

