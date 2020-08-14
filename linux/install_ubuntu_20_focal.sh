
######## install libs and tools ########
sudo apt update && \
	sudo apt upgrade -y && \
	sudo apt install screenfetch wget curl vim git \
    	libv8-dev libcurl4-openssl-dev libxml2-dev libssl-dev \
    	libfontconfig1-dev libcairo2-dev libhdf5-dev libmpfr-dev libgmp-dev \
    	imagemagick texlive-full libudunits2-dev libgdal-dev 




######## install R ########
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && \
	sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/" && \
	sudo apt update && \
	sudo apt install r-base

# setup china mirror
echo 'options("repos" = c(CRAN="https://mirrors.tuna.tsinghua.edu.cn/CRAN/"))' >> ~/.Rprofile
echo 'options(BioC_mirror="https://mirrors.tuna.tsinghua.edu.cn/bioconductor")' >> ~/.Rprofile

# install r-studio from website and install it



######## install docker ########
# remove old version of docker
# sudo apt-get remove docker docker-engine docker.io containerd runc
# install
sudo apt update && \
	sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common && \
	curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - && \
	sudo apt-key fingerprint 0EBFCD88 && \
	sudo add-apt-repository "deb https://download.docker.com/linux/ubuntu focal stable" &&\
	sudo apt update && \
	sudo apt install docker-ce docker-ce-cli containerd.io docker-compose



######## install conda ########
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh && \
    /bin/bash ~/Miniconda3-latest-Linux-x86_64.sh && \
    exec bash

# china mirror
# wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-latest-Linux-x86_64.sh \
#    && /bin/bash ~/Miniconda3-latest-Linux-x86_64.sh \
#    exec bash

# setup conda channels
conda config --show channels
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/
conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/bioconda/
conda config --set show_channel_urls yes

# remove -defaults channel in file ~/.condarc

# install packages
conda install fastqc multiqc fastp salmon star bowtie2 subread samtools bedtools deeptools gffread

## uninstall conda
## rm -rf ~/miniconda3 ~/.condarc ~/.conda ~/.continuum






