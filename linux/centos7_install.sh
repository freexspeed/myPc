yum install git -y
yum install wget -y
yum install vim -y
yum install emacs -y
yum install unzip -y
yum install mlocate -y

yum install epel-release -y
yum install snapd -y
ln -s /var/lib/snapd/snap /snap
systemctl start snapd.socket
snap install emacs --classic  #snap/bin/emacs
git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
yum install the_silver_searcher -y

yum install xorg-x11-xauth -y

#fail2ban
#yum install -y fail2ban
#systemctl start fail2ban
#systemctl enable fail2ban

#wget -O temp/emacs.d.zip https://github.com/freexspeed/myLinux/blob/master/emacs/official.emacs.d.zip
#rm -rf ~/emacs.d
#unzip -o temp/emacs.d.zip -d ~/
#mv ~/emacs.d ~/.emacs.d
