List of commands to create a Docker image and then running it

- create docker image and then verify that it has been correctly created
    docker image build -t configserver-qt . 
    docker image list | grep configserver-qt
- create Docker container starting from image before created
    docker run --name configserver-qt -d --network base-network -e "SPRING_PROFILES_ACTIVE=native,integration-test" -p 8888:8888 configserver-qt (to read from file)
    docker run --name configserver-qt -d --network base-network -e "SPRING_PROFILES_ACTIVE=jdbc" -p 8888:8888 configserver-qt (to read from db)