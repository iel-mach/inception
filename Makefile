# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iel-mach <iel-mach@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/16 02:23:59 by iel-mach          #+#    #+#              #
#    Updated: 2023/01/04 15:42:49 by iel-mach         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all : dir  build up


dir :
	mkdir -p /Users/iel-mach/Desktop/data/wp
	mkdir -p /Users/iel-mach/Desktop/data/db
up :
	docker-compose -f srcs/docker-compose.yml up
build :
	docker-compose -f srcs/docker-compose.yml build
down :
	docker-compose -f srcs/docker-compose.yml down
clean : down
	rm -rf /Users/iel-mach/Desktop/data/wp/*
	rm -rf /Users/iel-mach/Desktop/data/db/*
	docker system prune -af
	docker image prune -f
	docker volume rm $(docker volume ls)
	