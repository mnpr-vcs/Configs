#!/bin/bash

# --- Setup ESP32-S3 Development Environment with Miniforge/Mamba ---

# 1. Install System Dependencies
sudo apt update
sudo apt install git wget flex bison gperf python3 python3-pip python3-setuptools cmake ninja-build ccache libffi-dev libssl-dev

# 2. Install Miniforge (if not already installed)
# Download the Miniforge installer for Linux from the Miniforge GitHub releases page.
# Then run the installer:
# bash Miniforge3-Linux-x86_64.sh -b -p $HOME/miniforge3
# After installation, initialize conda:
# $HOME/miniforge3/bin/conda init bash
# source ~/.bashrc # or ~/.zshrc

# 3. Install Mamba within the base environment
source $HOME/miniforge3/bin/activate
conda install -n base -c conda-forge mamba

# 4. Create ESP-IDF Conda Environment
mamba create -n esp-idf python=3.10 -y #Or the appropriate version.
mamba activate esp-idf

# 5. Install Python Dependencies within the ESP-IDF environment.
mamba install esptool pyserial -y

# 6. Clone ESP-IDF Repository
mkdir -p ~/esp
cd ~/esp
git clone --recursive https://github.com/espressif/esp-idf.git

# 7. Checkout stable branch
cd esp-idf
git checkout stable
git submodule update --init --recursive

# 8. Install ESP-IDF Tools (within the conda environment)
./install.sh

# 9. Set up Environment Variables (within the conda environment, add to bashrc)
. ./export.sh

# 10. Navigate to Blink Example
cd examples/get-started/blink

# 11. Configure Project
idf.py set-target esp32s3
idf.py menuconfig # Configure LED GPIO if needed, then save and exit.

# 12. Build Project
idf.py build

# 13. Flash and Monitor
idf.py -p /dev/ttyACM0 flash monitor


# may encounter permission issues when flashing the ESP32. If so, add user to the dialout group:
# sudo usermod -aG dialout $USER
