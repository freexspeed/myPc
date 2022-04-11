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
brew install --cask snip  #https://snip.qq.com/
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
brew install --cask wiznote

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
brew install --cask oss-browser
brew install --cask iterm2
brew install telegram
brew install skype
brew install whatsapp
#brew install line
brew install --cask messenger

brew install alfred
brew install git-svn

brew install fork
brew install --cask github
brew install --cask sourcetree

brew install --cask beyond-compare

brew install autojump
brew install mlocate

brew install --cask futubull
brew install --cask wechat
brew install --cask tencent-lemon
brew install --cask dingtalk   #国内版
brew install --cask dingtalk-lite   #国际版(轻量)
 #海外http://www.dingtalk.com
wget -O temp/DingTalk_overseas_v5.1.36.2.dmg https://dtapp-pub.dingtalk.com/dingtalk-desktop/mac_dmg/Release/DingTalk_overseas_v5.1.36.2.dmg?spm=a213l2.14171110.4290834532.3.63e32726MWaXvg&file=DingTalk_overseas_v5.1.36.2.dmg
hdiutil attach temp/DingTalk_overseas_v5.1.36.2.dmg
cp -rf /Volumes/DingTalk\ For\ Mac/DingTalk.app DingTalk.app
hdiutil detach /Volumes/DingTalk\ For\ Mac

brew install --cask baiduinput
open /opt/homebrew/Caskroom/baiduinput/latest/安装百度输入法.app  #(不会自动执行)
brew install --cask thunder
brew install --cask mpv
brew install --cask iina        #https://github.com/iina/iina (mpv的增强功能)
brew install --cask iina-plus   #支持弹幕的iina插件?
brew install --cask yuque       #note https://www.yuque.com/

brew install --cask another-redis-desktop-manager   #appstore赞助版收费 https://github.com/qishibo/AnotherRedisDesktopManager/ 
sudo spctl --master-disable
sudo xattr -rd com.apple.quarantine /Applications/Another\ Redis\ Desktop\ Manager.app

brew install wget
brew install ssh-copy-id
mkdir temp
wget -O temp/sshpass.tar.gz https://udomain.dl.sourceforge.net/project/sshpass/sshpass/1.09/sshpass-1.09.tar.gz
tar -zxvf temp/sshpass.tar.gz -C temp
cd temp/sshpass-1.09
./configure make && make install
sudo mkdir /usr/local/bin
sudo cp sshpass /usr/local/bin/sshpass
cd ../..

wget -O temp/VSCode-darwin-universal.zip https://az764295.vo.msecnd.net/insider/6ea335e334b90a9aca753d558dec1d14741eff1e/VSCode-darwin-universal.zip
(https://code.visualstudio.com/insiders/)
unzip temp/VSCode-darwin-universal.zip -d temp/VSCode-darwin-universal
open temp/VSCode-darwin-universal/Visual\ Studio\ Code\ -\ Insiders.app

rm -rf temp



brew install --cask background-music  #不支持m1?
brew install --cask itsycal           #轻量好用的日期
brew install --cask utools            #高级alfred? https://mp.weixin.qq.com/s/8c-94YhOd5fLJbScW4MnFw

sudo ln -s /usr/libexec/locate.updatedb /usr/local/bin/updatedb
sudo updatedb