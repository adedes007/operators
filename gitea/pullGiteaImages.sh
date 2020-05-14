#gpte gitea-operator 
podman search quay.io/gpte-devops-automation/gitea
#||||||||||||||||||||
podman pull quay.io/gpte-devops-automation/gitea-operator:v0.17
podman pull quay.io/gpte-devops-automation/gitea:1.11.5
podman pull registry.redhat.io/rhscl/postgresql-10-rhel7:latest
#||||||||||||||||||||

podman images
#podman tag <gitea:1.11.5-TAG> bastion.ocp50.example.com:5000/gpte-devops-automation/gitea:1.11.5

podman tag 16ad5e9052e9 bastion.ocp50.example.com:5000/gpte-devops-automation/gitea-operator:v0.17
podman tag ebbf271482c5 bastion.ocp50.example.com:5000/gpte-devops-automation/gitea:1.11.5
podman tag ee8161105b9d bastion.ocp50.example.com:5000/postgresql-10-rhel7:latest


podman login bastion.ocp50.example.com:5000
podman push bastion.ocp50.example.com:5000/gpte-devops-automation/gitea-operator:v0.17
podman push bastion.ocp50.example.com:5000/gpte-devops-automation/gitea:1.11.5
podman push bastion.ocp50.example.com:5000/postgresql-10-rhel7:latest
