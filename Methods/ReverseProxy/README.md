#Reverse Proxy
##Author: James McDougall

## How to access a notebook securely through your browser.

Ever wondered what the difference between http and https was? The short answer is that https is more secure. In general, if you don't want others to be able to see what you're doing, use https. Using the method described here, the connection between your laptop and the a separate "Reverse Proxy Server" will be encrypted. When you separately start a notebook on a comet node using the methods below, the output of your code will be redirected through the Proxy server instead of going directly to your laptop. This provides an extra layer of security that you should become accustomed to using.