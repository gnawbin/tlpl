file(GLOB xattr_SOURCES *.c)
foreach(filename ${xattr_SOURCES})

    get_filename_component(name ${filename} NAME_WE)
    add_executable(xattr_${name} ${filename})
    target_link_libraries(xattr_${name} tlpl_lib pthread  )
endforeach()