.PHONY: go-install

all: libv8wrap.a go-install

libv8wrap.a : 
	$(CC) -g -c -o lib/plyfile.o link_plyfile_c.c
	ar rcs lib/libplyfile.so lib/plyfile.o 
go-install:
	go install

clean:
	rm -f *.a
