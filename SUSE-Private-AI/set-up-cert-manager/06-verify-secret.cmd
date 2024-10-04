## Verify that value is correct in the secret:
source /tmp/variables && \
kubectl get -n ${APPLICATION_NAMESPACE} secret route53-credentials-secret -o jsonpath={.data.secret-access-key} | base64 -d; echo ""

echo ""

read -n1 -p "Is the secret key correct? (y/n) " YESNO

echo ""

[ ${YESNO} != y ] && { echo "Please repeat the instructions of setting the variable and creating the secret and re-verify."; echo ""; exit; }

rm /tmp/04-copy-to-tmp-then-set-AWS_SECRET_ACCESS_KEY-variable.cmd
