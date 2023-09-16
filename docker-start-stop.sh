docker restart phishing-splashserver_splash0_1
docker restart phishing-splashserver_splash1_1
docker restart phishing-splashserver_splash2_1
docker restart phishing-splashserver_splash3_1
docker restart phishing-splashserver_splash4_1

echo "restarting docker images"
while true; do
	sleep 5
	echo "Starting docker service"
	timeout -s SIGINT 180 docker-compose up -d
	echo "waiting for 180s"
	sleep 180
	echo "180s is up"
	docker restart phishing-splashserver_splash0_1
	docker restart phishing-splashserver_splash1_1
	docker restart phishing-splashserver_splash2_1
	docker restart phishing-splashserver_splash3_1
	docker restart phishing-splashserver_splash4_1
	echo "restarting docker images"
done
