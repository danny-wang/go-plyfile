.PHONY: go-install

all: libv8wrap.a go-install

libv8wrap.a : v8wrap.cc v8.go
	$(CC) -g -c -o plyfile.o link_plyfile_c.c
	ar rcs libplyfile.so plyfile.o 

go-install:
	go install

clean:
	rm -f *.a