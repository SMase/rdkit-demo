#!/bin/bash

# read common functions
. script/function.sh
. .env
conda_init

rm -R .venv
if [ ! -e "conda-linux-64.lock" ]; then
    # make a conda lock file
    mkdir -p .venv/tmp
    if [ ! -e ${CONDA_ENV_FPATH} ]; then
        echo "No ${CONDA_ENV_FPATH} exist."
        mkdir -p config/prm
        cp config/template/env.yaml config/prm
        CONDA_ENV_FPATH="config/prm/env.yaml"
    fi

    conda env create -p .venv/tmp -f ${CONDA_ENV_FPATH} -y
    conda activate .venv/tmp
    conda-lock --kind explicit -f ${CONDA_ENV_FPATH} -p linux-64
    conda deactivate
    rm -R .venv/tmp
fi
conda create -p .venv --file conda-linux-64.lock -y