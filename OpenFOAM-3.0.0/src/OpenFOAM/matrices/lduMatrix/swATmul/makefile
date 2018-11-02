# CC  = sw5cc
# CPP = swg++453
# HOST_FLAGS  = -host -OPT:IEEE_arith=2
# SLAVE_FLAGS = -slave -OPT:IEEE_arith=2
# CPP_FLAGS = -DSWTIMER=0
# ROOT = /home/export/online1/systest/swrh/guhf/Openfoam/source/OpenFOAM_SW/OpenFOAM-3.0.0
# LIB_ROOT = ${ROOT}/platforms/linux64swgccDPInt64Opt/lib
# FOAM_ROOT = ${ROOT}/src/OpenFOAM
# OS_ROOT = ${ROOT}/src/OSspecific
# FV_ROOT = ${ROOT}/src/finiteVolume
# INCLUDE=-fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=64 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I${FOAM_ROOT}/lnInclude -I${OS_ROOT}/lnInclude
# C_INCLUDE=-I$(FOAM_ROOT)/lnInclude/

all:swAmul_slave.o swAmul.o swAmulTranslate.o swAmul_host.o util.o swAmulRedesigned.o
	swar cur $(LIB_ROOT)/libOpenFOAM.a $^

swAmul_slave.o:swAmul_slave.c
	${CC} $(SLAVE_FLAGS) -msimd -c -o $@ $(C_INCLUDE) $<
swAmul.o:swAmul.cpp
	${CPP} $(CPP_FLAGS) -o $@ -c $(INCLUDE) $<
swAmulTranslate.o:swAmulTranslate.cpp
	${CPP} $(CPP_FLAGS) -o $@ -c $(INCLUDE) $<
swAmul_host.o:swAmul_host.c
	${CC} $(HOST_FLAGS) -c -o $@ $(C_INCLUDE) $<
util.o:util.c
	${CC} $(HOST_FLAGS) -c -o $@ $(C_INCLUDE) $<
swScaling_factor.o:swScaling_factor.c
	${CC} $(SLAVE_FLAGS) -msimd -c -o $@ $(C_INCLUDE) $<
swAmulRedesigned.o:swAmulRedesigned.cpp
	${CPP} $(CPP_FLAGS) -o $@ -c $(INCLUDE) -I$(FV_ROOT)/lnInclude $<


clean:
	rm *.o
	swar d $(LIB_ROOT)/libOpenFOAM.a swAmul_slave.o swAmul.o swAmulTranslate.o swAmul_host.o util.o swAmulRedesigned.o
