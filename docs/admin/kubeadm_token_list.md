
List bootstrap tokens on the server

### Synopsis


This command will list all bootstrap tokens for you.


```
kubeadm token list [flags]
```

### Options

```
      --allow-missing-template-keys   If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats. (default true)
  -h, --help                          help for list
  -o, --output string                 Output format. One of: text|json|yaml|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file. (default "text")
      --show-managed-fields           If true, keep the managedFields when printing objects in JSON or YAML format.
```

### Options inherited from parent commands

```
      --dry-run             Whether to enable dry-run mode or not
      --kubeconfig string   The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file. (default "/etc/kubernetes/admin.conf")
      --rootfs string       The path to the 'real' host root filesystem. This will cause kubeadm to chroot into the provided path.
```
