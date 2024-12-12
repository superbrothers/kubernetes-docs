
Upgrade your Kubernetes cluster to the specified version

### Synopsis

Upgrade your Kubernetes cluster to the specified version

The "apply [version]" command executes the following phases:
```
preflight        Run preflight checks before upgrade
control-plane    Upgrade the control plane
upload-config    Upload the kubeadm and kubelet configurations to ConfigMaps
  /kubeadm         Upload the kubeadm ClusterConfiguration to a ConfigMap
  /kubelet         Upload the kubelet configuration to a ConfigMap
kubelet-config   Upgrade the kubelet configuration for this node
bootstrap-token  Configures bootstrap token and cluster-info RBAC rules
addon            Upgrade the default kubeadm addons
  /coredns         Upgrade the CoreDNS addon
  /kube-proxy      Upgrade the kube-proxy addon
post-upgrade     Run post upgrade tasks
```


```
kubeadm upgrade apply [version]
```

### Options

```
      --allow-experimental-upgrades        Show unstable versions of Kubernetes as an upgrade alternative and allow upgrading to an alpha/beta/release candidate versions of Kubernetes.
      --allow-release-candidate-upgrades   Show release candidate versions of Kubernetes as an upgrade alternative and allow upgrading to a release candidate versions of Kubernetes.
      --certificate-renewal                Perform the renewal of certificates used by component changed during upgrades. (default true)
      --config string                      Path to a kubeadm configuration file.
      --dry-run                            Do not change any state, just output what actions would be performed.
      --etcd-upgrade                       Perform the upgrade of etcd. (default true)
  -f, --force                              Force upgrading although some requirements might not be met. This also implies non-interactive mode.
  -h, --help                               help for apply
      --ignore-preflight-errors strings    A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.
      --kubeconfig string                  The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file. (default "/etc/kubernetes/admin.conf")
      --patches string                     Path to a directory that contains files named "target[suffix][+patchtype].extension". For example, "kube-apiserver0+merge.yaml" or just "etcd.json". "target" can be one of "kube-apiserver", "kube-controller-manager", "kube-scheduler", "etcd", "kubeletconfiguration", "corednsdeployment". "patchtype" can be one of "strategic", "merge" or "json" and they match the patch formats supported by kubectl. The default "patchtype" is "strategic". "extension" must be either "json" or "yaml". "suffix" is an optional string that can be used to determine which patches are applied first alpha-numerically.
      --print-config                       Specifies whether the configuration file that will be used in the upgrade should be printed or not.
      --skip-phases strings                List of phases to be skipped
  -y, --yes                                Perform the upgrade and do not prompt for confirmation (non-interactive mode).
```

### Options inherited from parent commands

```
      --rootfs string   The path to the 'real' host root filesystem. This will cause kubeadm to chroot into the provided path.
```
