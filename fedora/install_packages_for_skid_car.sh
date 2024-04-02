RED='\033[0;31m'
NC='\033[0m' # No Color
GRN='\033[0;32m'
YLW='\033[1;33m'
echo "${YLW}Installing packages for skid car${NC}"
sudo dnf install nodejs eigen3-devel zeromq-devel cppzmq-devel gcc-c++
echo "${GRN}Success${NC}"
echo "${YLW}Installing pm2${NC}"
sudo npm -g install pm2
echo "${GRN}Success${NC}"
echo "${YLW}Adding user to dialout group${NC}"
sudo usermod -a -G dialout $USER
echo "${GRN}Installation complete${NC}"