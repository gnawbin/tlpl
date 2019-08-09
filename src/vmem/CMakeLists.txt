file(GLOB vmem_SOURCES *.c)
foreach(filename ${vmem_SOURCES})

    get_filename_component(name ${filename} NAME_WE)
    add_executable(vmem_${name} ${filename})
    target_link_libraries(vmem_${name} tlpl_lib pthread  )
endforeach()