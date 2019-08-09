file(GLOB getopt_SOURCES *.c)
foreach(filename ${getopt_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(${name} ${filename})
    target_link_libraries(${name} tlpl_lib pthread )

endforeach()