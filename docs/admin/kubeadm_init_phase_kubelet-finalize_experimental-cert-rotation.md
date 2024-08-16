
Enable kubelet client certificate rotation (DEPRECATED: use 'enable-client-cert-rotation' instead)

```
kubeadm init phase kubelet-finalize experimental-cert-rotation [flags]
```

### Options

```
      --cert-dir string   The path where to save and store the certificates. (default "/etc/kubernetes/pki")
      --config string     Path to a kubeadm configuration file.
      --dry-run           Don't apply any changes; just output what would be done.
  -h, --help              help for experimental-cert-rotation
```

### Options inherited from parent commands

```
      --rootfs string   The path to the 'real' host root filesystem. This will cause kubeadm to chroot into the provided path.
```
