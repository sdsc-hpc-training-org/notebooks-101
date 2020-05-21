# Reverse Proxy

## Overview

![arch](https://github.com/sdsc-hpc-training-org/notebooks-101/raw/master/Docs/images/Reverse-Proxy-Service-for-Secure-Jupyter-Notebooks-Arch.png?raw=true)

The SDSC Reverse Proxy Service is a prototype system that will allow users to launch standard Jupyter Services on on any Comet compute node using a reverse proxy server. The notebooks will be hosted on the internal cluster network as an HTTP service using standard jupyter commands. The service will then be made available to the user outside of the cluster firewall as an HTTPS connection between the external users web browser and the reverse proxy server. The goal is to minimize software changes for our users while improving the security of user notebooks running on our HPC systems. The RPS service is capable of running on any HPC system capable of supporting the RP server (needs Apache)


## Prerequisites:

#### 0) Clone the RPS repository
Clone [this](https://github.com/sdsc-hpc-training-org/reverse-proxy) repository directly into your comet login node.  
```
git clone https://github.com/sdsc-hpc-training-org/reverse-proxy.git
```

#### 1) Anaconda
The reverse proxy service relies on you handling your own python package installation. It was designed with Anaconda in mind. You can install Anaconda on your login node using wget: `wget https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh`. More info [here](https://stackoverflow.com/questions/38080407/how-can-i-install-the-latest-anaconda-with-wget#38080641).

If you're not familiar with Anaconda, check it out [here](https://www.anaconda.com/products/individual).

#### 2) JupyterNotebooks and JupyterLab
You'll need to install jupyter using `conda install jupyter`. More info [here](https://anaconda.org/anaconda/jupyter).
If you want to use `Jupyterlab`, install that.

#### 3) Other Python Packages
Any other Python packages you need to run your notebook should be installed with Conda. You can install python packages in a conda environment while your notebook is running. This is useful if you forgot a package, you won't have to worry about cancelling and restarting your job before installing. However, it is recommended that you install all required packages beforehand to save yourself valuable compute time.


### Usage: ./start_notebook.sh [-p <string>] [-d <string>] [-A <string>] [time]

```
Default Dir: /home/$USER
Default Allocation is your sbatch default allocation
Default Time is 30 mins
```
(If you don't know what $USER is, try this command: `echo $USER`. This is just your comet username)

## Some common examples
Start a notebook with all defaults
`./start_notebook`

This is your waiting screen. This screen occurs before your batch job is submitted.
![alt text](https://github.com/sdsc-hpc-training-org/reverse-proxy/blob/master/.examples_images/ex1.png?raw=true)

Your notebook is ready to go!
![alt text](https://github.com/sdsc-hpc-training-org/reverse-proxy/blob/master/.examples_images/ex2.png?raw=true)

If you refresh too soon, you may see this page. This is expected and you'll just have to wait.
![alt text](https://github.com/sdsc-hpc-training-org/reverse-proxy/blob/master/.examples_images/ex3.png?raw=true)


Start a notebook in the debug queue
`./start_notebook -d ~ -p debug 30`

Start a notebook in the compute queue
`./start_notebook -d ~ -A ddp363 -p compute 60`

## Arguments
* [-b <string>] the batch script you want to submit with your notebook. Only those in the `batch` folder are supported.
* [-p <string>] the partition to wait for. debug or compute
* [-d <string>] the top-level directory of your jupyter notebook
* [-A <string>] the project allocation to be used for this notebook
* [time]        the amount of time in minutes to run this notebook for
