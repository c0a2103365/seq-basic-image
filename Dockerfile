FROM continuumio/anaconda3:latest

# パッケージの追加
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y sudo && \
    apt-get install -y vim nano emacs less wget curl git htop make swig && \
    apt-get install -y --reinstall build-essential && \
    apt-get install -y python3 python3-pip 

# JupyterLab関連のパッケージ（いくつかの拡張機能を含む）
RUN python3 -m pip install --upgrade pip &&\
    pip install --no-cache-dir\ 
    black \
    jupyterlab==3.6.7 \
    jupyterlab_code_formatter \
    jupyterlab-git \
    lckr-jupyterlab-variableinspector \
    jupyterlab_widgets \
    ipywidgets \
    import-ipynb \

    numpy \
    pandas \
    scipy \
    scikit-learn \
    matplotlib \
    japanize_matplotlib \
    optuna \
    mlxtend \
    tqdm \
    seaborn \
    plotly \
    requests \
    beautifulsoup4 \
    selenium \
    torch \
    lightly \
    LightGBM \
    xgboost \
    catboost