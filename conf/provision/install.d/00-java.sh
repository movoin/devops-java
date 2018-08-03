source /opt/docker/bin/functions.sh

mkdir /usr/local/java
cd /usr/local/java

wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u181-b13/96a7b8442fe848ef90c96a2fad6ed6d1/jdk-8u181-linux-x64.tar.gz"

tar zxf jdk-8u181-linux-x64.tar.gz

alternatives --install /usr/bin/java java /usr/local/java/jdk1.8.0_181/bin/java 1
alternatives --install /usr/bin/jar jar /usr/local/java/jdk1.8.0_181/bin/jar 1
alternatives --install /usr/bin/javac javac /usr/local/java/jdk1.8.0_181/bin/javac 1
alternatives --set jar /usr/local/java/jdk1.8.0_181/bin/jar
alternatives --set javac /usr/local/java/jdk1.8.0_181/bin/javac

rm -f jdk-8u181-linux-x64.tar.gz
