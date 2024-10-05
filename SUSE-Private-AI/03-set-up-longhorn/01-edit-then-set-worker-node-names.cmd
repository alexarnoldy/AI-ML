## List the hostname or IP address of each worker node below
echo '

xr12-c

' > /tmp/worker-nodes

grep -v ^$ /tmp/worker-nodes > /tmp/worker-nodes-1

mv /tmp/worker-nodes-1 /tmp/worker-nodes
