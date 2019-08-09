file(GLOB threads_SOURCES *.c)
foreach(filename ${threads_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(threads_${name}  ${filename})
    target_link_libraries(threads_${name} threads_strerror pthread tlpl_lib)

endforeach()