# CC  = sw5cc
# CPP = swg++453
# HOST_FLAGS  = -host -OPT:IEEE_arith=2
# SLAVE_FLAGS = -slave -OPT:IEEE_arith=2
# CPP_FLAGS = -DSWTIMER=0
# ROOT = /home/export/online1/systest/swrh/guhf/Openfoam/source/OpenFOAM_SW/OpenFOAM-3.0.0
# LIB_ROOT = ${ROOT}/platforms/linux64swgccDPInt64Opt/lib
# FOAM_ROOT = ${ROOT}/src/OpenFOAM
# OS_ROOT = ${ROOT}/src/OSspecific
# INCLUDE = -mieee -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=64 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -Wno-invalid-offsetof -O3 -DNoRepository -ftemplate-depth-100 -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I${FOAM_ROOT}/lnInclude -I${OS_ROOT}/lnInclude
# C_INCLUDE = -I${FOAM_ROOT}/lnInclude

all:SW_GAMGSolver.o SW_Vcycle.o SW_ScalingFactor.o scalingFactor_host.o scalingFactor_slave.o
	swar cur $(LIB_ROOT)/libOpenFOAM.a $^


SW_GAMGSolver.o:SW_GAMGSolver.cpp
	${CPP} ${CPP_FLAGS} -o $@ -c $(INCLUDE) $<
SW_ScalingFactor.o:SW_ScalingFactor.cpp
	${CPP} ${CPP_FLAGS} -o $@ -c $(INCLUDE) $<
SW_Vcycle.o:SW_Vcycle.cpp
	${CPP} ${CPP_FLAGS} -o $@ -c $(INCLUDE) $<

scalingFactor_host.o:scalingFactor_host.c
	${CC} $(HOST_FLAGS) -c -o $@ $(C_INCLUDE) $<
scalingFactor_slave.o:scalingFactor_slave.c
	${CC} $(SLAVE_FLAGS) -msimd -c -o $@ $(C_INCLUDE) $<


clean:
	rm *.o
	swar -d $(LIB_ROOT)/libOpenFOAM.a SW_GAMGSolver.o SW_Vcycle.o SW_ScalingFactor.o scalingFactor_host.o scalingFactor_slave.o
