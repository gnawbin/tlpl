file(GLOB syslim_SOURCES *.c)
foreach(filename ${syslim_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(syslim_${name}  ${filename})
    target_link_libraries(syslim_${name}  pthread tlpl_lib rt)

endforeach()