// This file is licensed under CeCILL

function buildmacros()
    macros_path = get_absolute_file_path("buildmacros.sce");
    tbx_build_macros('scimp', macros_path);
endfunction

buildmacros();
clear buildmacros; // remove buildmacros on stack

