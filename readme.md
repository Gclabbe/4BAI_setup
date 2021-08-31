# Anaconda setup environment for FourthBrain.AI MLE coursework

## Status of GPU efforts for Windoze
I've given up.  What used to work no longer does, so I'm putting GPU install
steps at the bottom and separate from the general install

### using WSL2 w/ Ubuntu
Is promising, however, not fully supported
* Tensorflow - will work with their released Docker containers
* XGBoost - will not.  They said there are no plans to support WSL2

## Easy install
* Linux / Mac / WSL2
    > . setup.sh

* Anaconda prompt in Windows
    > conda env create -f 4BAI.yml  
    conda activate 4BAI  
    pip install yellowbrick  
    jupyter labextension install jupyterlab-plotly  
    conda install -c conda-forge elyra-code-snippet-extension && jupyter lab build  
  
## adding GPU support
<b>warning: versions of tensorflow & CUDA have to be kept in sync</b>  

* Linux - will support XGBoost gpu
    > https://www.tensorflow.org/install/gpu
* Windoze WSL2 - will not support XGBoost gpu
    > https://hub.docker.com/r/tensorflow/tensorflow/

## packages supported that you might not be used to
* jupyter lab  
    - big upgrade from jupyter notebooks)  
    > jupyter lab
* plotly  
    - https://plotly.com/python/getting-started/  
    - way better than matplotlib IMHO
    > notebook example  
    import plotly.graph_objects as go  
    fig = go.Figure(data=go.Bar(y=[2, 3, 1]))  
    fig.show()  

* awswrangler  
    - dramatically better API for using DF on multiple AWS apps
    - https://aws-data-wrangler.readthedocs.io/en/stable/what.html  
    


    