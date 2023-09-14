# Template esp-idf v5 CppUTest e Cmake

Template para projetos com esp32 usando idf, compativel com v5 e cmake

O template vem configurada para rodar testes de unidade com [cpputest](https://cpputest.github.io/) no host.

Compila  binário  `Posix/Linux`  com comando `idf.py --preview set-target linux` em build/`nome-do-project.elf`.

Compilar binário final para rodar no target


## Features

È de grande interece compilar o cpputest para rodar no target esp32, ainda é apenas pesquisa.

Entao essas features podem não ser implementadas.

[  ] Compilar CppUtest com esp-idf

[X] script para build e rodas os testes
## Dependencias

As dependências são as mesma para build do esp-idf [espressif](https://docs.espressif.com/projects/esp-idf/)

## Mode de uso

Apos o clone da branch main

Para baixar e compilar o cpputest, basta executar o script `.env`

vai ser feito git clone do cpputest e compilado para o sua maquina host.
```bash
$ ./env
```

#### Rodar no host os teste

```bash
$ cmake -B build -DTESTS=ON
```

### Uma nova forma de executar de compilar e radas os teste
```bash
$ python3 run_test.py
-- The C compiler identification is GNU 12.2.0
-- The CXX compiler identification is GNU 12.2.0
-- Detecting C compiler ABI info
-- Detecting C compiler ABI info - done
-- Check for working C compiler: /usr/bin/cc - skipped
-- Detecting C compile features
-- Detecting C compile features - done
-- Detecting CXX compiler ABI info
-- Detecting CXX compiler ABI info - done
-- Check for working CXX compiler: /usr/bin/c++ - skipped
-- Detecting CXX compile features
-- Detecting CXX compile features - done
building tests cpputest
-- Using CppUTEst in path /home/castro/developer/esp/esp32-linux-cpputest/tests/cpputest
-- Configuring done
-- Generating done
-- Build files have been written to: /home/castro/developer/esp/esp32-lunux-cpputest/build
[ 25%] Building CXX object tests/readfile/CMakeFiles/readfile_test.dir/readfileTest.cpp.o
[ 50%] Linking CXX static library libreadfile_test.a
[ 50%] Built target readfile_test
[ 75%] Building CXX object tests/CMakeFiles/tests.dir/tests.cpp.o
[100%] Linking CXX executable tests
[100%] Built target tests
.
OK (1 tests, 1 ran, 1 checks, 0 ignored, 0 filtered out, 0 ms)
```

#### Compilar binário esp32 para rodar no host

```bash
$ idf.py --preview set-target linux
$ idf.py build
```

Para que o binário seja compilado para rodar no host linux é preciso configurar o CMakeLists.txt principal. [host esp32](https://docs.espressif.com/projects/esp-idf/en/latest/esp32/api-guides/host-apps.html)

```cmake
    include($ENV{IDF_PATH}/tools/cmake/project.cmake)
    set(COMPONENTS main)
    project(host-test)

```

### Para compilar para o target

Para compilar para target basta seguir os passos default

```bash
$ idf.py build

```
