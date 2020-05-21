## SSH Connection

### This tutorial shows you how to run Jupyter Lab or Notebooks using SSH connection to Comet.

You can access a jupyter notebook directly from your browser after starting it on the login node. Note: This method is insecure, and will result in a notebook served over http, which is not something you want to be using on a regular basis. In addition, it is against SDSC policy to run notebooks on the login node. It is presented here for instructional purposes only.
# Using Jupyter Notebooks on the SDSC Comet Cluster
**By** [Mary Thomas, SDSC](https://hpc-students.sdsc.edu/instr_bios/mary_thomas.html)

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
