# How to run tensorflow object detection on comet.. securely!
Tensorflow is a common library for training, inferencing, and messing around with machine learning models. You can do all these things on Comet, without worrying about people stealing your data or corrupting your models.

## Step 1: ensure you are logged into comet




## Step : clone this repository
From your home directory, run the command `git clone https://github.com/sdsc-hpc-training-org/reverse-proxy.git`


## Step : install the required packages
You can find the package list in this repository (package-list.txt)
Install them in your environment using the following command:
`while read requirement; do conda install --yes $requirement; done < package-list.txt`
This is a kind of weird command... when you see that all the packages are installed you'll have to manually kill the command using control-C.
But it will work.

## Step  alternate: install packages manually.

## Step : Clone the Tensorflow object-detection repository
`git clone https://github.com/JamesMcDougallJr/models.git`

## Step : Start a notebook of jupyter lab server.
If you are currently in your home directory, run the command `bash reverse-proxy/samples/sample.sh`
This will start a jupyter lab server in your home directory

## Step : Run all cells
At this point, if you're familiar with jupyter notebooks, you know what to do. If you are missing any packages, be sure they are install using conda. 