# https://dbafromthecold.com/2019/07/03/chaos-engineering-for-sql-server-running-on-aks-using-kubeinvaders/
# https://github.com/lucky-sideburn/KubeInvaders



# confirm kubectl context
kubectl config current-context



# switch context to local cluster
kubectl config use-context SQLK8sCluster2



# run pods
kubectl run sqlserver \
--image=mcr.microsoft.com/mssql/server:2019-RC1-ubuntu \
--replicas 10 \
--env ACCEPT_EULA=Y --env SA_PASSWORD=Testing1122 \
--namespace foobar



# get pods
kubectl get pods -o wide -n foobar



# watch pods
kubectl get pods -n foobar --watch



# clean up
kubectl delete deployment sqlserver -n foobar