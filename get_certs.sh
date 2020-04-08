mkdir -p certs
DOCKER_POD=$(kubectl -n build get po | grep -v NAME | cut -d' ' -f1)
JENKINS_HOME="/home/jenkins/agent"
kubectl -n build cp $DOCKER_POD:/certs/client ./
# echo "key:"
# cat ca.pem
# echo "ca:"
# cat ca.pem
# echo "cert:"
# cat ca.pem
# echo "uri:"
# echo "$(kubectl -n build get po -o wide | grep -v NAME | sed "s/  */ /g" | cut -d' ' -f6):2376"
JENKINS_POD=$(kubectl -n jenkins get po | grep -v NAME | grep -v slave | cut -d' ' -f1)
JENKINS_POD=jenkins-slave-01
kubectl -n jenkins exec $JENKINS_POD -- mkdir -p $JENKINS_HOME/docker_certs/
kubectl -n jenkins cp ca.pem $JENKINS_POD:$JENKINS_HOME/docker_certs/
kubectl -n jenkins cp cert.pem $JENKINS_POD:$JENKINS_HOME/docker_certs/
kubectl -n jenkins cp key.pem $JENKINS_POD:$JENKINS_HOME/docker_certs/
rm ca.pem cert.pem csr.pem key.pem openssl.cnf

