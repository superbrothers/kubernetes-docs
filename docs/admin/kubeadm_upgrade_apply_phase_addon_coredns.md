
Upgrade the CoreDNS addon

```
kubeadm upgrade apply phase addon coredns [flags]
```

### Options

```
      --config string       Path to a kubeadm configuration file.
      --dry-run             Do not change any state, just output what actions would be performed.
  -h, --help                help for coredns
      --kubeconfig string   The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file. (default "/etc/kubernetes/admin.conf")
      --patches string      Path to a directory that contains files named "target[suffix][+patchtype].extension". For example, "kube-apiserver0+merge.yaml" or just "etcd.json". "target" can be one of "kube-apiserver", "kube-controller-manager", "kube-scheduler", "etcd", "kubeletconfiguration", "corednsdeployment". "patchtype" can be one of "strategic", "merge" or "json" and they match the patch formats supported by kubectl. The default "patchtype" is "strategic". "extension" must be either "json" or "yaml". "suffix" is an optional string that can be used to determine which patches are applied first alpha-numerically.
```

### Options inherited from parent commands

```
      --rootfs string   The path to the 'real' host root filesystem. This will cause kubeadm to chroot into the provided path.
```
