# This removes the previous entries, to make the operation idempotent

egrep -v 'INGRESS_CONTROLLER_SERVICE_NAME|INGRESS_CLASS_NAME|APPLICATION_SERVICE|APPLICATION_SERVICE_PORT' /tmp/variables > /tmp/variables-1

mv /tmp/variables-1 /tmp/variables



# Update these new environmental variables, then run this file.

echo '

export INGRESS_CONTROLLER_SERVICE_NAME="ingress-nginx-controller" 
export INGRESS_CLASS_NAME="nginx"
export APPLICATION_SERVICE="open-webui"
export APPLICATION_SERVICE_PORT="80"

' >> /tmp/variables

grep -v ^$ /tmp/variables > /tmp/variables-1

mv /tmp/variables-1 /tmp/variables
