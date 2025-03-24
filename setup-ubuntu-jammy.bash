sudo apt update
sudo apt upgrade -y
sudo apt install -y git curl wget vim tmux terminator gparted \
build-essential cmake libfuse2 \
ffmpeg vlc \
firefox \
python3-pip python3-venv python3-setuptools python3-dev
mkdir -p ~/src && cd ~/src
git clone https://github.com/wting/autojump.git
cd autojump && ./install.py
pip3 install thefuck --user

echo '[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh' >> ~/.bashrc
echo 'export PATH=$PATH:$HOME/.local/bin' >> ~/.bashrc

# ros2 humble
export ROS_DISTRO=humble
locale  # check for UTF-8
sudo apt update && sudo apt install -y locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8
sudo apt install -y software-properties-common
sudo add-apt-repository -y universe
sudo apt update && sudo apt install -y curl
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
sudo apt update
sudo apt upgrade -y
sudo apt install -y ros-$ROS_DISTRO-desktop
sudo apt install -y ros-dev-tools python3-rosdep
echo ". /opt/ros/$ROS_DISTRO/setup.bash" >> ~/.bashrc

# foxglove
sudo apt install -y ros-$ROS_DISTRO-foxglove-bridge

# vscode
sudo apt-get install -y wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg
sudo apt install -y apt-transport-https
sudo apt update
sudo apt -y install code # or code-insiders


# git
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.sw switch
git config --global alias.p push
git config --global user.name "Thomason Zhou"
git config --global user.email "t95zhou@uwaterloo.ca"
git config --global core.editor "vim"

# barrier
sudo apt install -y barrier
cd ~/.local/share/barrier/SSL
openssl req -x509 -nodes -days 365 -subj /CN=Barrier -newkey rsa:4096 -keyout Barrier.pem -out Barrier.pem
