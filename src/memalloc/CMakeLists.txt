file(GLOB memalloc_SOURCES *.c)
foreach(filename ${memalloc_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(${name} ${filename})
    target_link_libraries(${name} tlpl_lib pthread )

endforeach()