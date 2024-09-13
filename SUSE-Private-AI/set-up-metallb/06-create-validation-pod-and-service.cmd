source /tmp/variables && \
kubectl apply -f - <<EOF
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx
  namespace: default
spec:
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1
        ports:
        - name: http
          containerPort: 80

---

apiVersion: v1
kind: Service
metadata:
  name: nginx
  namespace: default
spec:
  ports:
  - name: http
    port: 8080
    protocol: TCP
    targetPort: 80
  selector:
    app: nginx
  type: LoadBalancer
  loadBalancerIP: ${APPLICATION_EXTERNAL_IP}
EOF
