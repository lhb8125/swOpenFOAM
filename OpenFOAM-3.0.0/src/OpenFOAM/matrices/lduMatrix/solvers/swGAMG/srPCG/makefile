all:srPCG.o
	swar cur $(LIB_ROOT)/libOpenFOAM.a $^

srPCG.o:srPCG.cpp
	${CPP} $(CPP_FLAGS) -o $@ -c $(INCLUDE) $<
clean:
	rm *.o
	swar d $(LIB_ROOT)/libOpenFOAM.a srPCG.o

