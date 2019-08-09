file(GLOB filesys_SOURCES *.c)
foreach(filename ${filesys_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(filesys_${name} ${filename})
    target_link_libraries(filesys_${name} tlpl_lib pthread )

endforeach()