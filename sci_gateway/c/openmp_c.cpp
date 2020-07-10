#include <wchar.h>
#include "openmp_c.hxx"
extern "C"
{
#include "openmp_c.h"
#include "addfunction.h"
}

#define MODULE_NAME L"openmp_c"

int openmp_c(wchar_t* _pwstFuncName)
{
    if(wcscmp(_pwstFuncName, L"get_total_thread") == 0){ addCFunction(L"get_total_thread", &sci_gettnum, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"set_total_thread") == 0){ addCFunction(L"set_total_thread", &sci_settnum, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"get_thread_num") == 0){ addCFunction(L"get_thread_num", &sci_get_thread_num, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"get_max_threads") == 0){ addCFunction(L"get_max_threads", &sci_get_max_threads, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"get_num_procs") == 0){ addCFunction(L"get_num_procs", &sci_getnumprocs, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"omp") == 0){ addCFunction(L"omp", &sci_omp, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"get_wtime") == 0){ addCFunction(L"get_wtime", &sci_wtime, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"get_dynamic") == 0){ addCFunction(L"get_dynamic", &sci_get_dynamic, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"get_max_active_levels") == 0){ addCFunction(L"get_max_active_levels", &sci_get_max_active_levels, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"set_max_active_levels") == 0){ addCFunction(L"set_max_active_levels", &sci_set_max_active_levels, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"set_dynamic") == 0){ addCFunction(L"set_dynamic", &sci_set_dynamic, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"get_nested") == 0){ addCFunction(L"get_nested", &sci_get_nested, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"set_nested") == 0){ addCFunction(L"set_nested", &sci_set_nested, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"get_team_num") == 0){ addCFunction(L"get_team_num", &sci_get_team_num, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"get_num_teams") == 0){ addCFunction(L"get_num_teams", &sci_get_num_teams, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"mat_mul") == 0){ addCFunction(L"mat_mul", &sci_mat_mul, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"master") == 0){ addCFunction(L"master", &sci_master, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"critical") == 0){ addCFunction(L"critical", &sci_critical, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"single") == 0){ addCFunction(L"single", &sci_single, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"get_level") == 0){ addCFunction(L"get_level", &sci_get_level, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"get_active_level") == 0){ addCFunction(L"get_active_level", &sci_get_active_level, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"get_thread_limit") == 0){ addCFunction(L"get_thread_limit", &sci_get_thread_limit, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"in_parallel") == 0){ addCFunction(L"in_parallel", &sci_in_parallel, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"init_lock") == 0){ addCFunction(L"init_lock", &sci_init_lock, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"set_lock") == 0){ addCFunction(L"set_lock", &sci_set_lock, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"unset_lock") == 0){ addCFunction(L"unset_lock", &sci_unset_lock, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"destroy_lock") == 0){ addCFunction(L"destroy_lock", &sci_destroy_lock, MODULE_NAME); }
    if(wcscmp(_pwstFuncName, L"team") == 0){ addCFunction(L"team", &sci_team, MODULE_NAME); }

    return 1;
}
