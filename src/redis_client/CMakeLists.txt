set(QT5_LIBRARIES  Qt5::Core Qt5::Gui Qt5::Qml Qt5::Quick Qt5::Widgets Qt5::Test Qt5::Xml Qt5::Sql)
        add_executable(example_qt example_qt.cpp)
target_link_libraries(example_qt ${QT5_LIBRARIES} hiredis)