## List the SSH connection string (i.e. user@hostname or user@ipaddress) for each cluster node below
echo '

sles@172.16.240.226
sles@172.16.240.235

' > /tmp/cluster-nodes

grep -v ^$ /tmp/cluster-nodes > /tmp/cluster-nodes-1

mv /tmp/cluster-nodes-1 /tmp/cluster-nodes
