
Generate a kubeconfig file for the controller manager to use

### Synopsis

Generate the kubeconfig file for the controller manager to use and save it to controller-manager.conf file

```
kubeadm init phase kubeconfig controller-manager [flags]
```

### Options

```
      --apiserver-advertise-address string   The IP address the API Server will advertise it's listening on. If not set the default network interface will be used.
      --apiserver-bind-port int32            Port for the API Server to bind to. (default 6443)
      --cert-dir string                      The path where to save and store the certificates. (default "/etc/kubernetes/pki")
      --config string                        Path to a kubeadm configuration file.
      --control-plane-endpoint string        Specify a stable IP address or DNS name for the control plane.
      --dry-run                              Don't apply any changes; just output what would be done.
  -h, --help                                 help for controller-manager
      --kubeconfig-dir string                The path where to save the kubeconfig file. (default "/etc/kubernetes")
      --kubernetes-version string            Choose a specific Kubernetes version for the control plane. (default "stable-1")
```

### Options inherited from parent commands

```
      --rootfs string   [EXPERIMENTAL] The path to the 'real' host root filesystem.
```
