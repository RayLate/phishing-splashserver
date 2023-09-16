cd ~/aquarium/
docker restart f5f225411325
docker restart d51c26d519ef
docker restart 19fed89ac7f8
docker restart 93b2f510d9c2
docker restart 51408eb4e999
docker restart e07c0711a146

echo "restarting docker images"
while true; do
	sleep 5
	echo "Starting docker service"
	timeout -s SIGINT 180 docker-compose up -d
	echo "waiting for 180s"
	sleep 180
	echo "180s is up"
	docker restart f5f225411325
	docker restart d51c26d519ef
	docker restart 19fed89ac7f8
	docker restart 93b2f510d9c2
	docker restart 51408eb4e999
	docker restart e07c0711a146
	echo "restarting docker images"
done
