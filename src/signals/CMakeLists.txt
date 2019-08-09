file(GLOB signals_SOURCES *.c)
foreach(filename ${signals_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(signals_${name}  ${filename})
    target_link_libraries(signals_${name} signals_signal_functions signals_signal signals_siginterrupt pthread tlpl_lib rt crypt)

endforeach()