# CPP = swg++453
# HOST_FLAGS  = -host
# SLAVE_FLAGS = -slave
# ROOT = /home/export/online1/systest/swrh/guhf/Openfoam/source/OpenFOAM_SW/OpenFOAM-3.0.0
# LIB_ROOT = ${ROOT}/platforms/linux64swgccDPInt64Opt/lib
# INCLUDE=-fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=64 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include

all:swNegSumDiag.o swNegSumDiag_reg.o swNegSumDiag_host.o swNegSumDiag_slave.o
	swar cr $(LIB_ROOT)/libOpenFOAM.a $^

swNegSumDiag_reg.o:swNegSumDiag_reg.cpp
#	${CC} ${HOST_FLAGS} -w -o $@ -c $(INCLUDE) $<
	sw5CC -host -O1 -o $@ -c $(C_INCLUDE) $<
swNegSumDiag_host.o:swNegSumDiag_host.c
	${CC} ${HOST_FLAGS} -o $@ -c $(INCLUDE) $<
swNegSumDiag.o:swNegSumDiag.c
	${CC} ${HOST_FLAGS} -o $@ -c $(INCLUDE) $<
swNegSumDiag_slave.o:swNegSumDiag_slave.c
	${CC} ${SLAVE_FLAGS} -msimd -O1 -o $@ -c $(C_INCLUDE) $<
clean:
	rm *.o
	swar d $(LIB_ROOT)/libOpenFOAM.a swNegSumDiag_reg.o swNegSumDiag_host.o swNegSumDiag_slave.o swNegSumDiag.o

