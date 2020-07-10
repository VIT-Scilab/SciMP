#ifndef __OPENMP_C_GW_HXX__
#define __OPENMP_C_GW_HXX__

#ifdef _MSC_VER
#ifdef OPENMP_C_GW_EXPORTS
#define OPENMP_C_GW_IMPEXP __declspec(dllexport)
#else
#define OPENMP_C_GW_IMPEXP __declspec(dllimport)
#endif
#else
#define OPENMP_C_GW_IMPEXP
#endif

extern "C" OPENMP_C_GW_IMPEXP int openmp_c(wchar_t* _pwstFuncName);






























#endif /* __OPENMP_C_GW_HXX__ */
