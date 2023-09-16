cd ~/aquarium/
timeout -s SIGINT 180 docker-compose up -d
# docker restart 074a106f4a61
# docker restart 6feb23e0acfa
# docker restart 77f1b6dc27f3
# docker restart 351abd64f799
# docker restart 370d43cadf1a
# docker restart bef68933a0b6
# docker restart 096018637bc3
while true
do
	sleep 5
	echo "Starting docker service"
	echo "waiting for 180s"
	sleep 180
	echo "180s is up"
	docker restart 074a106f4a61
	docker restart 6feb23e0acfa
	docker restart 77f1b6dc27f3
	docker restart 351abd64f799
	docker restart 370d43cadf1a
	docker restart bef68933a0b6
	docker restart 096018637bc3
	echo "restarting docker images"
done
