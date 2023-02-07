# Building the task image with a Tekton pipeline

You can build the task image using this pipeline. Change the value for target-image to suit your environment.

1. Login to [MyIBM Container Software Library](https://myibm.ibm.com/products-services/containerlibrary) with a username and password that is entitled to api connect
2. Go to **Get Entitlement Key** to retrieve the key
3. Create an image pull secret for cp.icr.io with user cp and your key. Instructions here: [Using Image Pull Secrets](https://docs.openshift.com/container-platform/4.12/openshift_images/managing_images/using-image-pull-secrets.html) 
4. Run the pipeline

