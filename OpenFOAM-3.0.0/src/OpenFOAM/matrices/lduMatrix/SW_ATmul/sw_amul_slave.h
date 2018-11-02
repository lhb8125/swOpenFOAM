#ifndef SW_FUNC_H
#define SW_FUNC_H
#define SLAVE_FUNC(funcname) slave_##funcname
#include "sw_struct.h"

    extern void SLAVE_FUNC(ATmul_Diag)(amul_para *);
    extern void SLAVE_FUNC(ATmul_Upper_Lowwer)(const amul_translate_array_ptr parameter);

#endif
