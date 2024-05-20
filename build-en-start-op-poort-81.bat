
docker build -t demo-site:latest .

docker run -d -t --name demo-container -p 81:80 demo-site:latest

docker exec -i -t demo-container /bin/bash


