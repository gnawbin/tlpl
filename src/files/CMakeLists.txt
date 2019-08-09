file(GLOB files_SOURCES *.c)
foreach(filename ${files_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(${name} ${filename})
    target_link_libraries(${name} tlpl_lib pthread file_perms)

endforeach()