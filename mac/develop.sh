#nodejs
brew install nvm
#nvm node_mirror https://npm.taobao.org/mirrors/node/   //使用淘宝镜像
#nvm npm_mirror https://npm.taobao.org/mirrors/npm/

echo '
#nvm evn
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
' >> ~/.zshrc
source ~/.zshrc

#java
brew install java11
echo '
#java evn
JAVA_HOME=/usr/local/Cellar/openjdk@11/11.0.12/libexec/openjdk.jdk/Contents/Home
PATH=$JAVA_HOME/bin:$PATH:.
CLASSPATH=$JAVA_HOME/lib/tools.jar:$JAVA_HOME/lib/dt.jar:.
export JAVA_HOME
export PATH
export CLASSPATH
' >> ~/.zshrc
source ~/.zshrc

#go
brew install go
mkdir ~/go  #默认,mac中即使设置其它目录,zsh的情况也不生效
echo '
#go evn
GOPATH=~/go
GOROOT=/usr/local/Cellar/go/1.17.2
GOBIN=$GOROOT/bin:$GOPATH/bin
VSCODE="/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
PATH=$PATH:$GOBIN:$VSCODE
' >> ~/.zshrc
source ~/.zshrc
go get dubbo.apache.org/dubbo-go/v3
go get github.com/dejavuzhou/ginbro


#zookeeper
brew install zookeeper

#docker
brew install --cask --appdir=/Applications docker

#android
brew install gradle
echo '
#android evn
export ANDROID_SDK_ROOT=~/Library/Android/sdk
export ANDROID_HOME=~/Library/Android
export PATH=$PATH:~/Library/Android/sdk/cmdline-tools/latest/bin
' >> ~/.zshrc
source ~/.zshrc

#vim
echo '
#svn evn
export SVN_EDITOR=emacs
' >> ~/.zshrc
source ~/.zshrc

#need root
#php
brew install php@7.4
brew link --force --overwrite php@7.4
#echo 'LoadModule php7_module /usr/local/Cellar/php@7.3/7.3.33_1/lib/httpd/modules/libphp7.so' >> /private/etc/apache2/httpd.conf
#直接下载可执行文件
wget -O /usr/local/bin/composer https://getcomposer.org/download/2.1.14/composer.phar
chmod +x /usr/local/bin/composer
#redis extension
wget -O temp/redis.tgz https://pecl.php.net/get/redis-5.3.5.tgz

#brew install composer #安装composer，一个PHP包管理工具 这样装版本可能不对
#composer global require "laravel/installer" #安装laravel 不需要 这个不是全局的
cp php/php-ext-xdebug.ini /usr/local/etc/php/7.4/conf.d
