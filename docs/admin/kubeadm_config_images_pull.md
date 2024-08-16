
Pull images used by kubeadm

```
kubeadm config images pull [flags]
```

### Options

```
      --config string               Path to a kubeadm configuration file.
      --cri-socket string           Path to the CRI socket to connect. If empty kubeadm will try to auto-detect this value; use this option only if you have more than one CRI installed or if you have non-standard CRI socket.
      --feature-gates string        A set of key=value pairs that describe feature gates for various features. Options are:
                                    EtcdLearnerMode=true|false (BETA - default=true)
                                    PublicKeysECDSA=true|false (DEPRECATED - default=false)
                                    RootlessControlPlane=true|false (ALPHA - default=false)
                                    UpgradeAddonsBeforeControlPlane=true|false (DEPRECATED - default=false)
                                    WaitForAllControlPlaneComponents=true|false (ALPHA - default=false)
  -h, --help                        help for pull
      --image-repository string     Choose a container registry to pull control plane images from (default "registry.k8s.io")
      --kubernetes-version string   Choose a specific Kubernetes version for the control plane. (default "stable-1")
```

### Options inherited from parent commands

```
      --kubeconfig string   The kubeconfig file to use when talking to the cluster. If the flag is not set, a set of standard locations can be searched for an existing kubeconfig file. (default "/etc/kubernetes/admin.conf")
      --rootfs string       [EXPERIMENTAL] The path to the 'real' host root filesystem.
```
