[DEPLOY KAFKA-HTTP-PROXY TEST]
sudo docker build --no-cache -t nexus.teamdigitale.test/kafka-http-proxy:1.0.0 .
sudo docker push nexus.teamdigitale.test/kafka-http-proxy:1.0.0
kubectl delete -f kafka-http-proxy.yaml
kubectl apply -f kafka-http-proxy.yaml

[DEPLOY KAFKA-HTTP-PROXY PROD]
sudo docker build --no-cache -t nexus.daf.teamdigitale.it/kafka-http-proxy:1.0.0 .
sudo docker push nexus.daf.teamdigitale.it/kafka-http-proxy:1.0.0
kubectl delete -f kafka-http-proxy.yaml
kubectl apply -f kafka-http-proxy.yaml