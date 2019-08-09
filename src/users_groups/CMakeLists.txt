file(GLOB zmq_cpp_SOURCES *.cpp)
foreach(filename ${zmq_cpp_SOURCES})

    get_filename_component(name ${filename} NAME_WE)
    add_executable(zmq_cpp_${name} ${filename})
    target_link_libraries(zmq_cpp_${name} pthread zmq )
endforeach()