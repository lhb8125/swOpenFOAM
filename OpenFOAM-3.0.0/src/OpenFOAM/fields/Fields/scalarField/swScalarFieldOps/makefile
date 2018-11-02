all:swScalarFieldOps.o
	swar cur $(LIB_ROOT)/libOpenFOAM.a $^

swScalarFieldOps.o:swScalarFieldOps.cpp
	${CPP} $(CPP_FLAGS) -o $@ -c $(INCLUDE) $<
clean:
	rm *.o
	swar d $(LIB_ROOT)/libOpenFOAM.a swScalarFieldOps.o

