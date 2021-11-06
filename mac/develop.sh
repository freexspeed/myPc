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