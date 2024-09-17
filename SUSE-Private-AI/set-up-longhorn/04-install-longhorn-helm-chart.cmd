helm repo add longhorn https://charts.longhorn.io
helm repo update

helm install longhorn longhorn/longhorn \
--namespace longhorn-system \
--create-namespace \
--version 1.7.1 \
--set replicaSoftAntiAffinity=enabled \
--set defaultClassReplicaCount=2 \
--set defaultReplicaCount=2

