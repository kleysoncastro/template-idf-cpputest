# confirações cpputest

set(ENV{CPPUTEST_HOME} ${CMAKE_CURRENT_SOURCE_DIR}/cpputest)

#include_directories(${LIB_READFILE_USE})
#include_directories(${LIB_SQLITE_USE})
if(DEFINED ENV{CPPUTEST_HOME})
    message(STATUS "Using CppUTEst in path " $ENV{CPPUTEST_HOME})
    set(CPPUTEST_INCLUDE_DIRS $ENV{CPPUTEST_HOME}/include)
    set(CPPUTEST_LIBRARIES $ENV{CPPUTEST_HOME}/build-host/lib)
    set(CPPUTEST_LDFLAGS "CppUTestExt")
    set(CPPUTEST_CPPUESTEXT "CppUTest")

endif()

include_directories(
        ${CPPUTEST_INCLUDE_DIRS}
)
link_directories(${CPPUTEST_LIBRARIES})

# todos ditetorios de testes devem ser add aqui.
add_subdirectory(readfile)
#add_subdirectory(sqlite)

# fim 

add_executable(tests tests.cpp)

target_link_libraries(tests ${CPPUTEST_LDFLAGS} ${CPPUTEST_CPPUESTEXT} readfile_test)