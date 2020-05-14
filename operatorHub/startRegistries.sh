podman start poc-registry
podman start adedes-registry
podman ps
curl -u dummy:dummy -k https://bastion.ocp50.example.com:5000/v2/_catalog | jq
curl -u dummy:dummy -k https://bastion.ocp50.example.com:5000/v2/ocp50/openshift4/tags/list | jq
curl -u dummy:dummy -k https://bastion.ocp50.example.com:6001/v2/_catalog | jq
curl -u dummy:dummy -k https://bastion.ocp50.example.com:6001/v2/redhatworkshops/welcome-php/tags/list | jq
curl -u dummy:dummy -k https://bastion.ocp50.example.com:5000/v2/gpte-devops-automation/gitea-operator/tags/list | jq

