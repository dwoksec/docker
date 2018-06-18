# 版本信息
FROM centos
MAINTAINER locutus "ppdrop"

# OS环境配置
#RUN yum install -y wget
#RUN yum install -y nano
#RUN yum -y install mariadb*

#-----------------------------------------
#ADD ./mariadb.sql /root/mariadb.sql
#ADD ./web_test.sql /root/web_test.sql
#ADD ./server.cnf /etc/my.cnf.d/server.cnf
#ADD ./mariadb.sh /root/mariadb.sh
##RUN yum -y install mariadb-server
#RUN yum -y install mariadb*
#RUN yum clean all
#RUN chmod +x /root/mariadb.sh
#EXPOSE 3306
#CMD ["/root/mariadb.sh"]
#-----------------------------------------

ADD ./  /var/tmp/webapp

# 安装JDK
RUN mkdir /var/tmp/jdk
RUN tar -xzf /var/tmp/webapp/jdk-8u171-linux-x64.tar.gz -C /var/tmp/jdk && rm -rf /var/tmp/webapp/jdk-8u171-linux-x64.tar.gz

# 安装tomcat
RUN mkdir /var/tmp/tomcat
RUN tar xzf /var/tmp/webapp/apache-tomcat-7.0.88.tar.gz -C /var/tmp/tomcat && rm -rf /var/tmp/webapp/apache-tomcat-7.0.88.tar.gz
ADD ./tomcat-users.xml /var/tmp/tomcat/apache-tomcat-7.0.88/conf/

#设置环境变量
ENV JAVA_HOME /var/tmp/jdk/jdk1.8.0_171
ENV CATALINA_HOME /var/tmp/tomcat/apache-tomcat-7.0.88
ENV PATH $PATH:$JAVA_HOME/bin:$CATALINA_HOME/bin

#打包项目并拷贝到tomcat webapps目录
#RUN mkdir /var/tmp/webapp
RUN cp /var/tmp/webapp/web-test.war /var/tmp/tomcat/apache-tomcat-7.0.88/webapps/

#开启内部服务端口
EXPOSE 8080

#启动tomcat服务器
CMD ["./var/tmp/tomcat/apache-tomcat-7.0.88/bin/catalina.sh","run"] && tail -f /var/tmp/tomcat/apache-tomcat-7.0.88/logs/catalina.out
