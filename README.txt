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
Name: SciMP

Purpose: To implement the OpenMP functions in scilab

Target Operating systems: Windows and Linux

External Software used: OpenMP

Wikipedia link of the software integrated: https://en.wikipedia.org/wiki/OpenMP

Directory structure of the Toolbox:
				etc: The .start and .quit present in this directory which helps in loading and unloading the toolbox.
				macros: The macros directory is used to integrate the functions written in scilab itself saved as .sci inside the toolbox.
				help: The .xml file present inside this direcory for each function implemented in the toolbox.This inturn
				      	helps in showing the help inside the scilab.
				src: The .c and .h present inside this has the C code of the functions implemented, this later is integrated in 
				     	scilab through gateways.
				gateway: The sci_gateway files are present inside this directory which has gateway codes (files) for each C code written.
					 This acts as a bridge between scilab and C code.
				examples: This directory has sample example programs with the functions implemented in scilab.

Directory struture of the library: 
		Windows: The 'libgomp.a' file helps in implementing the OpenMP enabled programs in C.
		         This library file will be present in the lib directory of the installed GCC compiler(MinGW)
		Linux: The 'libgomp.a' file helps in implementing the OpenMP enabled programs in C.
		       This library file is present inside the gcc instalation directory in linux.
Version: 1.0

Last updated: 11-07-2020

Prerequisite for the SciMP toolbox in Windows: Mingw toolbox in scilab (refer the link below to correctly install this)

Building the toolbox: executing the command 'exec builder.sce' in scilab console inside the toolbox directory.

Loading the toolbox: executing the command 'exec loader.sce' in scilab console inside the toolbox directory.

Link to the document explaining installation of SciMP Toolbox: https://bit.ly/3eAlHSl