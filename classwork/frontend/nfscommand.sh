sudo apt update
sudo apt install nfs-kernel-server -y
sudo mkdir /opt/nfs/data -p
sudo chown nobody:nogroup /opt/nfs/data
sudo chmod 777 -R /opt/nfs/data

sudo nano /etc/exports
/opt/nfs/data    10.184.0.4(rw,sync,no_subtree_check) 10.148.0.6(rw,sync,no_subtree_check) 10.148.0.7(rw,sync,no_subtree_check)
/opt/nfs/data    *(rw,sync,no_subtree_check) # All IPs
sudo systemctl restart nfs-kernel-server


 sudo mount 10.184.0.4:/opt/nfs/data /opt/nfs/data