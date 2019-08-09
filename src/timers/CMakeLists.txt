file(GLOB timers_SOURCES *.c)
foreach(filename ${timers_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(timers_${name}  ${filename})
    target_link_libraries(timers_${name} timers_itimerspec_from_str pthread tlpl_lib rt)

endforeach()