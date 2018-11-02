
#ifndef interpolateParameter_H
#define interpolateParameter_H

#ifdef __cplusplus
extern "C"
{
#endif

//#include "rowSubsection.h"

typedef struct Parameter
{
	//the pointer of faces value
	char* fvPtr;

	//the pointer of cells value
	char* cvPtr;

	//the pointer of weights
	double* weiPtr;

	//the pointer of 1-weights
	double* _1wPtr;

	//the pointer of owner
	int* ownPtr;

	//the pointer of neighbor
	int* neiPtr;

	//the pointer of rowSubsection
	struct rowSubsection** subSecPtr;//

	//the number of sections in every sagment
	int secNum;

	//the number of element in a type
	int eleNum;

	//the size of type
	int typeSize;

	//some test information
	double* usage;
}Parameter,*ParameterPtr;

#ifdef __cplusplus
}
#endif

#endif
