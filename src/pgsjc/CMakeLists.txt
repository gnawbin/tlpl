file(GLOB pgsic_SOURCES *.c)
foreach(filename ${pgsic_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(pgsjc_${name} ${filename})
    target_link_libraries(pgsjc_${name} tlpl_lib pthread )

endforeach()