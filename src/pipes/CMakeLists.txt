
file(GLOB pipes_SOURCES *.c)
foreach(filename ${pipes_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(pipes_${name} ${filename})
    target_link_libraries(pipes_${name} tlpl_lib pthread )

endforeach()