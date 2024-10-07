source /tmp/variables && \
kubectl -n ${APPLICATION_NAMESPACE} create ingress ${APPLICATION_NAME}-ingress --class ${INGRESS_CLASS_NAME} --rule="${FQDN}/*=${APP_SERVICE}:${APP_SERVICE_PORT},tls=${APPLICATION_NAME}-tls"
