#ifndef __SCIMP_C_GW_HXX__
#define __SCIMP_C_GW_HXX__

#ifdef _MSC_VER
#ifdef SCIMP_C_GW_EXPORTS
#define SCIMP_C_GW_IMPEXP __declspec(dllexport)
#else
#define SCIMP_C_GW_IMPEXP __declspec(dllimport)
#endif
#else
#define SCIMP_C_GW_IMPEXP
#endif

extern "C" SCIMP_C_GW_IMPEXP int scimp_c(wchar_t* _pwstFuncName);






























#endif /* __SCIMP_C_GW_HXX__ */
