#include "CppUTest/TestHarness.h"

TEST_GROUP(ReadFiles){

    void setup(){

    } void teardown(){

    }};

TEST(ReadFiles, return_ok)
{

    CHECK_EQUAL("ok", "ok");
}
