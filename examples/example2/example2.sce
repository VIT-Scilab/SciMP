/********************************************************************************************
Copyright © 2020 

Authors: Surya Prasad S, Yeshwanth R, Tharun Bhargav A, Aravind Krishna R, Dr. Maheswari R
Organization: VIT, Chennai
Email: suryavirat09@gmail.com, yeshwa.rp@gmail.com, tharun.cam@gmail.com, aravind2000krishna@gmail, Maheswari.r@vit.ac.in 

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
startTime = get_wtime(); // To start the timer.
m=input("        Enter the number of rows of first matrix:")
n=input("        Enter the number of columns of first matrix:")
m1=input("        Enter the number of rows of second matrix:")
n1=input("        Enter the number of columns of second matrix:")
mat_a=input("       Enter the first matrix:")
mat_b=input("       Enter the second matrix:")
mprintf("\n\n\tMatrix multiplication:");
mat_c = mat_mul(mat_a,m,n,mat_b,m1,n1);               //Multiplication through OpenMP
mprintf("\n\tMatrix A:");
disp(mat_a);
mprintf("\n\tMatrix B:");
disp(mat_b);                   
mprintf("\n\tProduct of the matrices using OpenMp (mat_mul function): ")
disp(mat_c);
endTime = get_wtime();
time = endTime - startTime; // Finding the time difference from the start and the end of the program.
mprintf("\n\n\tTotal time taken for program execution: %0.2f s", time);
