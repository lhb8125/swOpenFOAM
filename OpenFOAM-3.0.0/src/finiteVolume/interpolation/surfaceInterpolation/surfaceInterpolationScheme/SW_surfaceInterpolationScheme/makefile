# CC  = sw5cc
# CPP = swg++453
# HOST_FLAGS  = -host -OPT:IEEE_arith=2
# SLAVE_FLAGS = -slave -OPT:IEEE_arith=2
# CPP_FLAGS = -DSWTIMER=0
# ROOT = /home/export/online1/nsccwuxi_envivion/chenchen/hu.ren/caelus-5.10.x
# CORE_ROOT = $(ROOT)/src/libraries/core
# INCLUDE=-Dlinux64 -DWM_DP -mieee -DSW_SLAVE -DMPICH_SKIP_MPICXX -Wall -Wextra -Wno-unused-parameter -Wnon-virtual-dtor -O3 -ftemplate-depth-100 -fPIC -DOMPI_SKIP_MPICXX -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/nsccwuxi_envivion/chenchen/include -I${CORE_ROOT}/lnInclude
# C_INCLUDE=-I$(CORE_ROOT)/lnInclude/


all:interpolate1_host.o interpolate1_slave.o swsurfaceInterpolationScheme_C.o swSurfaceInterpolationScheme.o
	swar cur $(LIB_ROOT)/libfiniteVolume.a $^

swSurfaceInterpolationScheme.o:swSurfaceInterpolationScheme.cpp
	${CPP} $(CPP_FLAGS) -o $@ -c $(INCLUDE) $<
swsurfaceInterpolationScheme_C.o:swsurfaceInterpolationScheme_C.cpp
	${CPP} $(CPP_FLAGS) -o $@ -c $(C_INCLUDE) $<
interpolate1_host.o:interpolate1_host.c
	${CC} $(HOST_FLAGS) -c -o $@ $(C_INCLUDE) $<
interpolate1_slave.o:interpolate1_slave.c
	${CC} $(SLAVE_FLAGS) -msimd -c -o $@ $(C_INCLUDE) $<

clean:
	rm *.o
	swar d $(LIB_ROOT)/libfiniteVolume.a interpolate1_host.o interpolate1_slave.o swsurfaceInterpolationScheme_C.o swSurfaceInterpolationScheme.o
