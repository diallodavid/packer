# https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html
# Print a trace of simple commands and exit immediately if a pipeline 
# (see Pipelines), which may consist of a single simple command 
# (see Simple Commands), a list (see Lists), or a compound command 
# (see Compound Commands) returns a non-zero status.
set -ex

# https://manpages.ubuntu.com/manpages/bionic/man7/debconf.7.html
# This is the anti-frontend. It never interacts with you at all, 
# and makes the default answers be used for all questions.
export DEBIAN_FRONTEND=noninteractive

# Install curl package
apt-get install --quiet --assume-yes curl

# https://github.com/hashicorp/vagrant/tree/master/keys
# Install Insecure Keypair
mkdir -pm 700 /home/vagrant/.ssh
curl -o /home/vagrant/.ssh/authorized_keys 'https://raw.githubusercontent.com/hashicorp/vagrant/master/keys/vagrant.pub'
chown -R vagrant:vagrant /home/vagrant/.ssh
chmod -R go-rwsx /home/vagrant/.ssh

# Remove curl package
apt-get remove --assume-yes curl

exit 0
