# Tunneling
Author: James McDougall

## Open two terminals on your computer
The reason why you need two will become apparent soon

## SSH into comet from your local computer
`ssh user@comet.sdsc.edu`. This is just a regular login

## Claim a node
`srun --partition=debug --pty --nodes=1 --ntasks-per-node=24 -t 00:30:00 --wait=0 --export=ALL /bin/bash`
[source](https://www.sdsc.edu/support/user_guides/comet.html)
Feel free to mess around with the parameters, but remember that in the debug partition you can only claim a node for up to 30 minutes.

## Tunnel into the login node
`ssh -L 8888:127.0.0.1:8888 user@comet.sdsc.edu`
This establishes a tunnel between port 8888 on your computer and the Comet login node. So our picture looks a little bit like this:[tbd]

## Start a jupyter notebook server on the compute node.
`jupyter notebook --no-browser`
The no browser option is required, otherwise the program may think you want a text representation of your outputs in the terminal, which trust me - you don't want.

## Tunnel into the compute node which you claimed earlier
`ssh -L 8888:127.0.0.1:<jupyter port> comet-node`
You should be able to find the comet node name by looking in your other terminal. Here's an example: [tbd]

Unless there are many other users on your node trying to start jupyter notebooks, the jupyter port will almost always be 8888. If it not, however, you can see this in the terminal where you started your jupyter notebook. Here's an example: [tbd]

## Visit the port in your local browser
In any browser, type in 127.0.0.1:8888 and you should get your notebook. You'll have to input the jupyter token available in your terminal.
If for some reason that address doesn't work, check the output of the terminal. You could try using the address localhost:8888 or 0.0.0.0:8888. 


The reason tunneling is generally not the preffered method is because it is unnecessarily complicated and to reduce that complexity would take about the same amount of work as Reverse proxy. For example, you can't know the port the jupyter notebook is going end up open on until you start it on the node, and you need to tunnel through that port... which is why we need two terminals in this example.
