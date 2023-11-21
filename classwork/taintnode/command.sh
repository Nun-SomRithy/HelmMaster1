kubectl taint nodes node1 node-role.kubernetes.io/master=:NoSchedule
kubectl taint nodes node1 node-role.kubernetes.io/master-

kubectl taint nodes node5 service=disabled:NoSchedule
kubectl taint node node5 service-