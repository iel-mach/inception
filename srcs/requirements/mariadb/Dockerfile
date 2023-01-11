# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iel-mach <iel-mach@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/16 02:26:48 by iel-mach          #+#    #+#              #
#    Updated: 2023/01/04 01:27:10 by iel-mach         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y mariadb-server
RUN mkdir /var/run/mysqld
RUN touch /var/run/mysqld/mysqld.sock
RUN chown -R mysql /var/run/mysqld
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./tools/script.sh ./
RUN chmod +x script.sh

COPY ./tools/filename.sql /

ARG DB_NAME \
    USER \
    USR_P 

RUN ./script.sh

CMD ["mysqld"]