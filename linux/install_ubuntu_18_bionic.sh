
######## install libs and tools ########
sudo apt update && \
	sudo apt upgrade -y && \
	sudo apt install screenfetch wget curl vim git \
    	libv8-dev libcurl4-openssl-dev libxml2-dev libssl-dev \
    	libfontconfig1-dev libcairo2-dev libhdf5-dev libmpfr-dev libgmp-dev



######## install conda ########
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh \
    && /bin/bash ~/Miniconda3-latest-Linux-x86_64.sh \
    exec bash

# setup conda channels
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge

# update conda
conda update -n base conda

# install packages
conda install fastqc multiqc fastp salmon star bowtie2 subread samtools bedtools deeptools gffread


## uninstall conda
## rm -rf ~/miniconda3 ~/.condarc ~/.conda ~/.continuum


