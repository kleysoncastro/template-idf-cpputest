#include "CppUTest/CommandLineTestRunner.h"
IMPORT_TEST_GROUP(ReadFiles);

int main(int ac, char **av)
{

    return CommandLineTestRunner::RunAllTests(ac, av);
}