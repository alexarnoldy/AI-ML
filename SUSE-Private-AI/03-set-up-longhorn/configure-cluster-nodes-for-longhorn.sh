sudo zypper -n in iptables coreutils jq nfs-client util-linux open-iscsi cryptsetup device-mapper
sudo systemctl enable iscsid
sudo systemctl start iscsid
sudo systemctl status iscsid
sudo modprobe iscsi_tcp
