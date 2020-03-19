#Reverse Proxy
##Author: James McDougall

## How to access a notebook securely through your browser.

Ever wondered what the difference between http and https was? The short answer is that https is more secure. In general, if you don't want others to be able to see what you're doing, use https. Using the method described here, the connection between your laptop and the a separate "Reverse Proxy Server" will be encrypted. When you separately start a notebook on a comet node using the methods below, the output of your code will be redirected through the Proxy server instead of going directly to your laptop. This provides an extra layer of security that you should become accustomed to using.

## Step 0: prerequesites
Ensure that you are ssh'd into comet and you have some jupyter notebooks in you user directory that you want to execute.

## Step 1: clone this repository
You should clone this repository into your home directory. It doesn't really matter though, so just make sure its somewhere you can find it.
Run the command `git clone https://github.com/sdsc-hpc-training-org/reverse-proxy.git`

## Step 2: change into the repository directory
Run the command `cd reverse-proxy/rpsvr_v0`

## Step 3: start the jupyter notebook server
Run the command `./start_notebook <DIR>` where DIR is the top level directory you want to start the server in.