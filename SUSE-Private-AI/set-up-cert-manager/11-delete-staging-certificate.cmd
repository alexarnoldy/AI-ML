source /tmp/variables && \
kubectl -n ${APPLICATION_NAMESPACE} delete secret ${APPLICATION_NAME}-staging-certificate-secret
kubectl -n ${APPLICATION_NAMESPACE} delete certificate ${APPLICATION_NAME}-staging-certificate
