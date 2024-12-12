
Run preflight checks before upgrade

```
kubeadm upgrade apply phase preflight [flags]
```

### Options

```
      --allow-experimental-upgrades        Show unstable versions of Kubernetes as an upgrade alternative and allow upgrading to an alpha/beta/release candidate versions of Kubernetes.
      --allow-release-candidate-upgrades   Show release candidate versions of Kubernetes as an upgrade alternative and allow upgrading to a release candidate versions of Kubernetes.
      --config string                      Path to a kubeadm configuration file.
      --dry-run                            Do not change any state, just output what actions would be performed.
  -f, --force                              Force upgrading although some requirements might not be met. This also implies non-interactive mode.
  -h, --help                               help for preflight
      --ignore-preflight-errors strings    A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.
      --kubeconfig string                  The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file. (default "/etc/kubernetes/admin.conf")
  -y, --yes                                Perform the upgrade and do not prompt for confirmation (non-interactive mode).
```

### Options inherited from parent commands

```
      --rootfs string   The path to the 'real' host root filesystem. This will cause kubeadm to chroot into the provided path.
```
