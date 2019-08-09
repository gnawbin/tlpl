file(GLOB proc_SOURCES *.c)
foreach(filename ${proc_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(proc_${name} ${filename})
    target_link_libraries(proc_${name} tlpl_lib pthread rt)

endforeach()