# Login Node

## How to run Jupyter notebooks directly from the login node. 

You can access a jupyter notebook directly from your browser after starting it on the login node. This method is insecure, and will result in a notebook served over http, which is not something you want to be using on a regular basis.

## launch the notebook.
```
[I 06:04:39.367 NotebookApp] JupyterLab extension loaded from /home/mthomas/miniconda3/lib/python3.7/site-packages/jupyterlab
[I 06:04:39.367 NotebookApp] JupyterLab application directory is /home/mthomas/miniconda3/share/jupyter/lab
[I 06:04:39.874 NotebookApp] Serving notebooks from local directory: /home/mthomas
[I 06:04:39.874 NotebookApp] The Jupyter Notebook is running at:
[I 06:04:39.874 NotebookApp] http://comet-ln3.sdsc.edu:8888/?token=6f41dfc05fca86935cd75d2847969450cdcc7bc4a834a1c6
[I 06:04:39.874 NotebookApp]  or http://127.0.0.1:8888/?token=6f41dfc05fca86935cd75d2847969450cdcc7bc4a834a1c6
[I 06:04:39.874 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
[C 06:04:39.882 NotebookApp] 
    
    Or copy and paste one of these URLs:
        http://comet-ln3.sdsc.edu:8888/?token=xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
     or http://127.0.0.1:8888/?token=xxxxxxxxxxxxxxxxxxxxxxxxxxxxx
```

## Access the node in your browser
Copy the the URL above into the browser running on your laptop.

## Use your jupyterlab/jupyter notebook server!
Enjoy. Note that your notebook is unsecured.
