#-

echo "--Have to update apt first--"
sudo apt update

echo "--check or install packages to retrieve docker--"
sudo apt install apt-transport-https ca-certificates curl software-properties-common

echo "--install gpg key--"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

echo "--add repository--"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"

echo "--update apt --"
sudo apt update

echo "--check that there is a docker to install--"
apt-cache policy docker-ce

echo "--install docker--"
sudo apt install docker-ce

echo "--check docker up and running--"
sudo systemctl status docker

#-
