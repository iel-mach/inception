# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iel-mach <iel-mach@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/16 02:27:15 by iel-mach          #+#    #+#              #
#    Updated: 2023/01/19 19:06:42 by iel-mach         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get -y install php7.3-fpm php-mysql

RUN apt-get -y install curl

RUN mkdir -p /var/www/html/

COPY ./tools/script.sh /

COPY ./conf/wp-config.php /

RUN chmod +x script.sh

RUN ./script.sh

CMD [ "php-fpm7.3", "-R", "-F" ]