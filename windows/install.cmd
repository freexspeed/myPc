::需要执行两次,因为第一次执行后,需要重新打开powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

::pagram
choco install tortoisesvn -y
choco install git -y
choco install notepadplusplus -y
choco install 7zip -y
choco install telegram -y
choco install python2 -y
::choco install python3 -y
choco install python -version 3.6.8 -y
choco install jdk8 -y    
choco install GoogleChrome -y
choco install firefox -y
choco install beyondcompare -y
choco install filezilla -y
choco install evernote -y
choco install wps-office-free -y
choco install wox -y        %=alfred%

choco install MobaXterm -y
::(15pro key ZC10K-8EF57-084QZ-VXYXE-ZF2XF)
choco install vmwareworkstation -y      

choco install emacs -y
choco install vscode -y
choco install msys2 -y
choco install pycharm -y
choco install intellijidea-ultimate -y
choco install WebStorm -y
choco install androidstudio -y
choco install RubyMine -y
choco install goland -y
choco install eclipse -y
choco install intellijidea-ultimate -y
choco install microsoft-windows-terminal -y
choco install files -y

::need download nvm-windows first
::nvm install 8.17.0     #list https://nodejs.org/en/download/releases/
