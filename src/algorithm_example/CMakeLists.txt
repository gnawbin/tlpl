project(algorithm)
#INCLUDE_DIRECTORIES(/usr/lib/jvm/java-8-openjdk-amd64/include/)
find_package(OpenCV 4.1.0 EXACT REQUIRED)
include_directories("/usr/lib/jvm/java-11-openjdk-amd64/include")
include_directories("/usr/lib/jvm/java-11-openjdk-amd64/include/linux")

add_executable(hashTable_main hashTable_main.cpp SimpleHashTable.h SLList.h DDList.h)
target_link_libraries(hashTable_main )
#add_executable(library library.cpp)
#target_link_libraries(library)
add_executable(test_decision_tree  test_decision_tree.cpp decision_tree.h)
target_link_libraries(test_decision_tree  glog)
add_executable(kmeans_test kmeans_test.cpp kmeans.h)
target_link_libraries(kmeans_test glog ${OpenCV_LIBS})
add_subdirectory(BPlus_Tree_implement)
add_executable(logistic_regression_test logistic_regression_test.cpp logistic_regression.h)
target_link_libraries(logistic_regression_test glog ${OpenCV_LIBS})
add_executable(BP_test BP.h BP_test.cpp)
target_link_libraries(BP_test glog ${OpenCV_LIBS})

add_executable(BinarySearchTree_tree BinarySearchTree_tree.cpp BinarySearchTree.h)
target_link_libraries(BinarySearchTree_tree)
add_executable(example_1 example_1.cpp )
target_link_libraries(example_1 )
add_executable(RBTree RBTree.cpp RBTree.h)
target_link_libraries(RBTree)
#add_executable(example1 example1.cpp)
#target_link_libraries(example1 /usr/lib/x86_64-linux-gnu/libpython3.6m.so)
add_executable(decision_tree_py decision_tree_py.cpp decision_tree.h)
target_link_libraries(decision_tree_py /usr/lib/x86_64-linux-gnu/libpython3.6m.so glog)
add_library(testpy SHARED testpy.cpp)
target_link_libraries(testpy python3.6m glog)
add_executable(perceptron perceptron.h test_perceptron.cpp)
target_link_libraries(perceptron glog)
add_executable(json_example json_example.cpp)
target_link_libraries(json_example ${JSONCPP_LIBRARIES})