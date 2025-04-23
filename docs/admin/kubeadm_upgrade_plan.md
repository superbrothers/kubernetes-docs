
Check which versions are available to upgrade to and validate whether your current cluster is upgradeable.

### Synopsis

Check which versions are available to upgrade to and validate whether your current cluster is upgradeable. This command can only run on the control plane nodes where the kubeconfig file "admin.conf" exists. To skip the internet check, pass in the optional [version] parameter.

```
kubeadm upgrade plan [version] [flags]
```

### Options

```
      --allow-experimental-upgrades        Show unstable versions of Kubernetes as an upgrade alternative and allow upgrading to an alpha/beta/release candidate versions of Kubernetes.
      --allow-missing-template-keys        If true, ignore any errors in templates when a field or map key is missing in the template. Only applies to golang and jsonpath output formats. (default true)
      --allow-release-candidate-upgrades   Show release candidate versions of Kubernetes as an upgrade alternative and allow upgrading to a release candidate versions of Kubernetes.
      --config string                      Path to a kubeadm configuration file.
      --etcd-upgrade                       Perform the upgrade of etcd. (default true)
  -h, --help                               help for plan
      --ignore-preflight-errors strings    A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.
      --kubeconfig string                  The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file. (default "/etc/kubernetes/admin.conf")
  -o, --output string                      Output format. One of: text|json|yaml|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file. (default "text")
      --print-config                       Specifies whether the configuration file that will be used in the upgrade should be printed or not.
      --show-managed-fields                If true, keep the managedFields when printing objects in JSON or YAML format.
```

### Options inherited from parent commands

```
      --rootfs string   The path to the 'real' host root filesystem. This will cause kubeadm to chroot into the provided path.
```
