source /tmp/variables && \
kubectl patch -n ${APPLICATION_NAMESPACE} issuers.cert-manager.io letsencrypt-issuer --type='json' -p='[{"op": "replace", "path": "/spec/acme/server", "value": "https://acme-v02.api.letsencrypt.org/directory"}]'
