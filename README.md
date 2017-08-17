# Setup ESP-IDF and Eclipse on Linux

`sudo apt-get install git wget make libncurses-dev flex bison gperf python python-serial`
For 64-bit Ubuntu:
https://dl.espressif.com/dl/xtensa-esp32-elf-linux64-1.22.0-61-gab8375a-5.2.0.tar.gz
`mkdir -p ~/esp
cd ~/esp
tar -xzf ~/Downloads/xtensa-esp32-elf-linux64-1.22.0-61-gab8375a-5.2.0.tar.gz`
To use it, you will need to update your PATH environment variable in ~/.profile file.
`sudo gedit ~/.profile`
Add to the bottom of the file:
`export PATH=$PATH:$HOME/esp/xtensa-esp32-elf/bin`
