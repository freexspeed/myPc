#jdk

#yum search java | grep jdk
#yum -y install java    #openjdk centos7直接安装没有javac
#/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.332.b09-1.el7_9.x86_64/jre/bin/java
#(jdk11少了jre的部分，而jdk1.8包含jre部分。是精简版与完整版的区别)

yum -y install java-latest-openjdk-devel.x86_64
echo '
#java evn
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.332.b09-1.el7_9.x86_64
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=$JAVA_HOME/lib:$JRE_HOME/lib:$CLASSPATH
export PATH=$JAVA_HOME/bin:$JRE_HOME/bin:$PATH
' >> /etc/profile

source /etc/profile

#conf/application.properties  默认端口:8848 http://127.0.0.1:8848/nacos/index.html#/login 


http://8.212.180.165:9411/nacos/index.html#/login 