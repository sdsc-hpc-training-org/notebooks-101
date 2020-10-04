# Software Prerequisites

Running Juypter notebooks relies on you handling your own python jupyter package installation. Typically, users install Anaconda on local systems. Anaconda is a common package manager used for data science, but it it not recommended for use on HPC systems and running jupyter notebooks remotely. Anaconda is a large package and has a lot of overhead. For best performance, we recommend using `Miniconda`. 

[Miniconda](https://docs.conda.io/en/latest/miniconda.html) is a free minimal installer for conda. It is a small, bootstrap version of Anaconda that includes only conda, Python, the packages they depend on, and a small number of other useful packages.

If you’re not familiar with Anaconda, check it out [here](https://www.anaconda.com/products/individual).

## Install Miniconda
To install Miniconda on Linux, you need to locate and download the installer package for your system. For linx, you will find a list of installers [https://docs.conda.io/en/latest/miniconda.html#linux-installers](https://docs.conda.io/en/latest/miniconda.html#linux-installers). On the HPC system, use:
```
wget <link-to-installer-file>
``` 
to download the install package. For SDSC HPC systems, the current link is the `Miniconda3 Linux 64-bit:` `https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh`

Once you have downloaded the correct installer, follow the installation instructions [https://conda.io/projects/conda/en/latest/user-guide/install/index.html](https://conda.io/projects/conda/en/latest/user-guide/install/index.html). For SDSC HPC systems Comet, TSCC, and Stratus, the name of the downloaded installer file is `Miniconda3-latest-Linux-x86_64.sh`

### Run the installer
Change the permissions so you can execute the script: 
```
chmod +x Miniconda3-latest-Linux-x86_64.sh
```
Run the bash install script: 
```
bash Miniconda3-latest-Linux-x86_64.sh
``` 
or 
```
./Miniconda3-latest-Linux-x86_64.sh
```
You should answer yes to almost all of the questions. Make sure to type in the word "yes" for the license agreement.
Also be sure to type in "yes" when the installer asks you if you want to run conda init.
In addition, you need to make sure that the installer has placed these two lines into your `.bashrc` file:
```
The Miniconda installer should prompt to add each of the following lines separately to the .bashrc file:

. /home/$USER/miniconda3/etc/profile.d/conda.sh
conda activate
```
If not present, add the two lines to the file. Once you have done this, restart your bash shell: 
run the command
```
source ~/.bashrc
```
which "restarts" the shell environment.

Miniconda should now be installed. By default, Miniconda should be installed in your home directory:
```
Miniconda3 will now be installed into this location:
/home/$USER/miniconda3
```
If Miniconda still does not seem to be installed, try using the command `source ~/.bashrc`, which "restarts" conda.

To verify the installation, run the command:
```
(base) [mthomas@comet-ln2:~] which conda
~/miniconda3/bin/conda
```

## Install Jupyter Notebook
To run jupyter notebooks,  you need to install the `jupyter` package using the command 
```
conda install jupyter
``` 
To verify the installation, run the command:
```
(base) [$USER@comet-ln2:~] which jupyter
~/miniconda3/bin/jupyter
```
More installation information can be found here: [https://anaconda.org/anaconda/jupyter](https://anaconda.org/anaconda/jupyter).

## Install JupyterLab
JupyterLab is designed as an extensible environment and can be installed with conda, pip, docker, etc. For full details, see:  [https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html](https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html)

To use `conda` to install jupyerlab, run the terminal command:
```
conda install -c conda-forge jupyterlab
```
To verify the installation, run the command:
```
(base) [$USER@comet-ln2:~] which jupyter-labextension
~/miniconda3/bin/jupyter-labextension
```


## Other Python Packages**
Any other Python packages you need to run your notebook should be installed with Conda. You can install python packages in a conda environment while your notebook is running. This is useful if you forgot a package, you won't have to worry about cancelling and restarting your job before installing. However, it is recommended that you install all required packages beforehand to save yourself valuable compute time.


## Setup a Conda Virtual Environment
Choose whatever name you want - it should reflect the application/project you are working on.
`$ conda create --name example_env`    

### To see which virtual environments you’ve created
`$ conda env list`

To use a particular virtual environment (e.g., one named ‘example_env’):
`$ source activate example_env # Note: don’t use ‘conda activate’`

### To see which versions of a package are available
`(example_env) $ conda search package_name`
This searches for packages from the default “channel.”  Other channels might have newer versions available.  For instance, we’ve seen more recent versions of the ‘yt’ package in the channel named “conda-forge”.  To install from a different channel, use something like:
`(example_env) $ conda search -c conda-forge yt`

### To install packages in an active virtual environment
`(example_env) $ conda install package_name  # e.g, like ‘yt’`
As with the package search, you can install from a different channel using a ‘-c channel_name’ flag, e.g.:
`(example_env) $ conda install -c conda-forge yt`

### To update a package to a newer version
`(example_env) $ conda update package_name`
Like install and search, this command can take a ‘-c channel-name’ flag if you want to update to newer versions than are in the default channel.

### To start a Python interpreter with access to the installed packages:
`(example_env) $ python    # python3 works as well`

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

## Basic HPC Skills

If you are a beginner, or need to brush up on some basic skills needed to run jobs on HPC systems, check out our repo:

[Basic Skill](https://github.com/sdsc-hpc-training-org/basic_skills)

To clone the repo, log onto comet, cd into the directory where you want to work, and type:
```
git clone https://github.com/sdsc-hpc-training-org/basic_skills.git
```
