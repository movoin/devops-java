###
 # Common Functions
 ##
source "$DOCKER_CONF_PATH/bin/functions.sh"

mkdir /usr/local/java
cd /usr/local/java

wget --no-cookies --no-check-certificate --header "Cookie: gpw_e24=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "https://download.oracle.com/otn-pub/java/jdk/8u191-b12/2787e4a523244c269598db4e85c51e0c/jdk-8u191-linux-x64.tar.gz"

tar zxf jdk-8u191-linux-x64.tar.gz

alternatives --install /usr/bin/java java /usr/local/java/jdk1.8.0_191/bin/java 1
alternatives --install /usr/bin/jar jar /usr/local/java/jdk1.8.0_191/bin/jar 1
alternatives --install /usr/bin/javac javac /usr/local/java/jdk1.8.0_191/bin/javac 1
alternatives --set jar /usr/local/java/jdk1.8.0_191/bin/jar
alternatives --set javac /usr/local/java/jdk1.8.0_191/bin/javac

rm -f jdk-8u191-linux-x64.tar.gz
