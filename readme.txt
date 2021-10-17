
docker image build -t kiefinger/msg-api-mp-demo:latest .
docker login
docker push kiefinger/msg-api-mp-demo:latest


test
curl localhost:9080/msg-api-mp-demo/api/properties

