# https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html
# Print a trace of simple commands
set -x

# https://manpages.ubuntu.com/manpages/bionic/man7/debconf.7.html
# This is the anti-frontend. It never interacts with you at all, 
# and makes the default answers be used for all questions.
export DEBIAN_FRONTEND=noninteractive

# Re-synchronize the package index files from their sources and
# install the newest versions of all packages currently installed on the system 
apt-get update --quiet --assume-yes
apt-get upgrade --quiet --assume-yes
