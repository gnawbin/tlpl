include_directories(include)
include_directories(../lib)
file(GLOB sockets_SOURCES *.c)

foreach(filename ${sockets_SOURCES})
 get_filename_component(name ${filename} NAME_WE)
   if(${name}  MATCHES "inet_socket" OR ${name} MATCHES "rdwrn" OR ${name} MATCHES "unix_sockets" OR ${name} MATCHES "read_line_buf"
   OR ${name} MATCHES "read_line" OR ${name} MATCHES "sendfile")
    set(equal_socket FALSE)
  else()
    set(equal_socket TRUE)
   endif()

  if(${equal_socket})

    add_executable(${name} ${filename})
   target_link_libraries(${name}
      tlpl_lib
      inet_sockets
      rdwrn
      unix_sockets read_line_buf read_line sendfile)
  endif()
endforeach()

  #  add_executable(${name} ${filename})
  #  target_link_libraries(${name} tlpl_lib pthread)
