SLAVEFLAGS=-slave -msimd -OPT:IEEE_arith=1

default:slaveUtils.o
	swar cru ${LIB_ROOT}/libOSspecific.a $^
clean:
	rm *.o
	swar d ${LIB_ROOT}/libOSspecific.a slaveUtils.o

slaveUtils.o: slaveUtils.c
	${CC} ${SLAVEFLAGS} -g -c $^
