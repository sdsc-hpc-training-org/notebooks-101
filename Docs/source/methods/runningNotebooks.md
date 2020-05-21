# Running Jupyter Notebooks

This tutorial shows you how to run Jupyter Lab or Notebooks on Comet, using different types of connections to these services, and running them on different nodes (login, interactive, and compute). _Note: it is against SDSC policy to run applications, including notebooks, on the login node. It is presented here for instructional purposes only._

Once the notebook is running, you can access a the notebook directly from a browser running on your local system (laptop, workstation, etc.). Note that unless you are using `SSH Tunneling`, the connection is insecure, and will result in a notebook served over a non-encrypted communication channel between your localhost and the remote service, which has the potential to be hacked by malicious parties.

On Comet, we support the following connection scenarios:
* Connection to Notebook over HTTP (insecure)
* Connection to Notebook over SSH tunneling (secure)
* Connection to Notebook over HTTPS using the [Reverse Proxy Service](https://github.com/sdsc-hpc-training-org/reverse-proxy)  (very secure)

Note: In the near Future, the Galyleo remote notebook launcher will become available.

In addition, notebooks can be run on the following nodes:
* Login node
* Interactive node
* Compute node
* GPU node

In the sections below, we'll describe how to connect and how to run the notebooks and the security impacts of these configurations.
