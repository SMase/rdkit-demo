#!/bin/bash
conda_init() {
    if [ -d "${HOME}/miniforge3" ]; then
        CONDA_DPATH="${HOME}/miniforge3"
    else
        CONDA_DPATH="${HOME}/miniconda3"
    fi
    source "${CONDA_DPATH}/etc/profile.d/conda.sh"
}
