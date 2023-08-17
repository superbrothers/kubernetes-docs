## kubectl config set-cluster

Set a cluster entry in kubeconfig

### Synopsis

Set a cluster entry in kubeconfig.

 Specifying a name that already exists will merge new fields on top of existing values for those fields.

```
kubectl config set-cluster NAME [--server=server] [--certificate-authority=path/to/certificate/authority] [--insecure-skip-tls-verify=true] [--tls-server-name=example.com]
```

### Examples

```
  # Set only the server field on the e2e cluster entry without touching other values
  kubectl config set-cluster e2e --server=https://1.2.3.4
  
  # Embed certificate authority data for the e2e cluster entry
  kubectl config set-cluster e2e --embed-certs --certificate-authority=~/.kube/e2e/kubernetes.ca.crt
  
  # Disable cert checking for the e2e cluster entry
  kubectl config set-cluster e2e --insecure-skip-tls-verify=true
  
  # Set the custom TLS server name to use for validation for the e2e cluster entry
  kubectl config set-cluster e2e --tls-server-name=my-cluster-name
  
  # Set the proxy URL for the e2e cluster entry
  kubectl config set-cluster e2e --proxy-url=https://1.2.3.4
```

### Options

```
      --certificate-authority string               Path to certificate-authority file for the cluster entry in kubeconfig
      --embed-certs tristate[=true]                embed-certs for the cluster entry in kubeconfig
  -h, --help                                       help for set-cluster
      --insecure-skip-tls-verify tristate[=true]   insecure-skip-tls-verify for the cluster entry in kubeconfig
      --proxy-url string                           proxy-url for the cluster entry in kubeconfig
      --server string                              server for the cluster entry in kubeconfig
      --tls-server-name string                     tls-server-name for the cluster entry in kubeconfig
```

### Options inherited from parent commands

```
      --as string                   Username to impersonate for the operation. User could be a regular user or a service account in a namespace.
      --as-group stringArray        Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
      --as-uid string               UID to impersonate for the operation.
      --cache-dir string            Default cache directory (default "/root/.kube/cache")
      --client-certificate string   Path to a client certificate file for TLS
      --client-key string           Path to a client key file for TLS
      --cluster string              The name of the kubeconfig cluster to use
      --context string              The name of the kubeconfig context to use
      --disable-compression         If true, opt-out of response compression for all requests to the server
      --kubeconfig string           use a particular kubeconfig file
      --match-server-version        Require server version to match client version
  -n, --namespace string            If present, the namespace scope for this CLI request
      --password string             Password for basic authentication to the API server
      --profile string              Name of profile to capture. One of (none|cpu|heap|goroutine|threadcreate|block|mutex) (default "none")
      --profile-output string       Name of the file to write the profile to (default "profile.pprof")
      --request-timeout string      The length of time to wait before giving up on a single server request. Non-zero values should contain a corresponding time unit (e.g. 1s, 2m, 3h). A value of zero means don't timeout requests. (default "0")
      --token string                Bearer token for authentication to the API server
      --user string                 The name of the kubeconfig user to use
      --username string             Username for basic authentication to the API server
      --warnings-as-errors          Treat warnings received from the server as errors and exit with a non-zero exit code
```

### SEE ALSO

* [kubectl config](kubectl_config.md)	 - Modify kubeconfig files
