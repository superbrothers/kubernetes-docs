
Run reset pre-flight checks

### Synopsis

Run pre-flight checks for kubeadm reset.

```
kubeadm reset phase preflight [flags]
```

### Options

```
      --dry-run                           Don't apply any changes; just output what would be done.
  -f, --force                             Reset the node without prompting for confirmation.
  -h, --help                              help for preflight
      --ignore-preflight-errors strings   A list of checks whose errors will be shown as warnings. Example: 'IsPrivilegedUser,Swap'. Value 'all' ignores errors from all checks.
```

### Options inherited from parent commands

```
      --rootfs string   The path to the 'real' host root filesystem. This will cause kubeadm to chroot into the provided path.
```