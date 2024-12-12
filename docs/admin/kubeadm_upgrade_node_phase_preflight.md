
Run upgrade node pre-flight checks

### Synopsis

Run pre-flight checks for kubeadm upgrade node.

```
kubeadm upgrade node phase preflight [flags]
```

### Options

```
      --config string                     Path to a kubeadm configuration file.
  -h, --help                              help for preflight
      --ignore-preflight-errors strings   A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.
```

### Options inherited from parent commands

```
      --rootfs string   The path to the 'real' host root filesystem. This will cause kubeadm to chroot into the provided path.
```
