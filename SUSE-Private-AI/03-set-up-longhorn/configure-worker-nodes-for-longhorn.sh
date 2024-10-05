zypper -n in iptables coreutils jq nfs-client util-linux open-iscsi
systemctl enable iscsid
systemctl start iscsid
systemctl status iscsid

