FROM mysql:5.6
ENV MYSQL_ROOT_PASSWORD password
COPY db-setup.sh /mysql/db-setup.sh
COPY studentapp.sql /mysql/studentapp.sql
RUN chmod -R 777 /mysql/db-setup.sh
RUN /mysql/db-setup.sh
RUN mysql -uroot -ppassword < /mysql/studentapp.sql
