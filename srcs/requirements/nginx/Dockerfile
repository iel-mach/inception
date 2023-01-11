# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iel-mach <iel-mach@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/16 02:27:09 by iel-mach          #+#    #+#              #
#    Updated: 2023/01/01 18:38:31 by iel-mach         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM debian:buster

RUN apt-get update -y && apt-get upgrade -y

RUN apt-get install -y nginx

COPY ./conf/default /etc/nginx/sites-available

RUN mkdir -p /etc/ssl/certs

ADD ./tools /etc/ssl/certs

CMD [ "nginx", "-g", "daemon off;" ]