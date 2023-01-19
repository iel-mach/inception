# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iel-mach <iel-mach@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/16 02:23:59 by iel-mach          #+#    #+#              #
#    Updated: 2023/01/17 04:53:03 by iel-mach         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

all : dir  build up


dir :
	mkdir -p ~/Desktop/data/wp
	mkdir -p ~/Desktop/data/db
up :
	docker-compose -f srcs/docker-compose.yml up
build :
	docker-compose -f srcs/docker-compose.yml build
down :
	docker-compose -f srcs/docker-compose.yml down
clean : down
	rm -rf ~/Desktop/data/wp/*
	rm -rf ~/Desktop/data/db/*
	docker system prune -af
	docker image prune -f
	docker volume rm srcs_database
	docker volume rm srcs_wordpress
fclean : clean
	