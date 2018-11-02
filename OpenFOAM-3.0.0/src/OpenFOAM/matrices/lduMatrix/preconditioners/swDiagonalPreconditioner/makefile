
all:swDiagonalPreconditioner.o
	swar cur $(LIB_ROOT)/libOpenFOAM.a $^

swDiagonalPreconditioner.o:swDiagonalPreconditioner.cpp
	${CPP} $(CPP_FLAGS) -o  $@  -c $(INCLUDE) $<
clean:
	rm *.o
	swar d $(LIB_ROOT)/libOpenFOAM.a swDiagonalPreconditioner.o

