## Connection over HTTP 
* Connection to Notebook over HTTP (insecure)


![connection over HTTP](https://github.com/sdsc-hpc-training-org/notebooks-101/blob/master/Docs/images/jupyter-notebook-http.png?raw=true)

Note: google chrome has many local ports open in the range of 7713 - 7794. They are all connect to 80 or 443 on the other end.

### Log onto comet.sdsc.edu  
```
ssh -Y -l <username> comet.sdsc.edu
```

* create a test directory, or ```cd``` into one you have already created
* Clone the examples repository:
```
git clone https://github.com/sdsc-hpc-training-org/notebook-examples.git
```

It it against SDSC Comet policy to run applications on the login nodes, but you can run jobs on an interactive node or on a compute node using the batch queue (see the [Comet User Guide](https://comet.sdsc.edu)).

### Obtain an interactive node:
Jobs can be run on the cluster in `batch mode` or in `interactive mode`. Batch jobs are performed remotely and without manual intervention. Interactive mode enable you to run/compile your program and environment setup on a compute node dedicated to you. To obtain an interactive node, type:
```
srun --pty --nodes=1 --ntasks-per-node=24 -p compute -t 02:00:00 --wait 0 /bin/bash
```
You will have to wait for your node to be allocated - which can take a few or many minutes. You will see pending messages like the ones below:
```
srun: job 24000544 queued and waiting for resources
srun: job 24000544 has been allocated resources
[mthomas@comet-18-29:~/hpctrain/python/PythonSeries]
```
You can also check the status of jobs in the queue system to get an idea of how long you may need to wait.

Launch the Jupyter Notebook application.
Note: this application will be running on comet, and you will be given a URL which will connect your local web browser the interactive comet session:
```
jupyter notebook --no-browser --ip=`/bin/hostname`
```
This will give you an address which has localhost in it and a token. Something
like:
```
http://comet-14-0-4:8888/?token=xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```
You can then paste it into your browser. You will see a running Jupyter
notebook and a listing of the notebooks in your directory. From there everything should be working as a regular notebook.
Note: This token is your auth so don't email/send it around. It will go away when you stop the notebook.

To learn about Python, run the ```Python basics.ipynb```   notebook.
To see an example of remote visualization, run the  ```Matplotlib.ipynb```  notebook!




## Access the node in your browser
Copy the the URL above into the browser running on your laptop.

## Use your jupyterlab/jupyter notebook server!
Enjoy. Note that your notebook is unsecured.


# Batch Script / Compute Node

## How to access a node directly from the browser

You can access a jupyter notebook directly from your browser after starting it on a comet node. This method is insecure, and will result in a notebook served over http, which is not something you want to be using on a regular basis.

First, log onto comet using SSH tunneling method.

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
