for EACH in $(cat /tmp/worker-nodes); do scp configure-worker-nodes-for-longhorn.sh ${EACH}:~; done

for EACH in $(cat /tmp/worker-nodes); do ssh ${EACH} bash configure-worker-nodes-for-longhorn.sh; done
