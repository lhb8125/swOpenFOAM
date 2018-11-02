CC  = sw5cc
CPP = swg++453
HOST_FLAGS = -host
SLAVE_FLAGS = -slave
CPP_FLAGS = -DSWTIMER=0
ROOT = ${HOME}/lhb/OpenFOAM_RIGHT/OpenFoam-3.0.0
LIB_ROOT = ${ROOT}/platforms/linux64swgccDPInt32Opt/lib
FOAM_ROOT = ${ROOT}/src/OpenFOAM
OS_ROOT = ${ROOT}/src/OSspecific
FV_ROOT = ${ROOT}/src/finiteVolume


INCLUDE = -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include 

all:swGaussLaplacianScheme.o
	swar cur ${LIB_ROOT}/libfiniteVolume.a $^
swGaussLaplacianSchemes.o:swGaussLaplacianSchemes.C
	${CPP} ${CPP_FLAGS} -o $@ -c ${INCLUDE} $<
