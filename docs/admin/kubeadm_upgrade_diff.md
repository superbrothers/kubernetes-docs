
Show what differences would be applied to existing static pod manifests. See also: kubeadm upgrade apply --dry-run

```
kubeadm upgrade diff [version] [flags]
```

### Options

```
      --api-server-manifest string           path to API server manifest (default "/etc/kubernetes/manifests/kube-apiserver.yaml")
      --config string                        Path to a kubeadm configuration file.
  -c, --context-lines int                    How many lines of context in the diff (default 3)
      --controller-manager-manifest string   path to controller manifest (default "/etc/kubernetes/manifests/kube-controller-manager.yaml")
  -h, --help                                 help for diff
      --kubeconfig string                    The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file. (default "/etc/kubernetes/admin.conf")
      --scheduler-manifest string            path to scheduler manifest (default "/etc/kubernetes/manifests/kube-scheduler.yaml")
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```
