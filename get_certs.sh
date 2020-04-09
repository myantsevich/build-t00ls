JENKINS_HOME="/var/jenkins_home"
JENKINS_POD=$(kubectl -n jenkins get po | grep -v NAME | grep -v slave | cut -d' ' -f1)
kubectl -n jenkins cp ~/.kube/config $JENKINS_POD:$JENKINS_HOME/kubeconfig