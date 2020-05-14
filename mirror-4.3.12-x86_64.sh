export OCP_RELEASE=4.3.12-x86_64
export LOCAL_REGISTRY='bastion.ocp50.example.com:5000' 
export LOCAL_REPOSITORY='ocp50/openshift4' 
export PRODUCT_REPO='openshift-release-dev' 
export LOCAL_SECRET_JSON=/root/scripts/ocp4312/pull-secret-2.json
export RELEASE_NAME="ocp-release" 

echo "oc adm -a ${LOCAL_SECRET_JSON} release mirror \
     --from=quay.io/${PRODUCT_REPO}/${RELEASE_NAME}:${OCP_RELEASE} \
     --to=${LOCAL_REGISTRY}/${LOCAL_REPOSITORY} \
     --to-release-image=${LOCAL_REGISTRY}/${LOCAL_REPOSITORY}:${OCP_RELEASE}"

read A

oc adm -a ${LOCAL_SECRET_JSON} release mirror \
     --from=quay.io/${PRODUCT_REPO}/${RELEASE_NAME}:${OCP_RELEASE} \
     --to=${LOCAL_REGISTRY}/${LOCAL_REPOSITORY} \
     --to-release-image=${LOCAL_REGISTRY}/${LOCAL_REPOSITORY}:${OCP_RELEASE}


