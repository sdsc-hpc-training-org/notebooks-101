.. Notebooks 101 documentation master file, created by
   sphinx-quickstart on Mon May 18 09:22:17 2020.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

========================================
Running Notebooks on HPC Systems 
========================================

This tutorial shows you how to run Jupyter Lab or Notebooks on Comet, TSCC, or TSCC-Stratus using different types of connections to these services, and running them on different nodes (login, interactive, and compute). 

.. note:: It is against SDSC policy to run applications, including notebooks, on the login node. Notebook should be run on compute nodes only.

Once the notebook is running, you can access a the notebook directly from a browser running on your local system (laptop, workstation, etc.). 

.. note:: Unless you are using `SSH Tunneling` or the `Reverse Proxy` methods, the connection is insecure and has the potential to be hacked by malicious parties.

On Comet, we only support the following connection scenarios:

* Connection to Notebook over SSH tunneling (secure)
* Connection to Notebook over HTTPS using the `Reverse Proxy Service <https://github.com/sdsc-hpc-training-org/reverse-proxy>`_  (very secure)

In addition, notebooks can be run on the following nodes:

* Login node
* Interactive node
* Compute node
* GPU node

The choices and combinations used to run notebooks affect the security and efficiency of you application. In the next sections, we'll describe how to connect and how to run the notebooks and the security impacts of these configurations.

.. toctree::
   :maxdepth: 2

   overview.md
   examples.md
   prerequisites.md
   methods/httpConnect.md
   methods/tunneling.md
   methods/reverseProxy.md
   aboutus.md
   contactus.md
