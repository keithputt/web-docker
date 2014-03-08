# Cleanup potential old images and containers
echo "Killing container"
sudo docker kill web
sudo docker rm web
echo "Killing images"
sudo docker rmi web_img

# To start using it, build a new container image with the following:
echo "Building image"
sudo docker build -t web_img . 

# And using that image - we can run a new container:
echo "Creating and running container"
sudo docker run -i -name web web_img
