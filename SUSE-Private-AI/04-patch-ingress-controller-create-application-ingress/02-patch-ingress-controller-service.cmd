source /tmp/variables && \
NAMESPACE=$(kubectl get svc -A | grep ${INGRESS_CONTROLLER_SERVICE_NAME} | awk '{print$1}')

kubectl -n ${NAMESPACE} patch svc ${INGRESS_CONTROLLER_SERVICE_NAME} -p '{"spec": {"type": "LoadBalancer", "loadBalancerIP": "${APPLICATION_EXTERNAL_IP}"}}'

