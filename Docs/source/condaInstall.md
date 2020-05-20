# Install Anaconda
Author: James McDougall, Mary Thomas



Running Juypter notebooks relies on you handling your own python package installation. It was designed with Anaconda in mind. This is a common package manager used for data science, so it will be used for the examples and tutorials here. You should install Anaconda before working on any actual code.
 
You can install Anaconda on the Comet login node using wget: wget https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh. More info [here](https://stackoverflow.com/questions/38080407/how-can-i-install-the-latest-anaconda-with-wget#38080641).

If you’re not familiar with Anaconda, check it out [here](https://www.anaconda.com/products/individual).

## Download the installer on your login node
Run the following command to install conda on your login node: `wget https://repo.continuum.io/archive/Anaconda3-2018.12-Linux-x86_64.sh`

## Run the installer
Run the bash install script: `bash Anaconda3-2018.12-Linux-x86_64.sh` 

Conda should now be installed.

## Conda Virtual Environment:
$ conda create --name example_env    # choose whatever name you want

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

