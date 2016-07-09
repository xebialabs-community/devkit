#devkit

## Getting started:
### Setup a virtual machine for development:
- Install VirtualBox
- Install docker-machine
<pre><code>docker-machine create xl-dev2 --driver virtualbox --virtualbox-memory 2048
export DIP=$(docker-machine ip xl-dev)  # useful to assign the machine's IP address to a variable for use in scripts.
echo $DIP
eval $(docker-machine env xl-dev)
</code></pre>

### Build Dockerfile 
<pre><code>git clone git@github.com:xebialabs-community/devkit.git
cd devkit
# place your license file in ./xld/deployit-license.lic
./buildimage.sh
</code></pre>

Note: this will download the latest version of XL Deploy. If you need another version you'll have to download it yourself and change Dockerfile to use the downloaded version.

### Check
<pre><code>./run.sh
</code></pre>
check if it works in your browser, go to $DIP:4516 , login: admin/password
