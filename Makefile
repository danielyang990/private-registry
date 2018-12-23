cert:
	openssl req -newkey rsa:4096 -nodes -sha256 -keyout auth/domain.key -x509 -days 365 -out auth/domain.crt
	
pwd:
	htpasswd -c auth/nginx.htpasswd admin

up:
	docker-compose up -d --build

down:
	docker-compose down

restart:
	make down && make up

ps:
	docker-compose ps

exec:
	docker exec -it registry_nginx_1 bash
