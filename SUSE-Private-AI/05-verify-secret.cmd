kubectl get -n suse-private-ai secret route53-credentials-secret -o jsonpath={.data.secret-access-key} | base64 -d; echo ""
