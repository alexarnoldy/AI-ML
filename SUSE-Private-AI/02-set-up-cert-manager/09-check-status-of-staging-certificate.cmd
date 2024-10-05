source /tmp/variables && \
kubectl get -w -n ${APPLICATION_NAMESPACE} certificate
