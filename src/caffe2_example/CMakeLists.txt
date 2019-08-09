SET(caffe2_include_dir
        /usr/local/torch/include
        /usr/local/opencv/include/opencv4
        /usr/include
        /usr/local/leveldb/include
        /usr/local/lmdb/include
        )
include_directories(${caffe2_include_dir})
set(caffe2_libs
        /usr/local/torch/lib/lbc10.so
        /usr/local/torch/lib/libfoxi.so
        /usr/local/torch/lib/libcaffe2.so
        /usr/local/torch/lib/libonnxifi.so
        /usr/local/torch/lib/libfoxi_dummy.so
        /usr/local/torch/lib/libonnxifi_dummy.so
        /usr/local/torch/lib/libcaffe2_detectron_ops.so
        /usr/local/torch/lib/libmodule_test_dynamic.so
        ${OpenCV_LIBS}
        /usr/lib/x86_64-linux-gnu/libboost_system.so
        /usr/lib/x86_64-linux-gnu/libboost_thread.so

        /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
        /usr/lib/x86_64-linux-gnu/libboost_chrono.so
        /usr/lib/x86_64-linux-gnu/libboost_date_time.so;
        /usr/lib/x86_64-linux-gnu/libboost_atomic.so
        -fopenmp
        /usr/lib/x86_64-linux-gnu/libglog.so
        /usr/lib/x86_64-linux-gnu/libgflags.so
        /usr/lib/x86_64-linux-gnu/libprotobuf.so
        /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_cpp.so
        /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so
        /usr/lib/x86_64-linux-gnu/libpthread.so
        /usr/lib/x86_64-linux-gnu/libsz.so
        /usr/lib/x86_64-linux-gnu/libz.so
        /usr/lib/x86_64-linux-gnu/libdl.so
        /usr/lib/x86_64-linux-gnu/libm.so
        /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl_cpp.so
        /usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5_hl.so
        /usr/lib/x86_64-linux-gnu/liblapack.a
        /usr/lib/x86_64-linux-gnu/libcblas.a
        /usr/lib/x86_64-linux-gnu/libatlas.so
        /usr/local/leveldb/lib/libleveldb.so
        /usr/local/lmdb/lib/liblmdb.so
        )
file(GLOB caffe2_SOURCES *.cpp)
foreach(filename ${cafff2_SOURCES})
    get_filename_component(name ${filename} NAME_WE)
    add_executable(${name} ${filename})
    target_link_libraries(${name} ${caffe2_libs})
endforeach()