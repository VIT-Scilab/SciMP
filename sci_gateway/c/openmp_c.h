#ifndef __OPENMP_C_GW_H__
#define __OPENMP_C_GW_H__

#include "c_gateway_prototype.h"

C_GATEWAY_PROTOTYPE(sci_critical);
C_GATEWAY_PROTOTYPE(sci_destroy_lock);
C_GATEWAY_PROTOTYPE(sci_get_active_level);
C_GATEWAY_PROTOTYPE(sci_get_dynamic);
C_GATEWAY_PROTOTYPE(sci_get_level);
C_GATEWAY_PROTOTYPE(sci_get_max_active_levels);
C_GATEWAY_PROTOTYPE(sci_get_max_threads);
C_GATEWAY_PROTOTYPE(sci_get_nested);
C_GATEWAY_PROTOTYPE(sci_get_num_teams);
C_GATEWAY_PROTOTYPE(sci_get_team_num);
C_GATEWAY_PROTOTYPE(sci_get_thread_limit);
C_GATEWAY_PROTOTYPE(sci_get_thread_num);
C_GATEWAY_PROTOTYPE(sci_getnumprocs);
C_GATEWAY_PROTOTYPE(sci_gettnum);
C_GATEWAY_PROTOTYPE(sci_in_parallel);
C_GATEWAY_PROTOTYPE(sci_init_lock);
C_GATEWAY_PROTOTYPE(sci_master);
C_GATEWAY_PROTOTYPE(sci_mat_mul);
C_GATEWAY_PROTOTYPE(sci_omp);
C_GATEWAY_PROTOTYPE(sci_set_dynamic);
C_GATEWAY_PROTOTYPE(sci_set_lock);
C_GATEWAY_PROTOTYPE(sci_set_max_active_levels);
C_GATEWAY_PROTOTYPE(sci_set_nested);
C_GATEWAY_PROTOTYPE(sci_settnum);
C_GATEWAY_PROTOTYPE(sci_single);
C_GATEWAY_PROTOTYPE(sci_team);
C_GATEWAY_PROTOTYPE(sci_unset_lock);
C_GATEWAY_PROTOTYPE(sci_wtime);

#endif /* __OPENMP_C_GW_H__ */
