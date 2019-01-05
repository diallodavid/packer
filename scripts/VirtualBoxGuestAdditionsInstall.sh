# https://www.gnu.org/software/bash/manual/html_node/The-Set-Builtin.html
# Print a trace of simple commands
set -x

# Re-synchronize the package index files from their sources
apt-get update --quiet --assume-yes

# Install required packages
apt-get install --assume-yes gcc dkms

# Install uest Additions
mount -o loop /dev/sr1 /mnt
sh /mnt/VBoxLinuxAdditions.run

# Remove packages installed to build VirtualBox Guest Additions
apt-get purge --assume-yes gcc dkms
apt-get autoremove --assume-yes --purge

exit 0
