source /tmp/variables && \
kubectl apply -f - <<EOF
apiVersion: cert-manager.io/v1
kind: Certificate
metadata:
  name: ${APPLICATION_NAME}-staging-certificate
  namespace: ${APPLICATION_NAMESPACE}
spec:
  secretName: ${APPLICATION_NAME}-tls # Kubernetes secret that will contain the tls.key and tls.crt of the new cert
  commonName: ${FQDN}
  dnsNames:
    - ${FQDN}
  issuerRef:
    name: letsencrypt-issuer
    kind: Issuer
EOF
