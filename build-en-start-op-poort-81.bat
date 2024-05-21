
docker build -t demo-site:latest .

docker stop demo-container
docker rm demo-container

docker run -d -t --name demo-container -p 81:80 demo-site:latest


