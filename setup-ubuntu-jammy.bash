sudo apt update && sudo apt upgrade -y
sudo apt install -y git curl wget vim tmux terminator gparted \
build-essential cmake \
barrier firefox \
python3-pip python3-venv python3-setuptools python3-dev python3-rosdep
mkdir -p ~/src && cd ~/src
git clone https://github.com/wting/autojump.git
cd autojump && ./install.py
pip3 install thefuck --user

echo "[[ -s $HOME/.autojump/etc/profile.d/autojump.sh ]] && source $HOME/.autojump/etc/profile.d/autojump.sh" >> ~/.bashrc
echo "export PATH=$PATH:$HOME/.local/bin" >> ~/.bashrc

# ros2 humble
locale  # check for UTF-8
sudo apt update && sudo apt install -y locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8
sudo apt install -y software-properties-common
sudo add-apt-repository universe
sudo apt update && sudo apt install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
sudo apt update
sudo apt upgrade -y
sudo apt install -y ros-humble-desktop
sudo apt install -y ros-dev-tools
echo ". /opt/ros/humble/setup.bash" >> ~/.bashrc

# vscode
sudo apt install -y software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install -y code

# git
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.sw switch
git config --global user.name "Thomason Zhou"
git config --global user.email "t95zhou@uwaterloo.ca"