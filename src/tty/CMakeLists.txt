file(GLOB tty_SOURCES *.c)
foreach(filename ${tty_SOURCES})

    get_filename_component(name ${filename} NAME_WE)
    add_executable(tty_${name} ${filename})
    target_link_libraries(tty_${name} tlpl_lib pthread  tty_tty_functions tty_ttyname)
endforeach()