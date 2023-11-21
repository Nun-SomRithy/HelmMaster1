$ helm repo add nfs-subdir-external-provisioner https://kubernetes-sigs.github.io/nfs-subdir-external-provisioner/

$ helm install nfs-subdir-external-provisioner nfs-subdir-external-provisioner/nfs-subdir-external-provisioner \
    --set nfs.server=10.184.0.4 \
    --set nfs.path=/opt/nfs/data




    nslookup spring.kuberthy.me
    nslookup reactjs.kuberthy.me