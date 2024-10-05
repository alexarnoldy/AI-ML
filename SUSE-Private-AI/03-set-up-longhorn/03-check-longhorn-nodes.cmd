## Verify that we are connected to the correct K8s cluster:

echo "Cluster name: $(kubectl config current-context)"

echo ""

kubectl get nodes -o wide

echo ""

read -n1 -p "Is this the cluster running the Rancher instance to be upgraded? (y/n) " YESNO

echo ""

[ ${YESNO} != y ] && { echo "Exiting."; echo ""; exit; }

echo "Continuing..."

curl -sSfL https://raw.githubusercontent.com/longhorn/longhorn/v1.7.1/scripts/environment_check.sh | bash

