# SSH Tunneling
Author: James McDougall, Mary Thomas

This tutorial shows you how to launch a Jupyter Notebook on a compute node, and to use ssh tunneling to securely connect to the notebook.

## Open two terminals on your computer
We will use one terminal to start the notebook, and the other to establish the tunnel. Pick the first terminal, call it T1.

## SSH into comet from your local computer:
In T1, `ssh user@comet.sdsc.edu`. This is just a regular SSH login.

## Claim an interactive compute node
In T1, `srun --partition=debug --pty --nodes=1 --ntasks-per-node=24 -t 00:30:00 --wait=0 --export=ALL /bin/bash`

[Source: Comet User Guide](https://www.sdsc.edu/support/user_guides/comet.html)

Feel free to mess around with the parameters, but remember that in the debug partition you can only claim a node for up to 30 minutes. You can use other queues, but you may have to wait longer.

## Start a jupyter notebook server on the compute node.
In T1, `jupyter notebook --no-browser`. The no browser option is required, otherwise the program may think you want a text representation of your outputs in the terminal, which trust me - you don't want.  You can also specify a port number if you wish.

## Tunnel into the compute node 
In the second terminal, call it T2, `ssh -L 8888:127.0.0.1:<jupyter port> user@comet-14-01.sdsc.edu`. Replace `comet-14-01` with the name of the compute node. You can view the compute node in T1 prompt. Replace the jupyter port with the port your jupyter notebook started on, which you can find in T1 after running the `jupyter notebook --no-browser` command. Almost always the jupyter port will be 8888 but don't worry if its different.
This establishes a tunnel between port 8888 on your computer and the jupyter port on the compute node

## Visit the port in your local browser
In any browser, type in 127.0.0.1:8888 and you should get your notebook. You'll have to input the jupyter token available in your terminal.
If for some reason that address doesn't work, check the output of the terminal. You could try using the address localhost:8888 or 0.0.0.0:8888. The reason tunneling is generally not the preffered method is because it is unnecessarily complicated and to reduce that complexity would take about the same amount of work as Reverse proxy. For example, you can't know the port the jupyter notebook is going end up open on until you start it on the node, and you need to tunnel through that port... which is why we need two terminals in this example.
