# CPP = swg++453
# HOST_FLAGS  = -host
# SLAVE_FLAGS = -slave
# ROOT = /home/export/online1/systest/swrh/guhf/Openfoam/source/OpenFOAM_SW/OpenFOAM-3.0.0
# LIB_ROOT = ${ROOT}/platforms/linux64swgccDPInt64Opt/lib
# INCLUDE=-fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=64 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include

all:RlmpiInitializer.o rlmpi.o
	swar cr $(LIB_ROOT)/libOSspecific.a $^

RlmpiInitializer.o:RlmpiInitializer.cxx
	sw5CC ${HOST_FLAGS} -w -DSUNWAY -o $@ -c $<
#	sw5CC ${HOST_FLAGS} -w -DSUNWAY -o $@ -c $(INCLUDE) $<
rlmpi.o:rlmpi.c
	${CC} -slave -w -DSUNWAY -msimd -o $@ -c $(INCLUDE) $<
clean:
	rm *.o
	swar d $(LIB_ROOT)/libOSspecific.a RlmpiInitializer.o rlmpi.o

