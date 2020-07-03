docker stop $(docker ps)
docker rm $(docker ps -a -q)
docker rmi $(docker image ls)
docker volume rm $(docker volume ls)