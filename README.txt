Name: SciMP

Authors: Surya Prasad S, Yeshwanth R, Tharun Bhargav A, Aravind Krishna R, Dr. Maheswari R

License: CeCILL

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

Last updated:26 -06-2020

Prerequisite for the SciMP toolbox in Windows: Mingw toolbox in scilab (refer the link below to correctly install this)

Building the toolbox: executing the command 'exec builder.sce' in scilab console inside the toolbox directory.

Loading the toolbox: executing the command 'exec loader.sce' in scilab console inside the toolbox directory.

Link to the document explaining installation of SciMP Toolbox: https://bit.ly/3eAlHSl