# Software Prerequisites

Running Juypter notebooks relies on you handling your own python package installation. It was designed with Anaconda in mind. This is a common package manager used for data science, so it will be used for the examples and tutorials here. You should install Anaconda before working on any actual code.

## Install Anaconda
In general, Juypter technologies perform best when you manage your own python package installation (you can controll the packages and can update as needed). You can install Anaconda on the Comet login node using wget: wget https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh. More info [here](https://stackoverflow.com/questions/38080407/how-can-i-install-the-latest-anaconda-with-wget#38080641).

If you’re not familiar with Anaconda, check it out [here](https://www.anaconda.com/products/individual).

### Install conda
Download the installer on your login node
Run the following command to install conda on the Comet login node: `wget https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh`

### Run the installer
Run the bash install script: `bash Anaconda3-2018.12-Linux-x86_64.sh`

`Conda` should now be installed.

## Install Jupyter Notebook and Jupyter Lab
You'll need to install jupyter using `conda install jupyter`. More info [here](https://anaconda.org/anaconda/jupyter).

If you want to use jupyterlab, install that.

## Other Python Packages:**
Any other Python packages you need to run your notebook should be installed with Conda. You can install python packages in a conda environment while your notebook is running. This is useful if you forgot a package, you won't have to worry about cancelling and restarting your job before installing. However, it is recommended that you install all required packages beforehand to save yourself valuable compute time.


## Setup a Conda Virtual Environment:

Choose whatever name you want - it should reflect the application/project you are working on.
`$ conda create --name example_env`    

### To see which virtual environments you’ve created:
$ conda env list

To use a particular virtual environment (e.g., one named ‘example_env’):
$ source activate example_env # Note: don’t use ‘conda activate’

### To see which versions of a package are available:
(example_env) $ conda search package_name
This searches for packages from the default “channel.”  Other channels might have newer versions available.  For instance, we’ve seen more recent versions of the ‘yt’ package in the channel named “conda-forge”.  To install from a different channel, use something like:
(example_env) $ conda search -c conda-forge yt

### To install packages in an active virtual environment:
(example_env) $ conda install package_name  # e.g, like ‘yt’
As with the package search, you can install from a different channel using a ‘-c channel_name’ flag, e.g.:
(example_env) $ conda install -c conda-forge yt

### To update a package to a newer version:
(example_env) $ conda update package_name
Like install and search, this command can take a ‘-c channel-name’ flag if you want to update to newer versions than are in the default channel.

### To start a Python interpreter with access to the installed packages:
(example_env) $ python    # python3 works as well

### To stop using the current virtual environment:
`(example_env) $ source deactivate`

### To delete an inactive virtual environment:
`$ conda env remove --name example_env`

## Install JupyterNotebooks and Jupyterlab

You'll need to install jupyter using `conda install jupyter`. More info [here](https://anaconda.org/anaconda/jupyter).
If you want to use `Jupyterlab`, install that.


## Other Python Packages
Any other Python packages you need to run your notebook should be installed with Conda. You can install python packages in a conda environment while your notebook is running. This is useful if you forgot a package, you won't have to worry about cancelling and restarting your job before installing. However, it is recommended that you install all required packages beforehand to save yourself valuable compute time.

## Download Example Notebooks
For these examples, you should have some simple notebooks loaded into your comet directory for testing. You can clone the notebooks examples repository:
To clone the repo, log onto comet, cd into the directory where you want to work, and type:
```
git clone https://github.com/sdsc-hpc-training-org/notebook-examples.git
```

## Basic HPC Skills:

If you are a beginner, or need to brush up on some basic skills needed to run jobs on HPC systems, check out our repo:

[Basic Skill](https://github.com/sdsc-hpc-training-org/basic_skills)

To clone the repo, log onto comet, cd into the directory where you want to work, and type:
```
git clone https://github.com/sdsc-hpc-training-org/basic_skills.git
```
