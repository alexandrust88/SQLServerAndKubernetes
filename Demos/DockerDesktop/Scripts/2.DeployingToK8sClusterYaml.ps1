# https://dbafromthecold.com/2017/11/15/running-sql-server-in-kubernetes-on-azure-container-services-aks-ii/



# confirm kubectl context
kubectl config current-context



# switch context to local cluster
kubectl config use-context docker-desktop



# navigate to script location
Set-Location C:\git\dbafromthecold\SQLServerAndKubernetes\Demos\DockerDesktop\Yaml


# view sql yaml file
Get-Content sqlserver.yaml



# deploy to cluster
kubectl apply -f sqlserver.yaml



# view deployment
kubectl get deployments



# view pods
kubectl get pods



# get more info on pods
kubectl get pods -o wide



# describe pods
kubectl describe pods



# view service
kubectl get service



# get pods
kubectl get pods -o wide


# delete pod
$PODNAME=$(kubectl get pods --no-headers -o custom-columns=":metadata.name")
kubectl delete pod $PODNAME



# view pods
kubectl get pods -o wide



# get service
kubectl get service



# clean up
kubectl delete deployment sqlserver
kubectl delete service sqlserver-service