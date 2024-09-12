source /tmp/variables && \
kubectl apply -f - <<EOF
apiVersion: cert-manager.io/v1
kind: Issuer
metadata:
  name: letsencrypt-issuer
  namespace: ${APPLICATION_NAMESPACE}
spec:
  acme:
    email: ${EMAIL_ADDR}
    server: https://acme-staging-v02.api.letsencrypt.org/directory # Use this line to test the process of issuing a certificate to avoid the Let's Encrypt production rate limits
#    server: https://acme-v02.api.letsencrypt.org/directory # Use this line after the certificate issues correctly
    privateKeySecretRef:
      name: letsencrypt-issuer-priv-key # K8s secret that will contain the private key for this, specific issuer
    solvers:
    - selector:
        dnsZones:
          - "${DNSZONE}"
      dns01:
        route53:
          region: ${AWS_REGION}
          accessKeyID: ${AWS_ACCESS_KEY_ID}
          secretAccessKeySecretRef:
            name: route53-credentials-secret
            key: secret-access-key
EOF
