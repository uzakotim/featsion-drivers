RED='\033[0;31m'
NC='\033[0m' # No Color
GRN='\033[0;32m'
YLW='\033[1;33m'
echo -e "${YLW}Installing packages for skid car${NC}"
sudo dnf install openssh openssh-server nodejs eigen3-devel zeromq-devel cppzmq-devel gcc-c++ cmake python3-pip boost-devel
echo -e "${GRN}Success${NC}"
echo -e "${YLW}Installing pm2${NC}"
sudo npm -g install pm2
echo -e "${GRN}Success${NC}"
echo -e "${YLW}Adding user to dialout group${NC}"
sudo usermod -a -G dialout $USER
echo -e "${YLW}Configuring SSH${NC}"
sudo systemctl enable sshd
sudo systemctl start sshd
sudo systemctl status sshd
echo -e "${YLW}Installing pyserial${NC}"
sudo pip3 install pyserial
echo -e "${YLW}Disabling firewall${NC}"
sudo systemctl stop firewalld
sudo systemctl disable firewalld
echo -e "${YLW}Removing brltty${NC}"
sudo dnf remove brltty
echo -e "${GRN}Installation complete${NC}"