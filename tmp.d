Name:                   tomcat
Namespace:              tomcat
CreationTimestamp:      Thu, 09 Apr 2020 23:37:07 +0300
Labels:                 <none>
Annotations:            deployment.kubernetes.io/revision: 6
                        kubectl.kubernetes.io/last-applied-configuration:
                          {"apiVersion":"apps/v1","kind":"Deployment","metadata":{"annotations":{},"name":"tomcat","namespace":"tomcat"},"spec":{"replicas":2,"selec...
Selector:               app=tomcat
Replicas:               2 desired | 2 updated | 2 total | 2 available | 0 unavailable
StrategyType:           RollingUpdate
MinReadySeconds:        0
RollingUpdateStrategy:  50% max unavailable, 1 max surge
Pod Template:
  Labels:  app=tomcat
  Containers:
   tomcat:
    Image:        10.44.6.9:8082/helloworld-mfilipovich:rc-23
    Port:         8080/TCP
    Host Port:    0/TCP
    Environment:  <none>
    Mounts:       <none>
  Volumes:        <none>
Conditions:
  Type           Status  Reason
  ----           ------  ------
  Available      True    MinimumReplicasAvailable
  Progressing    True    NewReplicaSetAvailable
OldReplicaSets:  <none>
NewReplicaSet:   tomcat-7d7bc7cd6b (2/2 replicas created)
Events:          <none>
