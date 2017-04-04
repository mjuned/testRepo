
./gradlew clean
./gradlew assemble

export IMAGE_NAME=mohammadjuned/testrepo:latest
#echo "Building image: $IMAGE_NAME"

docker build -t mohammadjuned/testrepo:latest .
docker tag mohammadjuned/testrepo latest
#docker push $IMAGE_NAME
#echo "Pushed new image : $IMAGE_NAME"

docker run --rm -p 9090:8080 -v $PWD:/app -w /app $IMAGE_NAME nohup java -jar ./build/libs/gs-spring-boot-0.1.0.jar &