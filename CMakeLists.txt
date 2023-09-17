# # @uthor kleyson castro
# https://www.linkedin.com/in/kleyson-castro/



cmake_minimum_required(VERSION 3.20)

include($ENV{IDF_PATH}/tools/cmake/project.cmake)
include_directories(${IDF_PATH}/components/**)

set(COMPONENTS main)
project(host-test)