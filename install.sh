# Setup node repo
curl -sL https://deb.nodesource.com/setup_16.x | sudo bash -

# Update
sudo apt update

# Upgrade
sudo apt -y upgrade
sudo apt -y autoremove

# Install essential
sudo apt -y install build-essential zsh nodejs

# Install npm packages
npm i -g waveorb nodemon

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# SSH keys
cat /dev/zero | ssh-keygen -q -N ""

# Post install messages
printf "\n\nPlease add this ssh key to your git account:\n\n"
cat $HOME/.ssh/id_rsa.pub

printf "\n\nDone!\n\nRebooting...\n\n"

# Reboot
reboot now
