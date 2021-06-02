docker rm -f $(docker ps -q)
docker-compose up -d

sleep 3

IP_NGINX_CONTAINER=http://$(docker inspect --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' as02-nginx)
echo "\nIP NGNIX CONTAINER: $IP_NGINX_CONTAINER"

echo "\n\nHEALTH CHECK NGINX CONTAINER"
docker ps -f status=running -f name=as02-nginx

echo "\n\nHEALTH CHECK NGINX CONTAINER PORT 80"
curl --url "http://localhost" | grep nginx.com

echo "\n\nCURL REMOTE FROM CONTAINER NGINX TO CONTAINER MYSQL"
docker exec -it as02-nginx mysql -uroot -pMudar@123! -has02-mysql