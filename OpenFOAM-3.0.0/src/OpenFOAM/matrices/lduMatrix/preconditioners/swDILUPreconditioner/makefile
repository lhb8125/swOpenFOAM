
all:swDILUPreconditioner.o
	swar cur $(LIB_ROOT)/libOpenFOAM.a $^

swDILUPreconditioner.o:swDILUPreconditioner.cpp
	${CPP} $(CPP_FLAGS) -o  $@  -c $(INCLUDE) $<

clean:
	rm *.o
	swar d $(LIB_ROOT)/libOpenFOAM.a swDILUPreconditioner.o

