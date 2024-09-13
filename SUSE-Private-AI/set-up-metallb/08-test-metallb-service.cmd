source /tmp/variables && \
kubectl get svc -n default | grep -w nginx > /tmp/externalip
read -r a b c EXTERNAL_IP e f < /tmp/externalip
curl http://${EXTERNAL_IP}:8080 2>&1 | grep "Thank you"
rm /tmp/externalip

echo ""
echo "Continue when 'Thank you for using nginx.' is displayed"
