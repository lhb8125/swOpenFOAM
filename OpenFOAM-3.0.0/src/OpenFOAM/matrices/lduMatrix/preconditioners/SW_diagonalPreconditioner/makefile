
all:SW_diagonalPreconditioner.o
	swar cur $(LIB_ROOT)/libOpenFOAM.a $^

SW_diagonalPreconditioner.o:SW_diagonalPreconditioner.cpp
	${CPP} $(CPP_FLAGS) -o  $@  -c $(INCLUDE) $<
clean:
	rm *.o
	swar d $(LIB_ROOT)/libOpenFOAM.a SW_diagonalPreconditioner.o

