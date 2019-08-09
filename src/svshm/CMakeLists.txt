file(GLOB svshm_SOURCES *.c)
foreach(filename ${svshm_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(svshm_${name}  ${filename})
    target_link_libraries(svshm_${name} pthread tlpl_lib rt)

endforeach()