#LOGIN TO MY REGISTRY adedes-registry
echo "INFO: Login into bastion.ocp50.example.com:5000  ...."
podman login -u dummy -p dummy https://bastion.ocp50.example.com:5000

#LOGIN TO quay.io
echo "INFO: Login into quay.io   ...."
podman login quay.io -u tdedes@redhat.com -p XYZ009

#LOGIN TO registry.redhat.io
echo "INFO: Login into registry.redhat.io ...."
podman login registry.redhat.io -u tdedes -p XYZ009

echo "INFO: Start Building Operators Catalog ...."

export REG_CREDS=/run/user/0/containers/auth.json
#./oc version
./oc adm catalog build --filter-by-os='linux/amd64' \
    --appregistry-org redhat-operators \
    --from=registry.redhat.io/openshift4/ose-operator-registry:v4.3 \
    --to=bastion.ocp50.example.com:5000/olm/redhat-operators:v1 \
    -a ${REG_CREDS} \
    --insecure


