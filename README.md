# Template esp-idf v5 CppUTest e Cmake

Template para projetos com esp32 usando idf, compativel com v5 e cmake

O template vem configurada para rodar testes de unidade com [cpputest](https://cpputest.github.io/) no host.

Compila  binário  `Posix/Linux`  com comando `idf.py --preview set-target linux` em build/`nome-do-project.elf`.

Compilar binário final para rodar no target


## Features

È de grande interece compilar o cpputest para rodar no target esp32, ainda é apenas pesquisa.

Entao essas features podem não ser implementadas.

[ ] Compilar CppUtest com esp-idf

[ ] script para build e rodas os testes
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