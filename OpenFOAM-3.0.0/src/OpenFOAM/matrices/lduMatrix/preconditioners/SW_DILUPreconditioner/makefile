
all:SW_DILUPreconditioner.o
	swar cur $(LIB_ROOT)/libOpenFOAM.a $^

SW_DILUPreconditioner.o:SW_DILUPreconditioner.cpp
	${CPP} $(CPP_FLAGS) -o  $@  -c $(INCLUDE) $<

clean:
	rm *.o
	swar d $(LIB_ROOT)/libOpenFOAM.a SW_DILUPreconditioner.o

