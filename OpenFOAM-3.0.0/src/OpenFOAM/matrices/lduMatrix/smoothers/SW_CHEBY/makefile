# CPP = swg++453
# CFLAGS_HOST= -host
# CFLAGS = -slave
# CPP_FLAGS = -DSWTIMER=0
# ROOT = /home/export/online1/systest/swrh/guhf/Openfoam/source/OpenFOAM_SW/OpenFOAM-3.0.0
# LIB_ROOT = ${ROOT}/platforms/linux64swgccDPInt64Opt/lib
# FOAM_ROOT = ${ROOT}/src/OpenFOAM
# OS_ROOT = ${ROOT}/src/OSspecific
# INCLUDE = -mieee -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=64 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -Wno-invalid-offsetof -O3 -DNoRepository -ftemplate-depth-100 -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I${FOAM_ROOT}/lnInclude -I${OS_ROOT}/lnInclude

all:SW_ChebyIfpack2srPCG.o
	swar cur $(LIB_ROOT)/libOpenFOAM.a $^

SW_ChebyIfpack2srPCG.o:SW_ChebyIfpack2srPCG.cpp
	${CPP} $(CPP_FLAGS) -o  $@  -c $(INCLUDE) $<

clean:
	rm *.o
	swar d $(LIB_ROOT)/libOpenFOAM.a SW_ChebyIfpack2srPCG.o










