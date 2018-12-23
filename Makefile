cert:
	openssl req -newkey rsa:4096 -nodes -sha256 -keyout auth/domain.key -x509 -days 365 -out auth/domain.crt
	
pwd:
	htpasswd -c auth/nginx.htpasswd admin


