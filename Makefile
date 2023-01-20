# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: iel-mach <iel-mach@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/16 02:23:59 by iel-mach          #+#    #+#              #
#    Updated: 2023/01/20 19:54:32 by iel-mach         ###   ########.fr        #
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
	sudo rm -rf ~/Desktop/data/wp/*
	sudo rm -rf ~/Desktop/data/db/*
	docker system prune -af
	docker image prune -f
	docker images -q | xargs -r docker rmi
	docker volume ls -q | xargs -r  docker volume rm
fclean : clean

re : fclean all
	