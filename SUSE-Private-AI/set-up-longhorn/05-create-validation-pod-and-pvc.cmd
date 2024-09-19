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
        volumeMounts:
        - mountPath: /mnt/test-vol
          name: test-vol
      volumes:
      - name: test-vol
        persistentVolumeClaim:
          claimName: nginx-pvc

---

kind: PersistentVolumeClaim
apiVersion: v1
metadata:
  name: nginx-pvc
  namespace: default
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 1Gi

EOF
