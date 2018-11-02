Compiling enabled on 16 cores
+ wmakePrintBuild -check
same version as previous build
+ wmakeLnInclude OpenFOAM
+ wmakeLnInclude OSspecific/POSIX
+ Pstream/Allwmake lib
+ wmake lib dummy
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/Pstream/dummy
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/dummy/libPstream.a' is up to date.
+ case "$WM_MPLIB" in
+ set +x
wmake lib mpi
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/Pstream/mpi
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/mpi/libPstream.a' is up to date.
+ OSspecific/Allwmake
Found <sys/inotify.h>  --  enabling inotify for file monitoring.
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OSspecific
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOSspecific.a' is up to date.
+ wmake lib OpenFOAM
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/OpenFOAM
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libOpenFOAM.a' is up to date.
+ wmake lib fileFormats
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/fileFormats
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libfileFormats.a' is up to date.
+ wmake lib surfMesh
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/surfMesh
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libsurfMesh.a' is up to date.
+ wmake lib triSurface
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/triSurface
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libtriSurface.a' is up to date.
+ wmake lib meshTools
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/meshTools
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libmeshTools.a' is up to date.
+ wmake lib edgeMesh
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/edgeMesh
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libedgeMesh.a' is up to date.
+ parallel/decompose/AllwmakeLnInclude
+ wmakeLnInclude decompositionMethods
+ wmakeLnInclude metisDecomp
+ wmakeLnInclude scotchDecomp
+ wmakeLnInclude ptscotchDecomp
+ dummyThirdParty/Allwmake lib
+ wmake lib scotchDecomp
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/dummyThirdParty/scotchDecomp
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/dummy/libscotchDecomp.a' is up to date.
+ wmake lib ptscotchDecomp
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/dummyThirdParty/ptscotchDecomp
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/dummy/libptscotchDecomp.a' is up to date.
+ wmake lib metisDecomp
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/dummyThirdParty/metisDecomp
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/dummy/libmetisDecomp.a' is up to date.
+ wmake lib MGridGen
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/dummyThirdParty/MGridGen
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/dummy/libMGridGen.a' is up to date.
+ wmake lib finiteVolume
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/finiteVolume
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libfiniteVolume.a' is up to date.
+ wmake lib lagrangian/basic
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/lagrangian/basic
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/liblagrangian.a' is up to date.
+ wmake lib lagrangian/distributionModels
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/lagrangian/distributionModels
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libdistributionModels.a' is up to date.
+ wmake lib genericPatchFields
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/genericPatchFields
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libgenericPatchFields.a' is up to date.
+ wmake lib conversion
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/conversion
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libconversion.a' is up to date.
+ wmake lib sampling
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/sampling
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libsampling.a' is up to date.
+ wmake lib mesh/extrudeModel
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/mesh/extrudeModel
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libextrudeModel.a' is up to date.
+ wmake lib dynamicMesh
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/dynamicMesh
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libdynamicMesh.a' is up to date.
+ wmake lib dynamicFvMesh
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/dynamicFvMesh
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libdynamicFvMesh.a' is up to date.
+ wmake lib topoChangerFvMesh
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/topoChangerFvMesh
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libtopoChangerFvMesh.a' is up to date.
+ parallel/Allwmake lib
+ decompose/Allwmake lib
using SCOTCH_ARCH_PATH=/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/ThirdParty-3.0.0/platforms/linux64swgccInt32/scotch_6.0.3
+ wmakeLnInclude decompositionMethods
+ cd metisDecomp
+ ./Allwmake lib
using METIS_ARCH_PATH=
+ wmake lib decompositionMethods
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/parallel/decompose/decompositionMethods
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libdecompositionMethods.a' is up to date.
+ wmake lib decompose
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/parallel/decompose/decompose
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libdecompose.a' is up to date.
+ reconstruct/Allwmake lib
+ wmake lib reconstruct
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/parallel/reconstruct/reconstruct
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libreconstruct.a' is up to date.
+ wmake lib distributed
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/parallel/distributed
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libdistributed.a' is up to date.
+ wmake lib ODE
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/ODE
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libODE.a' is up to date.
+ wmake lib randomProcesses
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/randomProcesses
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/librandomProcesses.a' is up to date.
+ transportModels/Allwmake lib
+ wmake lib twoPhaseMixture
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/transportModels/twoPhaseMixture
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libtwoPhaseMixture.a' is up to date.
+ wmake lib interfaceProperties
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/transportModels/interfaceProperties
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libinterfaceProperties.a' is up to date.
+ wmake lib twoPhaseProperties
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/transportModels/twoPhaseProperties
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libtwoPhaseProperties.a' is up to date.
+ wmake lib incompressible
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/transportModels/incompressible
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libincompressibleTransportModels.a' is up to date.
+ wmake lib compressible
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/transportModels/compressible
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libcompressibleTransportModels.a' is up to date.
+ wmake lib immiscibleIncompressibleTwoPhaseMixture
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/transportModels/immiscibleIncompressibleTwoPhaseMixture
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libimmiscibleIncompressibleTwoPhaseMixture.a' is up to date.
+ thermophysicalModels/Allwmake lib
+ wmake lib specie
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/specie
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libspecie.a' is up to date.
+ wmake lib solidSpecie
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/solidSpecie
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libsolidSpecie.a' is up to date.
+ wmake lib thermophysicalFunctions
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/thermophysicalFunctions
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libthermophysicalFunctions.a' is up to date.
+ ./properties/Allwmake lib
+ wmake lib liquidProperties
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/properties/liquidProperties
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libliquidProperties.a' is up to date.
+ wmake lib liquidMixtureProperties
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/properties/liquidMixtureProperties
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libliquidMixtureProperties.a' is up to date.
+ wmake lib solidProperties
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/properties/solidProperties
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libsolidProperties.a' is up to date.
+ wmake lib solidMixtureProperties
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/properties/solidMixtureProperties
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libsolidMixtureProperties.a' is up to date.
+ wmake lib basic
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/basic
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libfluidThermophysicalModels.a' is up to date.
+ wmake lib reactionThermo
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/reactionThermo
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libreactionThermophysicalModels.a' is up to date.
+ wmake lib laminarFlameSpeed
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/laminarFlameSpeed
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/liblaminarFlameSpeedModels.a' is up to date.
+ wmake lib chemistryModel
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/chemistryModel
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libchemistryModel.a' is up to date.
+ wmake lib barotropicCompressibilityModel
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/barotropicCompressibilityModel
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libbarotropicCompressibilityModel.a' is up to date.
+ wmake lib SLGThermo
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/SLGThermo
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libSLGThermo.a' is up to date.
+ wmake lib solidThermo
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/solidThermo
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libsolidThermo.a' is up to date.
+ wmake lib solidChemistryModel
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/solidChemistryModel
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libsolidChemistryModel.a' is up to date.
+ wmake lib radiation
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/thermophysicalModels/radiation
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libradiationModels.a' is up to date.
+ TurbulenceModels/Allwmake lib
+ wmake lib turbulenceModels
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/TurbulenceModels/turbulenceModels
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libturbulenceModels.a' is up to date.
+ wmake lib incompressible
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/TurbulenceModels/incompressible
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libincompressibleTurbulenceModels.a' is up to date.
+ wmake lib compressible
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/TurbulenceModels/compressible
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libcompressibleTurbulenceModels.a' is up to date.
+ wmakeLnInclude phaseIncompressible
+ wmakeLnInclude phaseCompressible
+ wmake lib combustionModels
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/combustionModels
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libcombustionModels.a' is up to date.
+ regionModels/Allwmake lib
+ wmake lib regionModel
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/regionModels/regionModel
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libregionModels.a' is up to date.
+ wmake lib pyrolysisModels
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/regionModels/pyrolysisModels
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libpyrolysisModels.a' is up to date.
+ wmake lib surfaceFilmModels
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/regionModels/surfaceFilmModels
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libsurfaceFilmModels.a' is up to date.
+ wmake lib surfaceFilmModels/derivedFvPatchFields/wallFunctions
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/regionModels/surfaceFilmModels/derivedFvPatchFields/wallFunctions
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libsurfaceFilmDerivedFvPatchFields.a' is up to date.
+ wmake lib thermalBaffleModels
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/regionModels/thermalBaffleModels
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libthermalBaffleModels.a' is up to date.
+ wmake lib regionCoupling
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/regionModels/regionCoupling
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libregionCoupling.a' is up to date.
+ lagrangian/Allwmake lib
+ wmake lib distributionModels
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/lagrangian/distributionModels
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libdistributionModels.a' is up to date.
+ wmake lib basic
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/lagrangian/basic
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/liblagrangian.a' is up to date.
+ wmake lib solidParticle
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/lagrangian/solidParticle
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libsolidParticle.a' is up to date.
+ wmake lib intermediate
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/lagrangian/intermediate
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/liblagrangianIntermediate.a' is up to date.
+ wmake lib turbulence
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/lagrangian/turbulence
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/liblagrangianTurbulence.a' is up to date.
+ wmake lib spray
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/lagrangian/spray
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/liblagrangianSpray.a' is up to date.
+ wmake lib DSMC
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/lagrangian/DSMC
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libDSMC.a' is up to date.
+ wmake lib coalCombustion
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/lagrangian/coalCombustion
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libcoalCombustion.a' is up to date.
+ molecularDynamics/Allwmake lib
+ wmake lib potential
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/lagrangian/molecularDynamics/potential
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libpotential.a' is up to date.
+ wmake lib molecularMeasurements
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/lagrangian/molecularDynamics/molecularMeasurements
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libmolecularMeasurements.a' is up to date.
+ wmake lib molecule
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/lagrangian/molecularDynamics/molecule
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libmolecule.a' is up to date.
+ mesh/Allwmake lib
+ wmake lib autoMesh
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/mesh/autoMesh
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libautoMesh.a' is up to date.
+ wmake lib blockMesh
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/mesh/blockMesh
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libblockMesh.a' is up to date.
+ wmake lib extrudeModel
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/mesh/extrudeModel
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libextrudeModel.a' is up to date.
+ renumber/Allwmake lib
+ wmake lib renumberMethods
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/renumber/renumberMethods
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/librenumberMethods.a' is up to date.
+ '[' -n '' ']'
+ echo

