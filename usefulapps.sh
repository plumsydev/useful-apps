#!/bin/bash
echo '[i] RUN AS ROOT !!'
echo "[i] We will now update packages..."
apt-get update -y > /dev/null 2>&1 || echo "[!] Could not update packages."
echo "[i] We will now upgrade packages..."
apt-get upgrade -y > /dev/null 2>&1 || echo "[!] Could not upgrade packages."
echo "[i] Configuring SSH & permiting root login..."
apt-get install openssh-server -y > /dev/null 2>&1 || echo "[!] Could not configure SSH."
sudo sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo sed -i 's/#PasswordAuthentication yes/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo sed -i 's/#PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
sudo sed -i 's/PermitRootLogin  without-password/PermitRootLogin yes/g' /etc/ssh/sshd_config
sudo sed -i 's/PasswordAuthentication  no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
systemctl restart ssh
echo "[i] We will now install sudo..."
apt install sudo -y > /dev/null 2>&1 || echo "[!] Could not install sudo."
echo "[i] We will now install htop..."
apt install htop -y > /dev/null 2>&1 || echo "[!] Could not install htop."
echo "[i] We will now install neofetch..."
apt install neofetch -y > /dev/null 2>&1 || echo "[!] Could not install neofetch."
echo "[i] We will now install net-tools..."
apt install net-tools -y > /dev/null 2>&1 || echo "[!] Could not install net-tools."
echo "[i] We will now install nload..."
apt install nload -y > /dev/null 2>&1 || echo "[!] Could not install nload."
echo "[i] We will now install git..."
apt install git -y > /dev/null 2>&1 || echo "[!] Could not install git."
echo "[i] We will now install golang..."
apt install golang -y > /dev/null 2>&1 || echo "[!] Could not install golang."
echo "[i] We will now install npm..."
apt install npm -y > /dev/null 2>&1 || echo "[!] Could not install npm."
echo "[i] We will now install gcc..."
apt install gcc -y > /dev/null 2>&1 || echo "[!] Could not install gcc."
echo "[i] We will now install python3..."
apt install python3 -y > /dev/null 2>&1 || echo "[!] Could not install python3."
echo "[i] We will now install python3-pip..."
apt install python3-pip -y > /dev/null 2>&1 || echo "[!] Could not install python3-pip."
echo "[i] We will now install python2.7..."
apt install python2.7 -y > /dev/null 2>&1 || echo "[!] Could not install python2.7."
echo "[i] We will now install nano..."
apt install nano -y > /dev/null 2>&1 || echo "[!] Could not install nano."
echo "[i] We will now install wget..."
apt install wget -y > /dev/null 2>&1 || echo "[!] Could not install wget."
echo "[i] We will now install curl..."
apt install curl -y > /dev/null 2>&1 || echo "[!] Could not install curl."
echo "[i] We will now install unar..."
apt install unar -y > /dev/null 2>&1 || echo "[!] Could not install unar."
echo "[i] We will now install dbus-x11..."
apt install dbus-x11 -y > /dev/null 2>&1 || echo "[!] Could not install dbus-x11."
echo "[i] We will now install neofetch..."
apt install neofetch -y > /dev/null 2>&1 || echo "[!] Could not install neofetch."
echo "[i] We will now install g++..."
apt install g++ -y > /dev/null 2>&1 || echo "[!] Could not install g++."
echo "[i] We will now install docker..."
apt install docker.io -y > /dev/null 2>&1 || echo "[!] Could not install docker."
cd /root
echo "----------------------------------------"
echo "[i] All apps has been installed."
echo "----------------------------------------"
exit 0