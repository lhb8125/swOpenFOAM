#ifdef __cplusplus
extern "C" {
#endif

void interpolate1(
	int faceNum,
	int cellNum,
	const void* fvPtr,
	const void* cvPtr,
	const double* weiPtr,
	const double* _1wPtr,
	const int* ownPtr,
	const int* neiPtr,
	int typeSize);

#ifdef __cplusplus
}
#endif
