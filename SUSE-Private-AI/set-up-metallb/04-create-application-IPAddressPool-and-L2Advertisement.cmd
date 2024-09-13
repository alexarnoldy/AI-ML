source /tmp/variables && \
kubectl apply -f - <<EOF
apiVersion: metallb.io/v1beta1
kind: IPAddressPool
metadata:
  name: ${APPLICATION_NAME}-pool
  namespace: metallb-system
spec:
  addresses:
  - ${APPLICATION_EXTERNAL_IP}/32
  autoAssign: false

---

apiVersion: metallb.io/v1beta1
kind: L2Advertisement
metadata:
  name: all-pools
  namespace: metallb-system
EOF
