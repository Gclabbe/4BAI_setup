#!/bin/bash
# call this file with bash setup.sh
conda env create -f 4BAI.yml
conda activate 4BAI
pip install yellowbrick
jupyter labextension install jupyterlab-plotly
conda install -c conda-forge elyra-code-snippet-extension && jupyter lab build
