git pull origin main 
docker build . -t app_node
docker run -d -p 3765:3000 --rm app_node