## kubectl api-resources

Print the supported API resources on the server

### Synopsis

Print the supported API resources on the server

```
kubectl api-resources [flags]
```

### Examples

```
  # Print the supported API Resources
  kubectl api-resources
  
  # Print the supported API Resources with more information
  kubectl api-resources -o wide
  
  # Print the supported API Resources sorted by a column
  kubectl api-resources --sort-by=name
  
  # Print the supported namespaced resources
  kubectl api-resources --namespaced=true
  
  # Print the supported non-namespaced resources
  kubectl api-resources --namespaced=false
  
  # Print the supported API Resources with specific APIGroup
  kubectl api-resources --api-group=extensions
```

### Options

```
      --api-group string   Limit to resources in the specified API group.
      --cached             Use the cached list of resources if available.
  -h, --help               help for api-resources
      --namespaced         If false, non-namespaced resources will be returned, otherwise returning namespaced resources by default. (default true)
      --no-headers         When using the default or custom-column output format, don't print headers (default print headers).
  -o, --output string      Output format. One of: wide|name.
      --sort-by string     If non-empty, sort nodes list using specified field. The field can be either 'name' or 'kind'.
      --verbs strings      Limit to resources that support the specified verbs.
```

### Options inherited from parent commands

```
      --as string                      Username to impersonate for the operation
      --as-group stringArray           Group to impersonate for the operation, this flag can be repeated to specify multiple groups.
      --cache-dir string               Default HTTP cache directory (default "/root/.kube/http-cache")
      --certificate-authority string   Path to a cert file for the certificate authority
      --client-certificate string      Path to a client certificate file for TLS
      --client-key string              Path to a client key file for TLS
      --cluster string                 The name of the kubeconfig cluster to use
      --context string                 The name of the kubeconfig context to use
      --insecure-skip-tls-verify       If true, the server's certificate will not be checked for validity. This will make your HTTPS connections insecure
      --kubeconfig string              Path to the kubeconfig file to use for CLI requests.
      --match-server-version           Require server version to match client version
  -n, --namespace string               If present, the namespace scope for this CLI request
      --password string                Password for basic authentication to the API server
      --profile string                 Name of profile to capture. One of (none|cpu|heap|goroutine|threadcreate|block|mutex) (default "none")
      --profile-output string          Name of the file to write the profile to (default "profile.pprof")
      --request-timeout string         The length of time to wait before giving up on a single server request. Non-zero values should contain a corresponding time unit (e.g. 1s, 2m, 3h). A value of zero means don't timeout requests. (default "0")
  -s, --server string                  The address and port of the Kubernetes API server
      --token string                   Bearer token for authentication to the API server
      --user string                    The name of the kubeconfig user to use
      --username string                Username for basic authentication to the API server
```

### SEE ALSO

* [kubectl](kubectl.md)	 - kubectl controls the Kubernetes cluster manager

