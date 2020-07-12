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

function builder_c()

    src_c_path = get_absolute_file_path("builder_c.sce");
    CFLAGS = ilib_include_flag(src_c_path);
    
    if getos()=="Linux" then
         path= "/usr/lib/gcc/x86_64-linux-gnu/7/libgomp"
    elseif getos()=="Windows" then
         path=mgw_getArchBinPath()+"\..\..\lib\libgomp";
    
    end
tbx_build_src(["gettnum","settnum","get_thread_num","get_max_threads","getnumprocs","omp","wtime",...
    "get_dynamic","set_dynamic","get_max_active_levels","set_max_active_levels","get_nested","set_nested",...
    "get_num_teams","get_team_num","mat_mul","critical","single","master","get_level","get_active_level",...
    "get_thread_limit","in_parallel","init_lock","set_lock","unset_lock","destroy_lock","team"],       ..
    ["gettnum.c","settnum.c","get_thread_num.c","get_max_threads.c","getnumprocs.c","omp.c","wtime.c","get_dynamic.c",...
    "set_dynamic.c","get_max_active_levels.c","set_max_active_levels.c","get_nested.c","set_nested.c",...
    "get_num_teams.c","get_team_num.c","mat_mul.c","critical.c","single.c","master.c","get_level.c","get_active_level.c"...
    "get_thread_limit.c","in_parallel.c","init_lock.c","set_lock.c","unset_lock.c","destroy_lock.c","team.c"], ..
    "c",                ..
    src_c_path,         ..
    path, ..
    "",                 ..
    CFLAGS+" -fopenmp");
endfunction

builder_c();
clear builder_c; // remove builder_c on stack
