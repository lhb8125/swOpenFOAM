make[1]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/performance/slaveUtils && make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/performance/slaveUtils'
sw5cc -slave -msimd -OPT:IEEE_arith=1 -g -c slaveUtils.c
slaveUtils.c: In function 'DMA_Get':
slaveUtils.c:7: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
slaveUtils.c:8: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
slaveUtils.c:8: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
slaveUtils.c:9: warning: passing argument 1 of 'dma_wait' from incompatible pointer type
slaveUtils.c: In function 'DMA_IGet':
slaveUtils.c:16: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
slaveUtils.c:17: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
slaveUtils.c:17: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
slaveUtils.c: In function 'DMA_Put':
slaveUtils.c:24: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
slaveUtils.c:25: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
slaveUtils.c:25: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
slaveUtils.c:26: warning: passing argument 1 of 'dma_wait' from incompatible pointer type
slaveUtils.c: In function 'DMA_IPut':
slaveUtils.c:33: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
slaveUtils.c:34: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
slaveUtils.c:34: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
slaveUtils.c: In function 'DMA_Wait':
slaveUtils.c:39: warning: passing argument 1 of 'dma_wait' from incompatible pointer type
swar cru /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOSspecific.a slaveUtils.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/performance/slaveUtils'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/performance/CG_switch &&  make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/performance/CG_switch'
swg++453 -o CG_switch.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude CG_switch.cpp
sw5cc -host -OPT:IEEE_arith=2 -DWM_DP -c -o athread_switch.o athread_switch.c
swar cr /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOSspecific.a CG_switch.o athread_switch.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/performance/CG_switch'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/performance/rowSubsections && make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/performance/rowSubsections'
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o rowSubsections.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude rowSubsections.cpp
swar cr /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOSspecific.a rowSubsections.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/performance/rowSubsections'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/performance/BlockOrdering && make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/performance/BlockOrdering'
sw5cc -host -OPT:IEEE_arith=2 -DWM_DP -o BlockOrdering.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude BlockOrdering.c
BlockOrdering.c: In function 'MLB_Multilevel_ordering':
BlockOrdering.c:130: warning: implicit declaration of function 'MLB_postLABEL'
sw5cc -host -OPT:IEEE_arith=2 -DWM_DP -o BOrderUtils.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude BOrderUtils.c
BOrderUtils.c: In function 'MLB_metis_decompose':
BOrderUtils.c:63: warning: comparison with string literal results in unspecified behaviour
BOrderUtils.c: In function 'MLB_generateCellID':
BOrderUtils.c:112: warning: unused variable 'icell'
swar cr /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOSspecific.a BlockOrdering.o BOrderUtils.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/performance/BlockOrdering'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/performance/extensibleArray && make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/performance/extensibleArray'
sw5cc -host -OPT:IEEE_arith=2 -DWM_DP -o extensibleLabelArray.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude extensibleLabelArray.c
sw5cc -host -OPT:IEEE_arith=2 -DWM_DP -o extensibleScalarArray.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude extensibleScalarArray.c
swar cr /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOSspecific.a extensibleLabelArray.o extensibleScalarArray.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/performance/extensibleArray'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/swAccPart/swArrays &&  make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/swArrays'
sw5cc -host -OPT:IEEE_arith=2 -DWM_DP -c -o vectorOps_host.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  vectorOps_host.c
sw5cc -slave -OPT:IEEE_arith=2 -DWM_DP -c -o vectorOps_slave.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  vectorOps_slave.c
sw5cc -slave -OPT:IEEE_arith=2 -DWM_DP -msimd -c -o userFunc_SAXPY.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  userFunc_SAXPY.c
sw5cc -host -OPT:IEEE_arith=2 -DWM_DP -c -o vectorCopy_host.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  vectorCopy_host.c
sw5cc -slave -OPT:IEEE_arith=2 -DWM_DP -c -o vectorCopy_slave.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  vectorCopy_slave.c
sw5cc -host -OPT:IEEE_arith=2 -DWM_DP -c -o gSum_host.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  gSum_host.c
sw5cc -slave -OPT:IEEE_arith=2 -DWM_DP -msimd -c -o gSum_slave.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  gSum_slave.c
sw5cc -host -OPT:IEEE_arith=2 -DWM_DP -c -o residualNormFactor_host.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  residualNormFactor_host.c
sw5cc -slave -OPT:IEEE_arith=2 -DWM_DP -msimd -c -o residualNormFactor_slave.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  residualNormFactor_slave.c
swar cur /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOpenFOAM.a vectorOps_host.o vectorOps_slave.o userFunc_SAXPY.o vectorCopy_host.o vectorCopy_slave.o gSum_host.o gSum_slave.o residualNormFactor_host.o residualNormFactor_slave.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/swArrays'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/swAccPart/swATmul && make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/swATmul'
sw5cc -slave -OPT:IEEE_arith=2 -DWM_DP -msimd -c -o swAmul_slave.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  swAmul_slave.c
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o swAmul.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude swAmul.cpp
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o swAmulTranslate.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude swAmulTranslate.cpp
sw5cc -host -OPT:IEEE_arith=2 -DWM_DP -c -o swAmul_host.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  swAmul_host.c
sw5cc -host -OPT:IEEE_arith=2 -DWM_DP -c -o util.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  util.c
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o swAmulRedesigned.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude swAmulRedesigned.cpp
swar cur /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOpenFOAM.a swAmul_slave.o swAmul.o swAmulTranslate.o swAmul_host.o util.o swAmulRedesigned.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/swATmul'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/swAccPart/swGAMG && make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/solvers/swGAMG'
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o swGAMGSolver.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude swGAMGSolver.cpp
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o swVcycle.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude swVcycle.cpp
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o swScalingFactor.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude swScalingFactor.cpp
sw5cc -host -OPT:IEEE_arith=2 -DWM_DP -c -o scalingFactor_host.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  scalingFactor_host.c
sw5cc -slave -OPT:IEEE_arith=2 -DWM_DP -msimd -c -o scalingFactor_slave.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  scalingFactor_slave.c
swar cur /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOpenFOAM.a swGAMGSolver.o swVcycle.o swScalingFactor.o scalingFactor_host.o scalingFactor_slave.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/solvers/swGAMG'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/swAccPart/swPBiCGSTAB && make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/solvers/swPBiCGSTAB'
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o swPBiCGStab.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude swPBiCGStab.C
swar cur /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOpenFOAM.a swPBiCGStab.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/solvers/swPBiCGSTAB'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/swAccPart/swCHEBY && make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/smoothers/swCHEBY'
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o  swChebyIfpack2srPCG.o  -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude swChebyIfpack2srPCG.cpp
swar cur /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOpenFOAM.a swChebyIfpack2srPCG.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/smoothers/swCHEBY'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/swAccPart/swDiagonalPreconditioner && make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/preconditioners/swDiagonalPreconditioner'
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o  swDiagonalPreconditioner.o  -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude swDiagonalPreconditioner.cpp
swar cur /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOpenFOAM.a swDiagonalPreconditioner.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/preconditioners/swDiagonalPreconditioner'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/swAccPart/swDILUPreconditioner && make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/preconditioners/swDILUPreconditioner'
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o  swDILUPreconditioner.o  -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude swDILUPreconditioner.cpp
swar cur /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOpenFOAM.a swDILUPreconditioner.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/preconditioners/swDILUPreconditioner'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/swAccPart/srPCG && make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/solvers/SW_GAMG/srPCG'
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o srPCG.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude srPCG.cpp
swar cur /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOpenFOAM.a srPCG.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/matrices/lduMatrix/solvers/SW_GAMG/srPCG'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/swAccPart/swScalarFieldOps && make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/fields/Fields/scalarField/swScalarFieldOps'
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o swScalarFieldOps.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude swScalarFieldOps.cpp
swar cur /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOpenFOAM.a swScalarFieldOps.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/fields/Fields/scalarField/swScalarFieldOps'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/swAccPart/swGaussGrad && make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/finiteVolume/gradSchemes/swGaussGrad'
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o swGaussGrad.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude swGaussGrad.cpp
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o swGaussGradSub.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude swGaussGradSub.cpp
sw5cc -host -OPT:IEEE_arith=2 -DWM_DP -c -o swGgradfRoutines.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  swGgradfRoutines.c
sw5cc -slave -OPT:IEEE_arith=2 -DWM_DP -CG:pjump_all -msimd -c -o swGgradfRoutines_slave.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  swGgradfRoutines_slave.c
swGgradfRoutines_slave.c:9:1: warning: "A_DMA_GET_SET" redefined
In file included from swGgradfRoutines_slave.c:5:
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude/slaveUtils.h:9:1: warning: this is the location of the previous definition
swGgradfRoutines_slave.c:17:1: warning: "A_DMA_GET_RUN" redefined
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude/slaveUtils.h:17:1: warning: this is the location of the previous definition
swGgradfRoutines_slave.c:22:1: warning: "A_DMA_PUT_SET" redefined
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude/slaveUtils.h:22:1: warning: this is the location of the previous definition
swGgradfRoutines_slave.c:30:1: warning: "A_DMA_PUT_RUN" redefined
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude/slaveUtils.h:30:1: warning: this is the location of the previous definition
swGgradfRoutines_slave.c: In function 'swGgradfInner_scalar_slave':
swGgradfRoutines_slave.c:124: warning: assignment from incompatible pointer type
swGgradfRoutines_slave.c:128: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:129: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:129: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:130: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:137: warning: assignment discards qualifiers from pointer target type
swGgradfRoutines_slave.c:140: warning: assignment from incompatible pointer type
swGgradfRoutines_slave.c:161: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:162: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:163: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:164: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:164: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:165: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:165: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:166: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:166: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:168: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:169: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:170: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:175: warning: initialization from incompatible pointer type
swGgradfRoutines_slave.c:176: warning: initialization from incompatible pointer type
swGgradfRoutines_slave.c:186: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:187: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:187: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:188: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:204: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:205: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:205: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:206: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:218: warning: assignment discards qualifiers from pointer target type
swGgradfRoutines_slave.c:221: warning: assignment from incompatible pointer type
swGgradfRoutines_slave.c:224: warning: assignment from incompatible pointer type
swGgradfRoutines_slave.c:229: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:230: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:231: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:232: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:232: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:233: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:233: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:234: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:234: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:237: warning: assignment from incompatible pointer type
swGgradfRoutines_slave.c:256: warning: incompatible implicit declaration of built-in function 'memset'
swGgradfRoutines_slave.c:258: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:259: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:260: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:265: warning: initialization from incompatible pointer type
swGgradfRoutines_slave.c:316: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:317: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:317: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:318: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:323: warning: initialization from incompatible pointer type
swGgradfRoutines_slave.c:331: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:332: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:332: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:333: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c: In function 'swGgradfInner_vector_slave':
swGgradfRoutines_slave.c:380: warning: assignment from incompatible pointer type
swGgradfRoutines_slave.c:384: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:385: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:385: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:386: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:393: warning: assignment discards qualifiers from pointer target type
swGgradfRoutines_slave.c:396: warning: assignment discards qualifiers from pointer target type
swGgradfRoutines_slave.c:418: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:419: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:420: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:421: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:421: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:422: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:422: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:423: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:423: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:425: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:426: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:427: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:431: warning: initialization from incompatible pointer type
swGgradfRoutines_slave.c:432: warning: initialization from incompatible pointer type
swGgradfRoutines_slave.c:433: warning: initialization from incompatible pointer type
swGgradfRoutines_slave.c:450: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:451: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:451: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:452: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:470: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:471: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:471: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:472: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:485: warning: assignment discards qualifiers from pointer target type
swGgradfRoutines_slave.c:488: warning: assignment discards qualifiers from pointer target type
swGgradfRoutines_slave.c:491: warning: assignment from incompatible pointer type
swGgradfRoutines_slave.c:496: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:497: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:498: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:499: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:499: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:500: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:500: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:501: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:501: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:504: warning: assignment from incompatible pointer type
swGgradfRoutines_slave.c:523: warning: incompatible implicit declaration of built-in function 'memset'
swGgradfRoutines_slave.c:525: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:526: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:527: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:531: warning: initialization from incompatible pointer type
swGgradfRoutines_slave.c:532: warning: initialization from incompatible pointer type
swGgradfRoutines_slave.c:588: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:589: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:589: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:590: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:595: warning: initialization from incompatible pointer type
swGgradfRoutines_slave.c:609: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:610: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:610: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:611: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c: In function 'swGgradfDivide_slave':
swGgradfRoutines_slave.c:670: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:671: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:672: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:672: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:673: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:673: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:674: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:675: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swGgradfRoutines_slave.c:685: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
swGgradfRoutines_slave.c:686: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:686: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
swGgradfRoutines_slave.c:687: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
swar cur /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libfiniteVolume.a swGaussGrad.o swGaussGradSub.o swGgradfRoutines.o swGgradfRoutines_slave.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/finiteVolume/gradSchemes/swGaussGrad'
cd /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/swAccPart/swSurfaceInterpolationScheme &&  make
make[2]: Entering directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/interpolation/surfaceInterpolation/surfaceInterpolationScheme/swSurfaceInterpolationScheme'
sw5cc -host -OPT:IEEE_arith=2 -DWM_DP -c -o interpolate1_host.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  interpolate1_host.c
interpolate1_host.c:2: warning: 'struct Parameter' declared inside parameter list
interpolate1_host.c:2: warning: its scope is only this definition or declaration, which is probably not what you want
interpolate1_host.c:4: warning: 'struct Parameter' declared inside parameter list
sw5cc -slave -OPT:IEEE_arith=2 -DWM_DP -msimd -c -o interpolate1_slave.o -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  interpolate1_slave.c
interpolate1_slave.c: In function 'interpolate1_':
interpolate1_slave.c:18: warning: initialization from incompatible pointer type
interpolate1_slave.c:37: warning: passing argument 2 of 'athread_get' discards qualifiers from pointer target type
interpolate1_slave.c:37: warning: passing argument 5 of 'athread_get' discards qualifiers from pointer target type
interpolate1_slave.c:43: warning: passing argument 2 of 'dma_set_reply' from incompatible pointer type
interpolate1_slave.c:44: warning: passing argument 2 of '__builtin_sw64_dma' makes integer from pointer without a cast
interpolate1_slave.c:44: warning: passing argument 3 of '__builtin_sw64_dma' makes integer from pointer without a cast
interpolate1_slave.c:45: warning: passing argument 1 of 'DMA_Wait' discards qualifiers from pointer target type
interpolate1_slave.c:55: warning: passing argument 5 of 'athread_get' discards qualifiers from pointer target type
interpolate1_slave.c:56: warning: passing argument 5 of 'athread_get' discards qualifiers from pointer target type
interpolate1_slave.c:95: warning: passing argument 5 of 'athread_get' discards qualifiers from pointer target type
interpolate1_slave.c:96: warning: passing argument 5 of 'athread_get' discards qualifiers from pointer target type
interpolate1_slave.c:101: warning: passing argument 5 of 'athread_get' discards qualifiers from pointer target type
interpolate1_slave.c:112: warning: passing argument 5 of 'athread_get' discards qualifiers from pointer target type
interpolate1_slave.c:157: warning: passing argument 5 of 'athread_put' discards qualifiers from pointer target type
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o swSurfaceInterpolationScheme_C.o -c -I/usr/sw-mpp/mpi2/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude  swSurfaceInterpolationScheme_C.cpp
swg++453 -DSWTIMER=1 -DFULL_DEBUG=0 -o swSurfaceInterpolationScheme.o -c -fPIC -Dlinux64 -DWM_ARCH_OPTION=64 -DWM_DP -DWM_LABEL_SIZE=32 -Wall -Wextra -Wno-old-style-cast -Wnon-virtual-dtor -Wno-unused-parameter -O3 -DNoRepository -ftemplate-depth-100 -DSW_SLAVE -I/usr/sw-mpp/mpi2/include -I/usr/sw-mpp/swcc/swgcc453-binary/cross-tools/include -I/home/export/online1/systest/swrh/include -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific/lnInclude -I/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/lnInclude swSurfaceInterpolationScheme.cpp
swar cur /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libfiniteVolume.a interpolate1_host.o interpolate1_slave.o swSurfaceInterpolationScheme_C.o swSurfaceInterpolationScheme.o
make[2]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume/interpolation/surfaceInterpolation/surfaceInterpolationScheme/swSurfaceInterpolationScheme'
make[1]: Leaving directory `/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0'
