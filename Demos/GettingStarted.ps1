## https://dbafromthecold.com/2018/02/07/sql-server-in-kubernetes-on-docker-for-windows/


# check images
docker container images



# confirm kubectl context
kubectl config current-context



# view info on cluster
kubectl cluster info



# view nodes
kubectl get nodes



# deploy pod
kubectl run sqlserver --image=mcr.microsoft.com/mssql/server:2019-CTP2.2-ubuntu `
--replicas=1 --env ACCEPT_EULA=Y --env SA_PASSWORD=Testing1122



# view deployment
kubectl get deployments



# view pod
kubectl get pods



# exec into pod
kubectl exec -it PODNAME bash



# navigate to sqlcmd
cd /opt/mssql-tools/bin/



# connect to sql
./sqlcmd -S . -U sa -P Testing1122



# confirm sql version
SELECT @@VERSION;
GO



# view service
kubectl get services



# expose service
kubectl expose deployment sqlserver --type=LoadBalancer --port=1433 --target-port=1433



# view service
kubectl get services



# deploy dashboard
kubectl create -f https://raw.githubusercontent.com/kubernetes/dashboard/master/aio/deploy/recommended/kubernetes-dashboard.yaml



# get token
kubectl -n kube-system describe secret 



# start proxy
kubectl proxy



# connect to dashboard
http://localhost:8001/api/v1/namespaces/kube-system/services/https:kubernetes-dashboard:/proxy/