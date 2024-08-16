
Check certificates expiration for a Kubernetes cluster

### Synopsis

Checks expiration for the certificates in the local PKI managed by kubeadm.

```
kubeadm certs check-expiration [flags]
```

### Options

```
      --allow-missing-template-keys   If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats. (default true)
      --cert-dir string               The path where to save the certificates (default "/etc/kubernetes/pki")
      --config string                 Path to a kubeadm configuration file.
  -o, --experimental-output string    Output format. One of: text|json|yaml|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file. (default "text")
  -h, --help                          help for check-expiration
      --kubeconfig string             The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file. (default "/etc/kubernetes/admin.conf")
      --show-managed-fields           If true, keep the managedFields when printing objects in JSON or YAML format.
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```
