mkdir ~/.oh-my-zsh/custom/plugins/incr
curl -o ~/.oh-my-zsh/custom/plugins/incr/incr.plugin.zsh http://mimosa-pudica.net/src/incr-0.2.zsh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
cp -f .zshrc ~/.zshrc
source ~/.zshrc


brew tap railwaycat/emacsmacport
brew install --cask emacs-mac-spacemacs-icon

mkdir temp
wget -O temp/spacemacs-master.zip https://codeload.github.com/syl20bnr/spacemacs/zip/master 
rm -rf ~/emacs.d
unzip -o temp/spacemacs-master.zip -d ~/
mv ~/spacemacs-master ~/.emacs.d

brew install --cask intellij-idea


rm -rf /usr/local/var/mysql
brew install mysql@5.7
cp -f my.cnf /usr/local/etc/my.cnf
sudo chown -R _mysql /usr/local/var/mysql
sudo chmod -R o+rwx /usr/local/var/mysql
#/usr/local/var/mysql目录下的*.local.err创建可能是root的属性，需要再次chown mysql

brew tap homebrew/services
brew link mysql@5.7 --force
brew install mysql-clientmy
brew install mysqlworkbench
brew install --cask dbeaver-community
brew install TablePlus
brew install Snipaste   #截图
brew install jietu      #截图 腾讯出的

#error
#https://qiita.com/ota42y/items/0364d1da7cbf90df3dc4

#need root
cp -f mysql.plist /Library/LaunchDaemons/ 
sudo launchctl load -w /Library/LaunchDaemons/mysql.plist 

#打开任何来源
sudo spctl --master-disable
#关闭任何来源
#sudo spctl --master-enable

