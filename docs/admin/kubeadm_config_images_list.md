
Print a list of images kubeadm will use. The configuration file is used in case any images or image repositories are customized

```
kubeadm config images list [flags]
```

### Options

```
      --allow-missing-template-keys   If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats. (default true)
      --config string                 Path to a kubeadm configuration file.
      --feature-gates string          A set of key=value pairs that describe feature gates for various features. Options are:
                                      ControlPlaneKubeletLocalMode=true|false (BETA - default=true)
                                      NodeLocalCRISocket=true|false (ALPHA - default=false)
                                      PublicKeysECDSA=true|false (DEPRECATED - default=false)
                                      RootlessControlPlane=true|false (ALPHA - default=false)
                                      WaitForAllControlPlaneComponents=true|false (BETA - default=true)
  -h, --help                          help for list
      --image-repository string       Choose a container registry to pull control plane images from (default "registry.k8s.io")
      --kubernetes-version string     Choose a specific Kubernetes version for the control plane. (default "stable-1")
  -o, --output string                 Output format. One of: text|json|yaml|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file. (default "text")
      --show-managed-fields           If true, keep the managedFields when printing objects in JSON or YAML format.
```

### Options inherited from parent commands

```
      --kubeconfig string   The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file. (default "/etc/kubernetes/admin.conf")
      --rootfs string       The path to the 'real' host root filesystem. This will cause kubeadm to chroot into the provided path.
```
