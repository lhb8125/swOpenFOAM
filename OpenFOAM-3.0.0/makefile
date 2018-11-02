CC  = sw5cc
CPP = swg++453
HOST_FLAGS  = -host -OPT:IEEE_arith=2 -DWM_DP
SLAVE_FLAGS = -slave -OPT:IEEE_arith=2 -DWM_DP
CPP_FLAGS = -DSWTIMER=1 -DFULL_DEBUG=0

export CC
export CPP
export HOST_FLAGS
export SLAVE_FLAGS
export CPP_FLAGS

ROOT = ${HOME}/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0
SW_ACC_ROOT = ${ROOT}/swAccPart
LIB_ROOT = ${ROOT}/platforms/linux64swgccDPInt32Opt/lib
//LIB_ROOT = ${ROOT}/platforms/linux64swgccDPInt64Debug/lib
FOAM_ROOT = ${ROOT}/src/OpenFOAM
OS_ROOT = ${ROOT}/src/OSspecific
FV_ROOT = ${ROOT}/src/finiteVolume
PERF_ROOT = ${OS_ROOT}/performance

export ROOT
export LIB_ROOT
export FOAM_ROOT
export OS_ROOT
export FV_ROOT
export PERF_ROOT
export SW_ACC_ROOT

INCLUDE = -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I${FOAM_ROOT}/lnInclude -I${OS_ROOT}/lnInclude -I${FV_ROOT}/lnInclude

C_INCLUDE = -I/usr/sw-mpp/mpi2/include -I$(FOAM_ROOT)/lnInclude -I${OS_ROOT}/lnInclude 

export INCLUDE
export C_INCLUDE

default:
	make all |&tee log.make

all:
	cd ${PERF_ROOT}/slaveUtils && make
	cd ${PERF_ROOT}/CG_switch &&  make
	cd ${PERF_ROOT}/rowSubsections && make
	cd ${PERF_ROOT}/BlockOrdering && make
	cd ${PERF_ROOT}/extensibleArray && make
#	cd ${SW_ACC_ROOT}/swNegSumDiag &&  make
#	cd ${SW_ACC_ROOT}/lduMatrix &&  make
	cd ${SW_ACC_ROOT}/swArrays &&  make
	cd ${SW_ACC_ROOT}/swATmul && make
	cd ${SW_ACC_ROOT}/swGAMG && make
	cd ${SW_ACC_ROOT}/swPBiCGSTAB && make
	cd ${SW_ACC_ROOT}/swCHEBY && make
	cd ${SW_ACC_ROOT}/swDiagonalPreconditioner && make
	cd ${SW_ACC_ROOT}/swDILUPreconditioner && make
	cd ${SW_ACC_ROOT}/srPCG && make
	cd ${SW_ACC_ROOT}/swScalarFieldOps && make
	cd ${SW_ACC_ROOT}/swGaussGrad && make
##	cd ${SW_ACC_ROOT}/SW_surfaceIntegrate &&  make
	cd ${SW_ACC_ROOT}/swSurfaceInterpolationScheme &&  make

clean:
	cd ${PERF_ROOT}/slaveUtils && make clean
	cd ${PERF_ROOT}/CG_switch &&  make clean
	cd ${PERF_ROOT}/rowSubsections && make clean
	cd ${PERF_ROOT}/BlockOrdering && make clean
	cd ${PERF_ROOT}/extensibleArray && make clean
#	cd ${SW_ACC_ROOT}/swNegSumDiag &&  make clean
#	cd ${SW_ACC_ROOT}/lduMatrix &&  make clean
	cd ${SW_ACC_ROOT}/swArrays &&  make clean
	cd ${SW_ACC_ROOT}/swATmul && make clean
	cd ${SW_ACC_ROOT}/swGAMG && make clean
	cd ${SW_ACC_ROOT}/swPBiCGSTAB && make clean
	cd ${SW_ACC_ROOT}/swCHEBY && make clean
	cd ${SW_ACC_ROOT}/swDiagonalPreconditioner && make clean
	cd ${SW_ACC_ROOT}/swDILUPreconditioner && make clean
	cd ${SW_ACC_ROOT}/srPCG && make clean
	cd ${SW_ACC_ROOT}/swScalarFieldOps && make clean
	cd ${SW_ACC_ROOT}/swGaussGrad && make clean
##	cd ${SW_ACC_ROOT}/SW_surfaceIntegrate &&  make clean
	cd ${SW_ACC_ROOT}/swSurfaceInterpolationScheme &&  make clean






