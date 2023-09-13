import subprocess
import os

def build_and_run_cpp_project():

    project_directory = os.getcwd()

    # Comando para configurar o projeto CMake
    cmake_configure_command = f"cmake {project_directory} -B build -DTESTS=ON"


    os.environ["MAKEFLAGS"] = "-j4"

    cmake_build_command = "cmake --build build"

    # Comando para executar o programa
    run_command = "./build/tests/tests"

    # Execute os comandos
    subprocess.run(cmake_configure_command, shell=True, check=True)
    subprocess.run(cmake_build_command, shell=True, check=True)

    # Verifique se a compilação foi bem-sucedida
    if os.path.exists(run_command):
        # Execute o programa compilado
        subprocess.run(run_command, shell=True)
    else:
        print("Erro na configuração do CMake ou na compilação. Verifique seu projeto.")

if __name__ == "__main__":
    build_and_run_cpp_project()