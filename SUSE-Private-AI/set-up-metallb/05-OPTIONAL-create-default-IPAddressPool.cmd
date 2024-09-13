source /tmp/variables &&
kubectl apply -f - <<EOF
apiVersion: metallb.io/v1beta1
kind: IPAddressPool
metadata:
  name: default-pool
  namespace: metallb-system
spec:
  addresses:
  - ${DEFAULT_IP_RANGE_START}-${DEFAULT_IP_RANGE_END}
EOF
