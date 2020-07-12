/********************************************************************************************
Copyright © 2020 

Authors: Surya Prasad S, Yeshwanth R, Tharun Bhargav A, Aravind Krishna R, Dr. Maheswari R
Organization: VIT Chennai
Email: suryavirat09@gmail.com, yeshwa.rp@gmail.com, tharun.cam@gmail.com, aravind2000krishna@gmail, maheswari.r@vit.ac.in 

This toolbox integrates the functionalities of OpenMP with Scilab. 

This file must be used under the terms of CeCILL. This source file is licensed as described in the 
file LICENSE, which you should have received as part of this distribution. The terms are also 
available at
https://cecill.info/licences/Licence_CeCILL_V2-en.txt 

This software is governed by the CeCILL  license under French law and
abiding by the rules of distribution of free software.  You can  use, 
modify and/ or redistribute the software under the terms of the CeCILL
license as circulated by CEA, CNRS and INRIA at the following URL
"http://www.cecill.info". 

As a counterpart to the access to the source code and  rights to copy,
modify and redistribute granted by the license, users are provided only
with a limited warranty  and the software's author,  the holder of the
economic rights,  and the successive licensors  have only  limited
liability. 

In this respect, the user's attention is drawn to the risks associated
with loading,  using,  modifying and/or developing or reproducing the
software by the user in light of its specific status of free software,
that may mean  that it is complicated to manipulate,  and  that  also
therefore means  that it is reserved for developers  and  experienced
professionals having in-depth computer knowledge. Users are therefore
encouraged to load and test the software's suitability as regards their
requirements in conditions enabling the security of their systems and/or 
data to be ensured and,  more generally, to use and operate it in the 
same conditions as regards security. 

The fact that you are presently reading this means that you have had
knowledge of the CeCILL license and that you accept its terms.
********************************************************************************************/

mprintf("\n\tBefore the parallel region:-")
check = in_parallel();// To check if parallel region is enabled.
mprintf("\n\tValue returned by in_parallel: %d", check);

omp(1)      //Enabling parallel region.
mprintf("\n\n\tInside parallel region:-");
check = in_parallel();
mprintf("\n\tValue returned by in_parallel: %d", check);
procs = get_num_procs(); // To get the number of processors.
mprintf("\n\tThe total number of processors in the system: %d", procs);
a=get_max_threads();        //To get the number of threads which can be run in the parallel region.
mprintf("\n\tget_max_threads function returns: %d", a);
limit = get_thread_limit(); // To get the maximum possible thread limit for the system.
mprintf("\n\tThread limit: %d", limit);

tt = get_total_thread(); // To get the number of threads running in the parallel region
n=input("        Enter the number of threads to be run in the parallel region:")
mprintf("\n\tTotal number of threads: %d",tt);
mprintf("\n\tSetting total number of threads to %d\.\.\.",n);
set_total_thread(n); // To set the number of threads which can be run in the parallel region
n_tt = get_total_thread(); 
mprintf("\n\tTotal number of threads after setting: %d",n_tt);
critical(1)     //To enable the critical region of OpenMP
seq = get_thread_num(); // To get the thread sequence (executing in the parallel region)
critical(0)
mprintf("\n\tSequence of execution of threads: ");
mprintf(" %d", seq(:));

max_active = get_max_active_levels(); // TO get the maximum active levels
mprintf("\n\tCurrent maximum active levels: %d",max_active);
mprintf("\n\tSetting maximum active levels to 15");
set_max_active_levels(15); // To set the active levels 
nmax_active = get_max_active_levels();
mprintf("\n\tAfter setting, maximum active levels: %d",nmax_active);

level = get_level(); // To get the present level of execution.
mprintf("\n\tNumber of nested parallel region: %d", level);
act_level = get_active_level(); // To get the present active level of execution.
mprintf("\n\tNumber of active, nested parallel region: %d", act_level);

nested = get_nested(); // Indicates the status of nested parallelism(1 or 0).
mprintf("\n\n\tValue of get_nested before: %d", nested);
mprintf("\n\tSetting value of get nested to 3.");
set_nested(1); // To enable nested parallelism.
n_nested = get_nested();
mprintf("\n\tValue of get_nested after setting: %d", n_nested);

mprintf("\n\n\tLocks:")
init_lock(); // To initialize the lock.
mprintf("\n\tInitializing a lock using init_lock()\.\.");
set_lock(); // To set the lock.
mprintf("\n\tSetting the lock using set_lock()");
unset_lock(); // To unset the lock.
mprintf("\n\tUnsetting the lock using unset_lock()");
destroy_lock(); // To destroy the lock.
mprintf("\n\tDestroying the lock using destroy_lock()\.\.");

mprintf("\n\n\tTeams:")
team(1)         // To enable teams region in the OpenMP.
num_tms = get_num_teams();// To return the number of teams in the current team region.
mprintf("\n\tNumber of teams: %d", num_tms);
tms = get_team_num(); // To return the team number of calling thread.
mprintf("\n\tTeam number: %d", tms);
team(0)

mprintf("\n\n\tDynamic:")
dy = get_dynamic(); // To check the status(1 or 0) of the dynamic thread allocation.
mprintf("\n\tValue returned by get_dynamic: %d",dy);
set_dynamic(1); // To enable or disable the dynamic thread allocation.
mprintf("\n\tSetting dynamic threads to 1\.\.\.");
n_dy = get_dynamic();
mprintf("\n\tValue returned by get_dynamic after setting: %d", n_dy);
set_dynamic(0);         
mprintf("\n\tSetting dynamic threads back to 0 \.\.\.")
omp(0)                                         //Closing parallel region
