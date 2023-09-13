# @uthor kleyson castro
# https://www.linkedin.com/in/kleyson-castro/

git clone git@github.com:cpputest/cpputest.git
cd cpputest
cmake -B build-host
cd build-host
make -j4
mkdir lib
cp src/CppUTest/libCppUTest.a lib
echo "lib libCppUTest.a DONE!"
cp src/CppUTestExt/libCppUTestExt.a lib
echo "lib libCppUTestExt.a DONE!"
echo "[Config build cpputst node!]"
