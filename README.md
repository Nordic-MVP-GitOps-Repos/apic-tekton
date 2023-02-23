# apic-tekton

Tekton task for running API Connect apic cli commands. 

## Building the task image

To build the image, you need to be logged in to the IBM container registry.

1. Login to [MyIBM Container Software Library](https://myibm.ibm.com/products-services/containerlibrary) with a username and password that is entitled to api connect
2. Go to **Get Entitlement Key** to retrieve the key
3. Use the key and the username 'cp' to login to the container registry `podman login cp.icr.io -u cp -p your-key` 

You can also build using a [Tekton pipeline](pipeline/README.md) or with the [BuildConfig](buildconfig/buildconfig.yaml)

## Sample scripts for apic

See https://github.com/ibm-apiconnect/example-toolkit-scripts



