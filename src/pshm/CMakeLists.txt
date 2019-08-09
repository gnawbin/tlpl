file(GLOB pshm_SOURCES *.c)
foreach(filename ${pshm_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(${name}  ${filename})
    target_link_libraries(${name}  pthread tlpl_lib rt crypt)

endforeach()