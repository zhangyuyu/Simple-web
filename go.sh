DOCKER_HOSTED_REPO=localhost:50001

./gradlew clean build

mkdir docker

cp build/libs/simple-web-1.0.0.war docker/

cp Dockerfile docker/

cd docker

docker login -u admin -p admin123 ${DOCKER_HOSTED_REPO}

docker build -t ${DOCKER_HOSTED_REPO}/simple-web:1.0.0 .

docker push ${DOCKER_HOSTED_REPO}/simple-web:1.0.0

docker rmi ${DOCKER_HOSTED_REPO}/simple-web:1.0.0

rm -rf docker/

rm -rf build/