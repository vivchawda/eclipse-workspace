# ESP-IDF and Eclipse on Linux

## Setup Xtensa toolchain & ESP-IDF

### Install the prerequisites

`sudo apt-get install git wget make libncurses-dev flex bison gperf python python-serial`

### Install Xtensa toolchain

For 64-bit Ubuntu:

https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-61-gab8375a-5.2.0.tar.gz

`mkdir -p ~/esp
cd ~/esp
tar -xzf ~/Downloads/xtensa-esp32-elf-linux64-1.22.0-61-gab8375a-5.2.0.tar.gz`

### Update PATH

To use it, you will need to update your PATH environment variable in ~/.profile file.

`sudo gedit ~/.profile`

Add to the bottom of the file:

`export PATH=$PATH:$HOME/esp/xtensa-esp32-elf/bin
export IDF_PATH=~/esp/esp-idf`

(We will install ESP-IDF in a while, set up the paths for now.)


Logoff and re-login to apply the PATH variables.

You can use the following commands to check if your shell is reflecting the variables:
`printenv IDF_PATH && printenv PATH`

### Installl ESP-IDF

To install ESP-IDF:

`cd ~/esp
git clone --recursive https://github.com/espressif/esp-idf.git`

### Setup IDF template application

Clone the HelloWorld example project from ESP-IDF folder and use it as a template:

`cd ~/esp
cp -r $IDF_PATH/examples/get-started/hello_world .`

### Build & Flash the project

To build a project, IDF requires a `sdkconfig` file within the project folder to read all settings from.

`cd ~/esp/hello_world
make menuconfig`

Set `Serial flasher config` to reflect your USB port. Typically for Ubuntu, it should be `/dev/ttyUSB0`

Save & exit.

At the project folder, execute `make all` followed by `make flash` to flash the elf file onto the ESP32.

If you encounter any errors while building which mentions Xtensa path being not correctly set, check the PATH with `printenv PATH.` 

If Xtensa path lists up as a valid PATH and you are still getting PATH related errors, you should try using the 32bit archive for Xtensa toolchain.


