all: swField.o swField_host.o swField_slave.o
	swar cur $(LIB_ROOT)/libOpenFOAM.a $^

swField.o: swField.cpp
	${CPP} $(CPP_FLAGS) -o $@ -c $(INCLUDE) $<

swField_host.o: swField_host.c
	${CC} $(HOST_FLAGS) -c -o $@ $(C_INCLUDE) $<

swField_slave.o: swField_slave.c
	${CC} $(SLAVE_FLAGS) -msimd -c -o $@ $(C_INCLUDE) $<

clean:
	rm *.o
	swar d $(LIB_ROOT)/libOpenFOAM.a swField.o swField_host.o swField_slave.o

