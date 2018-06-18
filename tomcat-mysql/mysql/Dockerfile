FROM mysql:5.7

#设置免密登录
ENV MYSQL_ALLOW_EMPTY_PASSWORD yes

#将所需文件放到容器中
COPY setup.sh /home/setup.sh
COPY web_test.sql /home/web_test.sql
COPY privileges.sql /home/privileges.sql

#给setup.sh设置权限
RUN chmod +x /home/setup.sh

#设置容器启动时执行的命令
CMD ["sh", "/home/setup.sh"]