cd ~/aquarium/
sudo timeout -s SIGINT 180 docker-compose up -d
sudo docker restart f5f225411325
sudo docker restart d51c26d519ef
sudo docker restart 19fed89ac7f8
sudo docker restart 93b2f510d9c2
sudo docker restart 51408eb4e999
sudo docker restart e07c0711a146
while true
do
	sleep 5
	echo "Starting docker service"
	echo "waiting for 1800s"
	sleep 1800
	echo "180s is up"
	sudo docker restart f5f225411325
	sudo docker restart d51c26d519ef
	sudo docker restart 19fed89ac7f8
	sudo docker restart 93b2f510d9c2
	sudo docker restart 51408eb4e999
	sudo docker restart e07c0711a146
	echo "restarting docker images"
done
