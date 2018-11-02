# CC = sw5cc
# HOST_FLAGS  = -host -OPT:IEEE_arith=2
# SLAVE_FLAGS = -slave -OPT:IEEE_arith=2
# ROOT = /home/export/online1/systest/swrh/guhf/Openfoam/source/OpenFOAM_SW/OpenFOAM-3.0.0
# LIB_ROOT = ${ROOT}/platforms/linux64swgccDPInt64Opt/lib
# FOAM_ROOT = ${ROOT}/src/OpenFOAM
# INCLUDE = -I$(FOAM_ROOT)/lnInclude/

all:vectorOps_host.o vectorOps_slave.o userFunc_SAXPY.o vectorCopy_host.o vectorCopy_slave.o gSum_host.o gSum_slave.o residualNormFactor_host.o residualNormFactor_slave.o
	swar cur $(LIB_ROOT)/libOpenFOAM.a $^

vectorOps_host.o:vectorOps_host.c
	${CC} $(HOST_FLAGS) -c -o $@ $(C_INCLUDE) $^
vectorOps_slave.o:vectorOps_slave.c
	${CC} $(SLAVE_FLAGS) -c -o $@ $(C_INCLUDE) $^
vectorCopy_host.o:vectorCopy_host.c
	${CC} $(HOST_FLAGS) -c -o $@ $(C_INCLUDE) $^
vectorCopy_slave.o:vectorCopy_slave.c
	${CC} $(SLAVE_FLAGS) -c -o $@ $(C_INCLUDE) $^
userFunc_SAXPY.o:userFunc_SAXPY.c
	${CC} $(SLAVE_FLAGS) -msimd -c -o $@ $(C_INCLUDE) $^
gSum_host.o:gSum_host.c
	${CC} $(HOST_FLAGS) -c -o $@ $(C_INCLUDE) $<
gSum_slave.o:gSum_slave.c
	${CC} $(SLAVE_FLAGS) -msimd -c -o $@ $(C_INCLUDE) $<
residualNormFactor_host.o:residualNormFactor_host.c
	${CC} $(HOST_FLAGS) -c -o $@ $(C_INCLUDE) $^
residualNormFactor_slave.o:residualNormFactor_slave.c
	${CC} $(SLAVE_FLAGS) -msimd -c -o $@ $(C_INCLUDE) $^


clean:
	rm -f *.o
	swar d $(LIB_ROOT)/libOpenFOAM.a vectorOps_host.o vectorOps_slave.o userFunc_SAXPY.o vectorCopy_host.o vectorCopy_slave.o gSum_host.o gSum_slave.o residualNormFactor_host.o residualNormFactor_slave.o
