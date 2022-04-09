#!/bin/zsh

mkdir ~/.oh-my-zsh/custom/plugins/incr
curl -o ~/.oh-my-zsh/custom/plugins/incr/incr.plugin.zsh http://mimosa-pudica.net/src/incr-0.2.zsh
echo $ZSH_CUSTOM
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
cp -f .zshrc ~/.zshrc
source ~/.zshrc


brew tap railwaycat/emacsmacport
brew install --cask emacs-mac-spacemacs-icon

# mkdir temp
# wget -O temp/spacemacs-master.zip https://codeload.github.com/syl20bnr/spacemacs/zip/master
# rm -rf ~/emacs.d
# unzip -o temp/spacemacs-master.zip -d ~/
# mv ~/spacemacs-master ~/.emacs.d
git clone -b develop https://github.com/syl20bnr/spacemacs ~/.emacs.d

brew install --cask intellij-idea


#rm -rf /usr/local/var/mysql
#brew install mysql@5.7
#cp -f mysql/my.cnf /usr/local/etc/my.cnf
#sudo chown -R _mysql /usr/local/var/mysql
#sudo chmod -R o+rwx /usr/local/var/mysql
#/usr/local/var/mysql目录下的*.local.err创建可能是root的属性，需要再次chown mysql

brew tap homebrew/services
#brew link mysql@5.7 --force
#brew install mysql-client
brew install mysqlworkbench
brew install --cask dbeaver-community   #依赖java环境，下载驱动失败很可能是java环境配置问题
brew install TablePlus
brew install Snipaste   #截图
brew install jietu      #截图 腾讯出的
brew install rdesktop   #windows 远程 命令行？ https://github.com/rdesktop/rdesktop
#brew install razorsql  #for sqlserver  30天
brew install postman
brew install --cask visual-studio-code
brew install VSCodium
brew install atom
brew install Brackets
brew install tcping
#picture
brew install Krita
brew install PaintBrush     #小巧但有点bug

brew install mos            #鼠标滚轮

brew install youdaodict
brew install moefe-google-translate

#redis
brew install redis
brew install iredis     #命令行工具 https://iredis.io/#install


#not usual
brew install gimp       #图形编辑

brew install yinxiangbiji   #国内版
brew install evernote2md      #国际版
brew install LANDrop
#brew install NTFSTool

#字体
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
brew install --cask squirrel    #rime输入法

#bash high version
brew install bash   #/usr/local/bin/bash

#need root

#redis
#sudo cp -f redis/redis-server.plist /Library/LaunchDaemons/
#sudo launchctl load -w /Library/LaunchDaemons/redis-server.plist
brew services start redis   #注册开机启动

#error
#https://qiita.com/ota42y/items/0364d1da7cbf90df3dc4

#mysql
#sudo cp -f mysql/mysql.plist /Library/LaunchDaemons/
#sudo launchctl load -w /Library/LaunchDaemons/mysql.plist

#打开任何来源
sudo spctl --master-disable
#关闭任何来源
#sudo spctl --master-enable

brew install google-chrome
brew install --cask microsoft-edge
brew install chromium
brew install --cask firefox
brew install --cask iterm2
brew install telegram
brew install skype
brew install whatsapp
#brew install line
brew install --cask messenger

brew install alfred
brew install git-svn

brew install fork
brew install 