sudo apt update && sudo apt upgrade -y
sudo apt install -y git curl wget vim tmux terminator gparted \
build-essential cmake \
python3-pip python3-venv python3-setuptools python3-dev python3-rosdep
pip3 install thefuck --user
mkdir -p ~/src && cd ~/src
git clone https://github.com/wting/autojump.git
cd autojump && ./install.py

echo "[[ -s /Users/thomasonzhou/.autojump/etc/profile.d/autojump.sh ]] && source /Users/thomasonzhou/.autojump/etc/profile.d/autojump.sh" >> ~/.bashrc
echo "export PATH=$PATH:$HOME/.local/bin" >> ~/.bashrc

locale  # check for UTF-8

sudo apt update && sudo apt install locales
sudo locale-gen en_US en_US.UTF-8
sudo update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8
export LANG=en_US.UTF-8
sudo apt install software-properties-common
sudo add-apt-repository universe
sudo apt update && sudo apt install curl -y
sudo curl -sSL https://raw.githubusercontent.com/ros/rosdistro/master/ros.key -o /usr/share/keyrings/ros-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/ros-archive-keyring.gpg] http://packages.ros.org/ros2/ubuntu $(. /etc/os-release && echo $UBUNTU_CODENAME) main" | sudo tee /etc/apt/sources.list.d/ros2.list > /dev/null
sudo apt update
sudo apt upgrade -y
sudo apt install -y ros-humble-desktop
sudo apt install -y ros-dev-tools
echo ". /opt/ros/humble/setup.bash" >> ~/.bashrc
