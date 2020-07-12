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
#include<omp.h>
int gettnum(double *ar);
int settnum(double *ar,double a);
int get_max_threads(double * answ);
int get_thread_num(double* answ, int num1);
int getnumprocs(double *ar);
int omp(int a);
int master(int m);
int critical(int c);
int single(int s);
int team(int t);
int wtime(double *ar);
int get_dynamic(double *ar);
int set_dynamic(int num);
int get_max_active_levels(double *num);
int set_max_active_levels(int num);
int get_nested(double *num);
int set_nested(int num);
int get_team_num(double* answ);
int get_num_teams(double* answ);
int get_level(double *answ);
int get_active_level(double *answ);
int mat_mul( double *in1, int row1, int col1, double *in2, int row2, int col2, double *out1);
int in_parallel(double *num);
int get_thread_limit(double *num);
int init_lock();
int set_lock();
int unset_lock();
int destroy_lock();
extern int parallel;
extern int mast;
extern int sing;
extern int crit;
extern int teams;
extern omp_lock_t my_lock;


