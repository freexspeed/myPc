#!/bin/zsh

#nodejs
brew install nvm
#nvm node_mirror https://npm.taobao.org/mirrors/node/   //使用淘宝镜像
#nvm npm_mirror https://npm.taobao.org/mirrors/npm/
nvm install v16
nvm install v12
nvm install v10
npm install -g yarn #16安装
npm install -g typescript
npm install -g ts-node
npm install -g ts-loader    #webpack
npm i esbuild -g

echo '
#nvm evn
export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
' >> ~/.zshrc
source ~/.zshrc

#java
#brew install jenv  #how to use?https://www.jenv.be/
brew install java11
brew install --build-from-source openjdk@8  #jdk有18后, 这个安装的是18的版本
brew install --cask homebrew/cask-versions/adoptopenjdk8    #需要手动输入密码?
echo '
#java evn
#JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home           #jdk8
JAVA_HOME=/opt/homebrew/Cellar/openjdk@11/11.0.14.1/libexec/openjdk.jdk/Contents/Home   #jdk11
#JAVA_HOME=/opt/homebrew/Cellar/openjdk/18.0.2.1/libexec/openjdk.jdk/Contents/Home      #jdk18
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
GOROOT=/opt/homebrew/Cellar/go/1.18.1
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
brew install android-platform-tools

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
tar -xvf temp/redis.tgz -C temp
cd temp/redis-5.3.5
phpize
./configure
make
make install        #/usr/local/lib/php/pecl/20190902/redis.so -> /usr/local/Cellar/php@7.4/7.4.26_1/pecl/20190902/redis.so


#brew install composer #安装composer，一个PHP包管理工具 这样装版本可能不对
#composer global require "laravel/installer" #安装laravel 不需要 这个不是全局的
cp php/php-ext-xdebug.ini /usr/local/etc/php/7.4/conf.d

#ios app
brew install cocoapods

#cocos
wget -O temp/CocosDashboard.dmg https://download.cocos.com/CocosDashboard/v1.1.1/CocosDashboard-v1.1.1-mac-021618.dmg
open temp/CocosDashboard.dmg    #需要手动点击同意

#python 默认到这里已经安装了python3.9? brew no more python2 pyenv
#MacOs M1 直接安装python3.9 以上的版本，3.7, 3.8安装上libffi还是会报错
#pyenv + 
brew install pyenv
pyenv install python
echo 'eval "$(pyenv init --path)"' >> ~/.zprofile
echo 'eval "$(pyenv init -)"' >> ~/.zshrc

#cefpython3 (m1没有安装成功)
# brew install ninja
# brew install cmake
# pip install cython==0.25.2
# git clone https://github.com/cztomczak/cefpython.git temp/cefpython3
# wget -O temp/cefv57.zip https://github.com/cztomczak/cefpython/releases/download/v57-upstream/cef57_3.2987.1601.gf035232_mac64.zip
# cd temp/cefpython3
# git checkout cefpython57
# mkdir build/
# cd build/
# https://github.com/cztomczak/cefpython/releases/tag/v57-upstream

brew install jadx       #jadx-gui 启动

#nginx
#brew install nginx
# wget -O temp/nginx.tar.gz http://nginx.org/download/nginx-1.23.3.tar.gz
# tar -xvf temp/nginx.tar.gz -C temp
# cd temp/nginx-1.23.3
# ./configure
#     --sbin-path=/usr/local/nginx/nginx
#     --conf-path=/usr/local/nginx/nginx.conf
#     --pid-path=/usr/local/nginx/nginx.pid
#     --with-http_ssl_module
#     --with-pcre=../pcre2-10.39
#     --with-zlib=../zlib-1.2.11

# wget https://ftp.pcre.org/pub/pcre/pcre-8.43.tar.gz
# tar xvf pcre-8.43.tar.gz
# wget https://www.openssl.org/source/openssl-1.0.2s.tar.gz
# tar xvf openssl-1.0.2s.tar.gz
# wget http://www.zlib.net/zlib-1.2.11.tar.gz
# tar xvf zlib-1.2.11.tar.gz
# ./configure --with-pcre=./pcre-8.43/ --with-openssl=./openssl-1.0.2s/ --with-zlib=./zlib-1.2.11

#yarn
echo '
#yarn
export PATH="$PATH:`yarn global bin`"   #`yarn global bin`会返回真正的目录, 比如/Users/ghostx/.yarn/bin
' >> ~/.zshrc

#postgresql 默认的情况只要去掉后面的@15, 默认与15的区别,15需要单独设置环境变量
brew install postgresql@15
brew services start postgresql@15  #重启后自动启动
echo 'export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc