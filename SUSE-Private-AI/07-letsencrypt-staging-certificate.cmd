source /tmp/variables && \
kubectl apply -f - <<EOF
apiVersion: cert-manager.io/v1
kind: Certificate
metadata:
  name: suse-private-ai-staging-certificate
  namespace: suse-private-ai
spec:
  secretName: suse-private-ai-staging-certificate-secret # Kubernetes secret that will contain the tls.key and tls.crt of the new cert
  commonName: ${FQDN}
  dnsNames:
    - ${FQDN}
  issuerRef:
    name: letsencrypt-issuer
    kind: Issuer
EOF