+ echo 'Skipping SloanRenumber'
Skipping SloanRenumber
+ echo

+ '[' -n '' ']'
+ echo

+ echo 'Skipping zoltanRenumber'
Skipping zoltanRenumber
+ echo

+ fvAgglomerationMethods/Allwmake lib
+ export ParMGridGen=/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/ThirdParty-3.0.0/ParMGridGen-1.0
+ ParMGridGen=/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/ThirdParty-3.0.0/ParMGridGen-1.0
+ '[' -e /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libMGridGen.so ']'
+ wmake lib pairPatchAgglomeration
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/fvAgglomerationMethods/pairPatchAgglomeration
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libpairPatchAgglomeration.a' is up to date.
++ /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/bin/foamEtcFile config/scotch.sh
+ settings=/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/etc/config/scotch.sh
+ . /home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/etc/config/scotch.sh
++ export SCOTCH_VERSION=scotch_6.0.3
++ SCOTCH_VERSION=scotch_6.0.3
++ export SCOTCH_ARCH_PATH=/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/ThirdParty-3.0.0/platforms/linux64swgccInt32/scotch_6.0.3
++ SCOTCH_ARCH_PATH=/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/ThirdParty-3.0.0/platforms/linux64swgccInt32/scotch_6.0.3
+ echo 'using SCOTCH_ARCH_PATH=/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/ThirdParty-3.0.0/platforms/linux64swgccInt32/scotch_6.0.3'
using SCOTCH_ARCH_PATH=/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/ThirdParty-3.0.0/platforms/linux64swgccInt32/scotch_6.0.3
+ wmake lib fvMotionSolver
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/fvMotionSolver
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libfvMotionSolvers.a' is up to date.
+ wmake lib engine
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/engine
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libengine.a' is up to date.
+ wmake lib fvOptions
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/fvOptions
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libfvOptions.a' is up to date.
+ wmake lib regionCoupled
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/regionCoupled
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libregionCoupled.a' is up to date.
+ postProcessing/Allwmake lib
+ wmake libo postCalc
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/postProcessing/postCalc
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/postCalc.o' is up to date.
+ wmake lib foamCalcFunctions
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/postProcessing/foamCalcFunctions
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libfoamCalcFunctions.a' is up to date.
+ functionObjects/Allwmake lib
+ wmake lib cloud
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/postProcessing/functionObjects/cloud
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libcloudFunctionObjects.a' is up to date.
+ wmake lib field
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/postProcessing/functionObjects/field
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libfieldFunctionObjects.a' is up to date.
+ wmake lib forces
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/postProcessing/functionObjects/forces
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libforces.a' is up to date.
+ wmake lib fvTools
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/postProcessing/functionObjects/fvTools
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libFVFunctionObjects.a' is up to date.
+ wmake lib IO
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/postProcessing/functionObjects/IO
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libIOFunctionObjects.a' is up to date.
+ wmake lib jobControl
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/postProcessing/functionObjects/jobControl
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libjobControl.a' is up to date.
+ wmake lib systemCall
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/postProcessing/functionObjects/systemCall
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libsystemCall.a' is up to date.
+ wmake lib utilities
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/postProcessing/functionObjects/utilities
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libutilityFunctionObjects.a' is up to date.
+ wmake lib sixDoFRigidBodyMotion
/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/src/sixDoFRigidBodyMotion
'/home/export/online1/systest/swrh/lhb/OpenFOAM_RIGHT/OpenFOAM-3.0.0/platforms/linux64swgccDPInt32Opt/lib/libsixDoFRigidBodyMotion.a' is up to date.
