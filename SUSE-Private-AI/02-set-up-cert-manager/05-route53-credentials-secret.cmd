source /tmp/variables && \
source /tmp/04-copy-to-tmp-then-set-AWS_SECRET_ACCESS_KEY-variable.cmd && \
kubectl create -n ${APPLICATION_NAMESPACE} secret generic route53-credentials-secret --from-literal=secret-access-key=${AWS_SECRET_ACCESS_KEY}

