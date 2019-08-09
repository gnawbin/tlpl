file(GLOB pty_SOURCES *.c)
foreach(filename ${pty_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(${name}  ${filename})
    target_link_libraries(${name} pty_fork pty_master_open  pty_master_open_bsd pthread tlpl_lib rt crypt)

endforeach()