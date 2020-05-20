# AccessNode
Author: James McDougall

## How to access a node directly from the browser

You can access a jupyter notebook directly from your browser after starting it on a comet node. This method is insecure, and will result in a notebook served over http, which is not something you want to be using on a regular basis.

## Copy the batch script example

```
#!/usr/bin/env bash
#SBATCH --job-name=tensorflow-compute
#SBATCH --partition=compute 
#SBATCH --time=00:30:00 
#SBATCH --nodes=1 
#SBATCH --ntasks-per-node=24 
#SBATCH --output=tensorflow-compute.o%j.%N 
module purge
module list 
printenv 
time -p singularity exec /share/apps/compute/singularity/images/tensorflow/tensorflow-cpu.simg jupyter lab --no-browser --ip="$(hostname)" 
```

This example uses the tensorflow singularity container available on comet. You can use any container you want. If you check out `/share/apps/computer/singularity` you can find many useful containers. The key part of this example is how the jupyter lab is started at the end - `jupyter lab --no-browser --ip "${hostname}"`.

## Submit this script to the queue
Simply run `sbatch run-jupyter-tensorflow-compute.sh`
One thing you may want to do is change the script to be `--partition=debug` if you want a shorter wait time.

## Access the node in your browser
First, wait for the job to be submitted to the queue. Then, look in the output file created by your batch job, which looks something like `tensorflow-compute.o%j.%N` if you used the example. Inside this file, you will see the output of the jupyterlab command. There, you should be able to see the port the jupyterlab server is running on, as well as the token you will need to login. My recommendation would be to just memorize the port number and copy the jupyter token. The port is almost always 8888 so it shouldn't be that hard to remember. You will also need to know the comet node you are logged in on. You can view this by typing this command: `squeue -u $USER`. Under the NODELIST section you can see the comet node.

Open up a new tab in your browser, and type in the following: `http://comet-xx-xx.sdsc.edu:PPPP` where `comet-xx-xx` is the comet node, `PPPP` is the port number (usually 8888). The jupyter notebook page should show up, and you can now paste in the token from the output file.

## Use your jupyterlab/jupyter notebook server!
Enjoy. Note that your notebook is unsecured.
