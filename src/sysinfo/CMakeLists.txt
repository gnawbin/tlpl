file(GLOB sysinfo_SOURCES *.c)
foreach(filename ${sysinfo_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(sysinfo_${name}  ${filename})
    target_link_libraries(sysinfo_${name} pthread tlpl_lib rt)

endforeach()