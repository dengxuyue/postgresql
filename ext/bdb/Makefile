default: all

.NOTPARALLEL: build_unix/Makefile
 
build_unix/Makefile: dist/Makefile.in
	@cd build_unix && \
		../dist/configure --prefix=/home/dxy/local/bdb/5.0.26 \
        --enable-sql --enable-sql_codegen --with-cryptography=yes

all clean: build_unix/Makefile
	@make -C build_unix $@
	@make -C build_unix/sql $@

install uninstall realclean: build_unix/Makefile
	@make -C build_unix $@
