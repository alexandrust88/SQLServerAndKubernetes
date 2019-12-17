# https://dbafromthecold.com/2019/01/16/deploying-sql-server-to-kubernetes-using-helm/


# switch context
kubectl config use-context SQLK8sCluster2



# install tiller on cluster
helm init



# confirm helm version
helm version



# search for Sql Server chart
helm search stable/mssql-linux



# perform test deployment
helm install --name sqlserver stable/mssql-linux --dry-run --debug



# list helm repos
helm repo list



# search for chart in private repo
helm search dbafromthecold/sqlserver2019rc1



# perform test deployment from private repo
helm install --name dbafromthecold/sqlserver2019Rc1 --version 0.1.0 --dry-run --debug



# deploy
helm install --name sqlserver2019 dbafromthecold/sqlserver2019Rc1 --version 0.1.0



# confirm deployment
helm list



# list deployments
kubectl get deployments



# list pods
kubectl get pods



# list services
kubectl get services



# describe service
kubectl describe service sqlserver2019



# list service
kubectl get services



# clean up
helm delete sqlserver2019 --purge