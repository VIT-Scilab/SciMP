#ifndef __LIBOPENMP_C_GW_HXX__
#define __LIBOPENMP_C_GW_HXX__

#ifdef _MSC_VER
#ifdef LIBOPENMP_C_GW_EXPORTS
#define LIBOPENMP_C_GW_IMPEXP __declspec(dllexport)
#else
#define LIBOPENMP_C_GW_IMPEXP __declspec(dllimport)
#endif
#else
#define LIBOPENMP_C_GW_IMPEXP
#endif

extern "C" LIBOPENMP_C_GW_IMPEXP int libopenmp_c(wchar_t* _pwstFuncName);






























#endif /* __LIBOPENMP_C_GW_HXX__ */
