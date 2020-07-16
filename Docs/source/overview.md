# Jupyter Notebook Overview

![connection over HTTP](https://github.com/sdsc-hpc-training-org/notebooks-101/blob/master/Docs/images/jupyter-notebook-launch-methods.png?raw=true)


Jupyter Notebooks are interactive web tools known as a computational notebooks, which researchers can use to combine software code, explanatory text and multimedia resources, and computational output, in a single document. Jupyter has emerged as a de facto standard for data scientists and other scientific domains. Notebooks can be launched locally and access local file systems, or they can be launched on a remote machine, which provides access to a user’s files on the remote system. In the latter case, the notebooks are launched via a process that creates a unique URL that is composed of the hostname plus an available port (chosen by the jupyter application) plus a one-time token. The user obtains this URL and enters it into a local web browser, where the notebook is available as long as the process on the remote machine is up and running. By default, these notebooks are not secure, and potentially expose a users local files to unwanted users.

In this tutorial, we cover SDSC’s multi-tiered approach to running notebooks more securely: running notebooks in the usual way using the insecure HTTP connections; hosting a Jupyter service using HTTPS and Jupyter Lab; and our new Reverse Proxy Service (RPS). When used, the RPS will launch a batch script that creates a securely hosted HTTPS access point for the user, resulting in a safer, more secure notebook environment.


By default, these notebooks are not secure, and potentially expose a user’s local files to unwanted access. In this tutorial, we present SDSC’s multitiered approach to running notebooks more securely.
