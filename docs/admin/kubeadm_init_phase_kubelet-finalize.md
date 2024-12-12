
Updates settings relevant to the kubelet after TLS bootstrap

```
kubeadm init phase kubelet-finalize [flags]
```

### Examples

```
  # Updates settings relevant to the kubelet after TLS bootstrap"
  kubeadm init phase kubelet-finalize all --config
```

### Options

```
  -h, --help   help for kubelet-finalize
```

### Options inherited from parent commands

```
      --rootfs string   The path to the 'real' host root filesystem. This will cause kubeadm to chroot into the provided path.
```