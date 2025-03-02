#!/bin/bash

MINIFORGE_URL="https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
INSTALL_DIR="$HOME/miniforge3"
ENV_NAME="expy"
PYTHON_VERSION="3.9"
PACKAGES="pipenv ipython jupyterlab"

curl -L "$MINIFORGE_URL" -o miniforge.sh
bash miniforge.sh -b -p "$INSTALL_DIR" && rm miniforge.sh

"$INSTALL_DIR/bin/conda" init bash
"$INSTALL_DIR/bin/conda" init zsh
source "$INSTALL_DIR/bin/activate"

conda install -n base mamba -y && \
mamba create -n "$ENV_NAME" python="$PYTHON_VERSION" -y
conda activate "$ENV_NAME" && \
mamba install -n "$ENV_NAME" $PACKAGES

ipython kernel install --user --name="$ENV_NAME"
pipenv --python $(which python)
echo "conda activate $ENV_NAME"
