# Running a jupyter notebook on comet using ssh tunneling

## Tunnel into the login node
`ssh -: 8888:127.0.0.1:8888 user@comet.sdsc.edu`

## Tunnel into the compute node
`ssh -L 8888:127.0.0.1:8888 comet-node`

## Start a jupyter notebook server on the compute node.
`jupyter notebook --no-browser`
The no browser option is required, otherwise the program may think you want a text representation of your outputs in the terminal, which trust me - you don't want.

## Visit the port in your local browser
In any browser, type in 127.0.0.1:8888 and you should get your notebook. You'll have to input the jupyter token available in your terminal.
If for some reason that address doesn't work, check the output of the terminal. You could try using the address localhost:8888 or 0.0.0.0:8888, although that's not likely to change anything.