CC = gcc
CFLAGS = -Wall -g

u2ps: u2ps.o u2ps_opts.o u2ps_pswr.o u2ps_term.o u2ps_tset.o u2ps_tcsi.o u2ps_unicode.o warn.o

ttf2pt42: ttf2pt42.o warn.o

%: %.o
	$(CC) -o $@ $(filter %.o,$^)

.c.o:
	$(CC) $(CFLAGS) -o $@ -c $<

clean:
	rm -f *.o
