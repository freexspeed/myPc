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